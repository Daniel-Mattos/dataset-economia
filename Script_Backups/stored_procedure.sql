CREATE PROCEDURE SP_ETL_Analise_PIB_IDH
AS
BEGIN
    -- STEP 1: Garantir que as tabelas de análise estejam limpas ou prontas para serem criadas.
    IF OBJECT_ID('dbo.Analise_PIB_IDH', 'U') IS NOT NULL
        DROP TABLE dbo.Analise_PIB_IDH;

    -- STEP 2: Transformar a tabela GNIPC (PIB per capita) de formato 'wide' para 'long'
    SELECT
        ISO3,
        Country,
        '1990' AS Ano,
        gnipc_1990 AS PIB_Per_Capita
    INTO #GNIPC_Long
    FROM GNIPC
    WHERE gnipc_1990 IS NOT NULL
    UNION ALL
    SELECT ISO3, Country, '1991' AS Ano, gnipc_1991 FROM GNIPC WHERE gnipc_1991 IS NOT NULL
    UNION ALL
    SELECT ISO3, Country, '1992' AS Ano, gnipc_1992 FROM GNIPC WHERE gnipc_1992 IS NOT NULL
    -- ... Repita para todos os anos até 2021 ...
    UNION ALL
    SELECT ISO3, Country, '2021' AS Ano, gnipc_2021 FROM GNIPC WHERE gnipc_2021 IS NOT NULL;

    -- STEP 3: Transformar a tabela DesenvolvimentoHumanoDTSET (IDH) de formato 'wide' para 'long'
    SELECT
        ISO3,
        Country,
        '1990' AS Ano,
        hdi_1990 AS IDH
    INTO #IDH_Long
    FROM DesenvolvimentoHumanoDTSET
    WHERE hdi_1990 IS NOT NULL
    UNION ALL
    SELECT ISO3, Country, '1991' AS Ano, hdi_1991 FROM DesenvolvimentoHumanoDTSET WHERE hdi_1991 IS NOT NULL
    UNION ALL
    SELECT ISO3, Country, '1992' AS Ano, hdi_1992 FROM DesenvolvimentoHumanoDTSET WHERE hdi_1992 IS NOT NULL
    -- ... Repita para todos os anos até 2021 ...
    UNION ALL
    SELECT ISO3, Country, '2021' AS Ano, hdi_2021 FROM DesenvolvimentoHumanoDTSET WHERE hdi_2021 IS NOT NULL;

    -- STEP 4: Unir as tabelas transformadas com as tabelas normalizadas e carregar a tabela de análise final.
    SELECT
        P.PaisID,
        P.NomePais,
        TL.Ano,
        TL.PIB_Per_Capita,
        T2.IDH,
        CASE
            WHEN T2.IDH >= 0.800 THEN 'Muito Alto'
            WHEN T2.IDH >= 0.700 THEN 'Alto'
            WHEN T2.IDH >= 0.550 THEN 'Médio'
            ELSE 'Baixo'
        END AS NivelIDH
    INTO dbo.Analise_PIB_IDH
    FROM
        Paises AS P
    INNER JOIN
        #GNIPC_Long AS TL ON P.CodigoISO_Alpha3 = TL.ISO3
    INNER JOIN
        #IDH_Long AS T2 ON TL.ISO3 = T2.ISO3 AND TL.Ano = T2.Ano
    WHERE
        TL.PIB_Per_Capita IS NOT NULL
        AND T2.IDH IS NOT NULL;

    -- Limpar as tabelas temporárias
    DROP TABLE #GNIPC_Long;
    DROP TABLE #IDH_Long;

END;