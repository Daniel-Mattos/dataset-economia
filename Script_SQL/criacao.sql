
--Tabelas que receber�o csv
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='EmissoesCO2_Wide' AND xtype='U')
BEGIN
CREATE TABLE EmissoesCO2_Wide (
    ISO3 CHAR(3) NOT NULL,
    Country NVARCHAR(100) NOT NULL,
    hdi_code NVARCHAR(20) NULL,
    region NVARCHAR(50) NULL,
    hdi_rank_2021 INT NULL,
    co2_prod_1990 DECIMAL(18,6) NULL,
    co2_prod_1991 DECIMAL(18,6) NULL,
    co2_prod_1992 DECIMAL(18,6) NULL,
    co2_prod_1993 DECIMAL(18,6) NULL,
    co2_prod_1994 DECIMAL(18,6) NULL,
    co2_prod_1995 DECIMAL(18,6) NULL,
    co2_prod_1996 DECIMAL(18,6) NULL,
    co2_prod_1997 DECIMAL(18,6) NULL,
    co2_prod_1998 DECIMAL(18,6) NULL,
    co2_prod_1999 DECIMAL(18,6) NULL,
    co2_prod_2000 DECIMAL(18,6) NULL,
    co2_prod_2001 DECIMAL(18,6) NULL,
    co2_prod_2002 DECIMAL(18,6) NULL,
    co2_prod_2003 DECIMAL(18,6) NULL,
    co2_prod_2004 DECIMAL(18,6) NULL,
    co2_prod_2005 DECIMAL(18,6) NULL,
    co2_prod_2006 DECIMAL(18,6) NULL,
    co2_prod_2007 DECIMAL(18,6) NULL,
    co2_prod_2008 DECIMAL(18,6) NULL,
    co2_prod_2009 DECIMAL(18,6) NULL,
    co2_prod_2010 DECIMAL(18,6) NULL,
    co2_prod_2011 DECIMAL(18,6) NULL,
    co2_prod_2012 DECIMAL(18,6) NULL,
    co2_prod_2013 DECIMAL(18,6) NULL,
    co2_prod_2014 DECIMAL(18,6) NULL,
    co2_prod_2015 DECIMAL(18,6) NULL,
    co2_prod_2016 DECIMAL(18,6) NULL,
    co2_prod_2017 DECIMAL(18,6) NULL,
    co2_prod_2018 DECIMAL(18,6) NULL,
    co2_prod_2019 DECIMAL(18,6) NULL,
    co2_prod_2020 DECIMAL(18,6) NULL,
    co2_prod_2021 DECIMAL(18,6) NULL,
    CONSTRAINT PK_EmissoesCO2_Wide PRIMARY KEY (ISO3)
);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='IndicadoresPais' AND xtype='U')
BEGIN
CREATE TABLE IndicadoresPais (
    Country_Name NVARCHAR(100) PRIMARY KEY,
    Population BIGINT NULL,
    GDP_Nominal_USD DECIMAL(18,2) NULL, 
    GDP_Nominal_PerCapita_USD DECIMAL(18,2) NULL, 
    GDP_PPP_PerCapita_USD DECIMAL(18,2) NULL, 
    HDI DECIMAL(4,3) NULL,
    GINI DECIMAL(5,2) NULL, 
    Area_SqKm BIGINT NULL 
);
END;


IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='IndicadoresAno' AND xtype='U')
BEGIN
CREATE TABLE IndicadoresAno (
    Id INT IDENTITY PRIMARY KEY,
    Country NVARCHAR(100) NOT NULL,
    Continent NVARCHAR(50) NULL,
    Year INT NOT NULL,
    Life_Exp DECIMAL(5,2) NULL,
    HDI_Index DECIMAL(5,3) NULL,
    CO2_Consump DECIMAL(10,4) NULL,
    GDP DECIMAL(18,2) NULL,
    Services DECIMAL(5,2) NULL
);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='GNIPC' AND xtype='U')
BEGIN
CREATE TABLE GNIPC (
    ISO3 CHAR(3) NOT NULL,
    Country NVARCHAR(100) NOT NULL,
    hdi_code NVARCHAR(20) NULL,
    region NVARCHAR(50) NULL,
    hdi_rank_2021 INT NULL,
    gnipc_1990 DECIMAL(18,6) NULL,
    gnipc_1991 DECIMAL(18,6) NULL,
    gnipc_1992 DECIMAL(18,6) NULL,
    gnipc_1993 DECIMAL(18,6) NULL,
    gnipc_1994 DECIMAL(18,6) NULL,
    gnipc_1995 DECIMAL(18,6) NULL,
    gnipc_1996 DECIMAL(18,6) NULL,
    gnipc_1997 DECIMAL(18,6) NULL,
    gnipc_1998 DECIMAL(18,6) NULL,
    gnipc_1999 DECIMAL(18,6) NULL,
    gnipc_2000 DECIMAL(18,6) NULL,
    gnipc_2001 DECIMAL(18,6) NULL,
    gnipc_2002 DECIMAL(18,6) NULL,
    gnipc_2003 DECIMAL(18,6) NULL,
    gnipc_2004 DECIMAL(18,6) NULL,
    gnipc_2005 DECIMAL(18,6) NULL,
    gnipc_2006 DECIMAL(18,6) NULL,
    gnipc_2007 DECIMAL(18,6) NULL,
    gnipc_2008 DECIMAL(18,6) NULL,
    gnipc_2009 DECIMAL(18,6) NULL,
    gnipc_2010 DECIMAL(18,6) NULL,
    gnipc_2011 DECIMAL(18,6) NULL,
    gnipc_2012 DECIMAL(18,6) NULL,
    gnipc_2013 DECIMAL(18,6) NULL,
    gnipc_2014 DECIMAL(18,6) NULL,
    gnipc_2015 DECIMAL(18,6) NULL,
    gnipc_2016 DECIMAL(18,6) NULL,
    gnipc_2017 DECIMAL(18,6) NULL,
    gnipc_2018 DECIMAL(18,6) NULL,
    gnipc_2019 DECIMAL(18,6) NULL,
    gnipc_2020 DECIMAL(18,6) NULL,
    gnipc_2021 DECIMAL(18,6) NULL,
    CONSTRAINT PK_GNIPC_Wide PRIMARY KEY (ISO3)
);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='DesenvolvimentoHumanoDTSET' AND xtype='U')
BEGIN
CREATE TABLE DesenvolvimentoHumanoDTSET (
    ISO3 CHAR(3) NOT NULL,
    Country NVARCHAR(100) NOT NULL,
    hdi_code NVARCHAR(20) NULL,
    region NVARCHAR(50) NULL,
    hdi_rank_2021 INT NULL,
    hdi_1990 DECIMAL(5,3) NULL,
    hdi_1991 DECIMAL(5,3) NULL,
    hdi_1992 DECIMAL(5,3) NULL,
    hdi_1993 DECIMAL(5,3) NULL,
    hdi_1994 DECIMAL(5,3) NULL,
    hdi_1995 DECIMAL(5,3) NULL,
    hdi_1996 DECIMAL(5,3) NULL,
    hdi_1997 DECIMAL(5,3) NULL,
    hdi_1998 DECIMAL(5,3) NULL,
    hdi_1999 DECIMAL(5,3) NULL,
    hdi_2000 DECIMAL(5,3) NULL,
    hdi_2001 DECIMAL(5,3) NULL,
    hdi_2002 DECIMAL(5,3) NULL,
    hdi_2003 DECIMAL(5,3) NULL,
    hdi_2004 DECIMAL(5,3) NULL,
    hdi_2005 DECIMAL(5,3) NULL,
    hdi_2006 DECIMAL(5,3) NULL,
    hdi_2007 DECIMAL(5,3) NULL,
    hdi_2008 DECIMAL(5,3) NULL,
    hdi_2009 DECIMAL(5,3) NULL,
    hdi_2010 DECIMAL(5,3) NULL,
    hdi_2011 DECIMAL(5,3) NULL,
    hdi_2012 DECIMAL(5,3) NULL,
    hdi_2013 DECIMAL(5,3) NULL,
    hdi_2014 DECIMAL(5,3) NULL,
    hdi_2015 DECIMAL(5,3) NULL,
    hdi_2016 DECIMAL(5,3) NULL,
    hdi_2017 DECIMAL(5,3) NULL,
    hdi_2018 DECIMAL(5,3) NULL,
    hdi_2019 DECIMAL(5,3) NULL,
    hdi_2020 DECIMAL(5,3) NULL,
    hdi_2021 DECIMAL(5,3) NULL,
    CONSTRAINT PK_HDI_Wide PRIMARY KEY (ISO3)
);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='ExpectativaVida' AND xtype='U')
BEGIN
CREATE TABLE ExpectativaVida (
    ISO3 CHAR(3) NOT NULL,
    Country NVARCHAR(100) NOT NULL,
    hdi_code NVARCHAR(20) NULL,
    region NVARCHAR(50) NULL,
    hdi_rank_2021 INT NULL,
    le_1990 DECIMAL(6,4) NULL,
    le_1991 DECIMAL(6,4) NULL,
    le_1992 DECIMAL(6,4) NULL,
    le_1993 DECIMAL(6,4) NULL,
    le_1994 DECIMAL(6,4) NULL,
    le_1995 DECIMAL(6,4) NULL,
    le_1996 DECIMAL(6,4) NULL,
    le_1997 DECIMAL(6,4) NULL,
    le_1998 DECIMAL(6,4) NULL,
    le_1999 DECIMAL(6,4) NULL,
    le_2000 DECIMAL(6,4) NULL,
    le_2001 DECIMAL(6,4) NULL,
    le_2002 DECIMAL(6,4) NULL,
    le_2003 DECIMAL(6,4) NULL,
    le_2004 DECIMAL(6,4) NULL,
    le_2005 DECIMAL(6,4) NULL,
    le_2006 DECIMAL(6,4) NULL,
    le_2007 DECIMAL(6,4) NULL,
    le_2008 DECIMAL(6,4) NULL,
    le_2009 DECIMAL(6,4) NULL,
    le_2010 DECIMAL(6,4) NULL,
    le_2011 DECIMAL(6,4) NULL,
    le_2012 DECIMAL(6,4) NULL,
    le_2013 DECIMAL(6,4) NULL,
    le_2014 DECIMAL(6,4) NULL,
    le_2015 DECIMAL(6,4) NULL,
    le_2016 DECIMAL(6,4) NULL,
    le_2017 DECIMAL(6,4) NULL,
    le_2018 DECIMAL(6,4) NULL,
    le_2019 DECIMAL(6,4) NULL,
    le_2020 DECIMAL(6,4) NULL,
    le_2021 DECIMAL(6,4) NULL,
    CONSTRAINT PK_LifeExpectancy_Wide PRIMARY KEY (ISO3)
);
END;

-- Continentes

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Continentes' AND xtype='U')
BEGIN
CREATE TABLE Continentes (

    ContinenteID INT IDENTITY(1,1) PRIMARY KEY,

    NomeContinente NVARCHAR(100) NOT NULL

);
END;

-- Regioes

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Regioes' AND xtype='U')
BEGIN
CREATE TABLE Regioes (

    RegiaoID INT IDENTITY(1,1) PRIMARY KEY,

    NomeRegiao NVARCHAR(100) NOT NULL,

    ContinenteID INT NOT NULL,

    CONSTRAINT FK_Regioes_Continentes FOREIGN KEY (ContinenteID)

        REFERENCES Continentes(ContinenteID)

);
END;

-- Paises

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Paises' AND xtype='U')
BEGIN
CREATE TABLE Paises (

    PaisID INT IDENTITY(1,1) PRIMARY KEY,

    NomePais NVARCHAR(100) NOT NULL,

    CodigoISO_Alpha3 CHAR(3) NOT NULL,

    RegiaoID INT NOT NULL,

    CONSTRAINT FK_Paises_Regioes FOREIGN KEY (RegiaoID)

        REFERENCES Regioes(RegiaoID)

);
END;

-- Geografia

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Geografia' AND xtype='U')
BEGIN
CREATE TABLE Geografia (

    GeografiaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT UNIQUE NOT NULL,

    AreaKm2 DECIMAL(15,2) NOT NULL,

    DensidadePopulacional DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_Geografia_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

-- TABELAS DE M�TRICAS B�SICAS

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='ObservacoesAnuaisBasicas' AND xtype='U')
BEGIN
CREATE TABLE ObservacoesAnuaisBasicas (

    ObservacaoID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    PopulacaoTotal BIGINT NOT NULL,

    PIB_PerCapita DECIMAL(15,2) NULL,

    ExpectativaDeVida DECIMAL(5,2) NULL,

    CONSTRAINT FK_Observacoes_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='DesenvolvimentoHumano' AND xtype='U')
BEGIN
CREATE TABLE DesenvolvimentoHumano (

    IDH_ID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    ValorIDH DECIMAL(4,3) NOT NULL,

    CONSTRAINT FK_IDH_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

-- TABELAS DE M�TRICAS ECON�MICAS

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='MetricasEconomicas' AND xtype='U')
BEGIN
CREATE TABLE MetricasEconomicas (

    MetricaEconomicaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    PIB_Nominal_USD DECIMAL(18,2) NULL,

    PIB_PPC_USD DECIMAL(18,2) NULL,

    TaxaInflacaoAnual DECIMAL(5,2) NULL,

    TaxaDesemprego DECIMAL(5,2) NULL,

    CONSTRAINT FK_MetricasEco_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='EstruturaEconomica' AND xtype='U')
BEGIN
CREATE TABLE EstruturaEconomica (

    EstruturaEconomicaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    PIB_Agricultura_perc DECIMAL(5,2) NULL,

    PIB_Industria_perc DECIMAL(5,2) NULL,

    PIB_Servicos_perc DECIMAL(5,2) NULL,

    CONSTRAINT FK_EstruturaEco_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

-- TABELAS DE M�TRICAS SOCIAIS E DE SA�DE

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='MetricasSaude' AND xtype='U')
BEGIN
CREATE TABLE MetricasSaude (

    MetricaSaudeID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    GastoComSaude_perc_PIB DECIMAL(5,2) NULL,

    TaxaMortalidadeInfantil DECIMAL(5,2) NULL,

    CONSTRAINT FK_MetricasSaude_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='DadosDemograficos' AND xtype='U')
BEGIN
CREATE TABLE DadosDemograficos (

    DemografiaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    TaxaNatalidade DECIMAL(5,2) NULL,

    TaxaMortalidade DECIMAL(5,2) NULL,

    TaxaFertilidade DECIMAL(5,2) NULL,

    IdadeMediana DECIMAL(5,2) NULL,

    CONSTRAINT FK_Demografia_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='IndicadoresEducacionais' AND xtype='U')
BEGIN
CREATE TABLE IndicadoresEducacionais (

    IndicadorEducacionalID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    TaxaAlfabetizacao DECIMAL(5,2) NULL,

    GastoComEducacao_perc_PIB DECIMAL(5,2) NULL,

    CONSTRAINT FK_IndicadoresEdu_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='QualidadeDeVida' AND xtype='U')
BEGIN
CREATE TABLE QualidadeDeVida (

    QualidadeVidaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    AcessoEletricidade_perc_Pop DECIMAL(5,2) NULL,

    TaxaHomicidios DECIMAL(5,2) NULL,

    CONSTRAINT FK_QualidadeVida_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

-- TABELAS DE M�TRICAS AMBIENTAIS E TECNOL�GICAS

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='DadosAmbientais' AND xtype='U')
BEGIN
CREATE TABLE DadosAmbientais (

    DadoAmbientalID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    EmissaoCO2_Ton DECIMAL(18,2) NULL,

    AreaFlorestal_perc_Total DECIMAL(5,2) NULL,

    CONSTRAINT FK_DadosAmbientais_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='AcessoTecnologia' AND xtype='U')
BEGIN
CREATE TABLE AcessoTecnologia (

    TecnologiaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    UsuariosInternet_perc_Pop DECIMAL(5,2) NULL,

    CONSTRAINT FK_AcessoTecnologia_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='FontesEnergia' AND xtype='U')
BEGIN
CREATE TABLE FontesEnergia (

    EnergiaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    ConsumoEnergia_PerCapita DECIMAL(15,2) NULL,

    ProducaoEletricidade_FontesRenovaveis_perc DECIMAL(5,2) NULL,

    CONSTRAINT FK_FontesEnergia_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

); 
END;

IF OBJECT_ID('tempdb..#co2 ') IS NULL
BEGIN
CREATE TABLE #co2 (
    col1  VARCHAR(MAX),
    col2  VARCHAR(MAX),
    col3  VARCHAR(MAX),
    col4  VARCHAR(MAX),
    col5  VARCHAR(MAX),
    col6  VARCHAR(MAX),
    col7  VARCHAR(MAX),
    col8  VARCHAR(MAX),
    col9  VARCHAR(MAX),
    col10 VARCHAR(MAX),
    col11 VARCHAR(MAX),
    col12 VARCHAR(MAX),
    col13 VARCHAR(MAX),
    col14 VARCHAR(MAX),
    col15 VARCHAR(MAX),
    col16 VARCHAR(MAX),
    col17 VARCHAR(MAX),
    col18 VARCHAR(MAX),
    col19 VARCHAR(MAX),
    col20 VARCHAR(MAX),
    col21 VARCHAR(MAX),
    col22 VARCHAR(MAX),
    col23 VARCHAR(MAX),
    col24 VARCHAR(MAX),
    col25 VARCHAR(MAX),
    col26 VARCHAR(MAX),
    col27 VARCHAR(MAX),
    col28 VARCHAR(MAX),
    col29 VARCHAR(MAX),
    col30 VARCHAR(MAX),
    col31 VARCHAR(MAX),
    col32 VARCHAR(MAX),
    col33 VARCHAR(MAX),
    col34 VARCHAR(MAX),
    col35 VARCHAR(MAX),
    col36 VARCHAR(MAX),
    col37 VARCHAR(MAX)
);
BULK INSERT #co2
FROM '/var/opt/mssql/data/datasets/co2_production.csv'
WITH (
        FORMAT='CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
END;

IF OBJECT_ID('tempdb..#metric') IS NULL
BEGIN
CREATE TABLE #metric(
    col1 VARCHAR(MAX),
    col2 VARCHAR(MAX),
    col3 VARCHAR(MAX),
    col4 VARCHAR(MAX),
    col5 VARCHAR(MAX),
    col6 VARCHAR(MAX),
    col7 VARCHAR(MAX),
);
    BULK INSERT #metric
FROM '/var/opt/mssql/data/datasets/countries_metric.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\r\n',  -- <--- Tente isso (para \r\n)
    FIRSTROW = 2
);
END;
    
IF OBJECT_ID('tempdb..#gapminder') IS NULL
BEGIN
CREATE TABLE #gapminder(
    col1 VARCHAR(MAX),
    col2 VARCHAR(MAX),
    col3 VARCHAR(MAX),
    col4 VARCHAR(MAX),
    col5 VARCHAR(MAX),
    col6 VARCHAR(MAX),
    col7 VARCHAR(MAX),
    col8 VARCHAR(MAX)
);
BULK INSERT #gapminder
    FROM '/var/opt/mssql/data/datasets/gapminder_data_graphs.csv'
    WITH (
            FORMAT='CSV',
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2,
        TABLOCK
    );
END;

IF OBJECT_ID('tempdb..#gross') IS NULL
BEGIN
CREATE TABLE #gross(col1  VARCHAR(MAX),
    col2  VARCHAR(MAX),
    col3  VARCHAR(MAX),
    col4  VARCHAR(MAX),
    col5  VARCHAR(MAX),
    col6  VARCHAR(MAX),
    col7  VARCHAR(MAX),
    col8  VARCHAR(MAX),
    col9  VARCHAR(MAX),
    col10 VARCHAR(MAX),
    col11 VARCHAR(MAX),
    col12 VARCHAR(MAX),
    col13 VARCHAR(MAX),
    col14 VARCHAR(MAX),
    col15 VARCHAR(MAX),
    col16 VARCHAR(MAX),
    col17 VARCHAR(MAX),
    col18 VARCHAR(MAX),
    col19 VARCHAR(MAX),
    col20 VARCHAR(MAX),
    col21 VARCHAR(MAX),
    col22 VARCHAR(MAX),
    col23 VARCHAR(MAX),
    col24 VARCHAR(MAX),
    col25 VARCHAR(MAX),
    col26 VARCHAR(MAX),
    col27 VARCHAR(MAX),
    col28 VARCHAR(MAX),
    col29 VARCHAR(MAX),
    col30 VARCHAR(MAX),
    col31 VARCHAR(MAX),
    col32 VARCHAR(MAX),
    col33 VARCHAR(MAX),
    col34 VARCHAR(MAX),
    col35 VARCHAR(MAX),
    col36 VARCHAR(MAX),
    col37 VARCHAR(MAX)
);

BULK INSERT #gross
    FROM '/var/opt/mssql/data/datasets/gross_national_income_per_capital.csv'
    WITH (
            FORMAT='CSV',
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        
        TABLOCK
    );
END;

IF OBJECT_ID('tempdb..#human') IS NULL
BEGIN
CREATE TABLE #human(col1  VARCHAR(MAX),
    col2  VARCHAR(MAX),
    col3  VARCHAR(MAX),
    col4  VARCHAR(MAX),
    col5  VARCHAR(MAX),
    col6  VARCHAR(MAX),
    col7  VARCHAR(MAX),
    col8  VARCHAR(MAX),
    col9  VARCHAR(MAX),
    col10 VARCHAR(MAX),
    col11 VARCHAR(MAX),
    col12 VARCHAR(MAX),
    col13 VARCHAR(MAX),
    col14 VARCHAR(MAX),
    col15 VARCHAR(MAX),
    col16 VARCHAR(MAX),
    col17 VARCHAR(MAX),
    col18 VARCHAR(MAX),
    col19 VARCHAR(MAX),
    col20 VARCHAR(MAX),
    col21 VARCHAR(MAX),
    col22 VARCHAR(MAX),
    col23 VARCHAR(MAX),
    col24 VARCHAR(MAX),
    col25 VARCHAR(MAX),
    col26 VARCHAR(MAX),
    col27 VARCHAR(MAX),
    col28 VARCHAR(MAX),
    col29 VARCHAR(MAX),
    col30 VARCHAR(MAX),
    col31 VARCHAR(MAX),
    col32 VARCHAR(MAX),
    col33 VARCHAR(MAX),
    col34 VARCHAR(MAX),
    col35 VARCHAR(MAX),
    col36 VARCHAR(MAX),
    col37 VARCHAR(MAX)
);

BULK INSERT #human
    FROM '/var/opt/mssql/data/datasets/human_development_index.csv '
    WITH (
            FORMAT='CSV',
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        
        TABLOCK
    );
END;

IF OBJECT_ID('tempdb..#life') IS NULL
BEGIN
CREATE TABLE #life(col1  VARCHAR(MAX),
    col2  VARCHAR(MAX),
    col3  VARCHAR(MAX),
    col4  VARCHAR(MAX),
    col5  VARCHAR(MAX),
    col6  VARCHAR(MAX),
    col7  VARCHAR(MAX),
    col8  VARCHAR(MAX),
    col9  VARCHAR(MAX),
    col10 VARCHAR(MAX),
    col11 VARCHAR(MAX),
    col12 VARCHAR(MAX),
    col13 VARCHAR(MAX),
    col14 VARCHAR(MAX),
    col15 VARCHAR(MAX),
    col16 VARCHAR(MAX),
    col17 VARCHAR(MAX),
    col18 VARCHAR(MAX),
    col19 VARCHAR(MAX),
    col20 VARCHAR(MAX),
    col21 VARCHAR(MAX),
    col22 VARCHAR(MAX),
    col23 VARCHAR(MAX),
    col24 VARCHAR(MAX),
    col25 VARCHAR(MAX),
    col26 VARCHAR(MAX),
    col27 VARCHAR(MAX),
    col28 VARCHAR(MAX),
    col29 VARCHAR(MAX),
    col30 VARCHAR(MAX),
    col31 VARCHAR(MAX),
    col32 VARCHAR(MAX),
    col33 VARCHAR(MAX),
    col34 VARCHAR(MAX),
    col35 VARCHAR(MAX),
    col36 VARCHAR(MAX),
    col37 VARCHAR(MAX)
);

BULK INSERT #life
    FROM '/var/opt/mssql/data/datasets/life_expectancy_by_birth.csv'
    WITH (
            FORMAT='CSV',
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        
        TABLOCK
    );
    END;

--(ISO3, Country, hdi_code, region, hdi_rank_2021, co2_prod_1990, co2_prod_1991, co2_prod_1992, co2_prod_1993, co2_prod_1994, co2_prod_1995, co2_prod_1996, co2_prod_1997, co2_prod_1998, co2_prod_1999, co2_prod_2000, co2_prod_2001, co2_prod_2002, co2_prod_2003, co2_prod_2004,  co2_prod_2005, co2_prod_2006, co2_prod_2007, co2_prod_2008, co2_prod_2009, co2_prod_2010,co2_prod_2011, co2_prod_2012, co2_prod_2013, co2_prod_2014, co2_prod_2015, co2_prod_2016, co2_prod_2017, co2_prod_2018, co2_prod_2019, co2_prod_2020, co2_prod_2021)
--(ISO3, Country, hdi_code, region, hdi_rank_2021, hdi_1990, hdi_1991, hdi_1992, hdi_1993, hdi_1994, hdi_1995, hdi_1996, hdi_1997, hdi_1998, hdi_1999, hdi_2000, hdi_2001, hdi_2002, hdi_2003, hdi_2004, hdi_2005, hdi_2006, hdi_2007, hdi_2008, hdi_2009, hdi_2010, hdi_2011, hdi_2012, hdi_2013, hdi_2014, hdi_2015, hdi_2016, hdi_2017, hdi_2018, hdi_2019, hdi_2020, hdi_2021)
--(ISO3, Country, hdi_code, region, hdi_rank_2021, le_1990, le_1991, le_1992, le_1993, le_1994, le_1995, le_1996, le_1997, le_1998, le_1999, le_2000, le_2001, le_2002, le_2003, le_2004, le_2005, le_2006, le_2007, le_2008, le_2009, le_2010, le_2011, le_2012, le_2013, le_2014, le_2015, le_2016, le_2017, le_2018, le_2019, le_2020, le_2021)
--Insert nas tabelas que corresponde da exata mesma forma que o csv
INSERT INTO GNIPC(ISO3, Country, hdi_code, region, hdi_rank_2021, 
 gnipc_1990, gnipc_1991, gnipc_1992, gnipc_1993, gnipc_1994, 
gnipc_1995, gnipc_1996, gnipc_1997, gnipc_1998, gnipc_1999, 
gnipc_2000, gnipc_2001, gnipc_2002, gnipc_2003, gnipc_2004, 
gnipc_2005, gnipc_2006, gnipc_2007, gnipc_2008, gnipc_2009, 
gnipc_2010, gnipc_2011, gnipc_2012, gnipc_2013, gnipc_2014, 
gnipc_2015, gnipc_2016, gnipc_2017, gnipc_2018, gnipc_2019, 
gnipc_2020, gnipc_2021)
SELECT TRY_CAST(col1 AS CHAR(3)), 
TRY_CAST(col2 AS nvarchar(100)), 
TRY_CAST(col3 AS NVARCHAR(20)), 
TRY_CAST(col4 AS NVARCHAR(50)),
TRY_CAST(col5 AS int),
TRY_CAST(col6 AS DECIMAL(18,6)),
TRY_CAST(col7 AS DECIMAL(18,6)),
TRY_CAST(col8 AS DECIMAL(18,6)),
TRY_CAST(col9 AS DECIMAL(18,6)),
TRY_CAST(col10 AS DECIMAL(18,6)),
TRY_CAST(col11 AS DECIMAL(18,6)),
TRY_CAST(col12 AS DECIMAL(18,6)),
TRY_CAST(col13 AS DECIMAL(18,6)),
TRY_CAST(col14 AS DECIMAL(18,6)),
TRY_CAST(col15 AS DECIMAL(18,6)),
TRY_CAST(col16 AS DECIMAL(18,6)),
TRY_CAST(col17 AS DECIMAL(18,6)),
TRY_CAST(col18 AS DECIMAL(18,6)),
TRY_CAST(col19 AS DECIMAL(18,6)),
TRY_CAST(col20 AS DECIMAL(18,6)),
TRY_CAST(col21 AS DECIMAL(18,6)),
TRY_CAST(col22 AS DECIMAL(18,6)),
TRY_CAST(col23 AS DECIMAL(18,6)),
TRY_CAST(col24 AS DECIMAL(18,6)),
TRY_CAST(col25 AS DECIMAL(18,6)),
TRY_CAST(col26 AS DECIMAL(18,6)),
TRY_CAST(col27 AS DECIMAL(18,6)),
TRY_CAST(col28 AS DECIMAL(18,6)),
TRY_CAST(col29 AS DECIMAL(18,6)),
TRY_CAST(col30 AS DECIMAL(18,6)),
TRY_CAST(col31 AS DECIMAL(18,6)),
TRY_CAST(col32 AS DECIMAL(18,6)),
TRY_CAST(col33 AS DECIMAL(18,6)),
TRY_CAST(col34 AS DECIMAL(18,6)),
TRY_CAST(col35 AS DECIMAL(18,6)),
TRY_CAST(col36 AS DECIMAL(18,6)),
TRY_CAST(col37 AS DECIMAL(18,6))
FROM(SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL))as rn,col1, col2, col3, col4, col5, 
col6, col7, col8, col9, col10, 
col11, col12, col13, col14, col15, 
col16, col17, col18, col19, col20, 
col21, col22, col23, col24, col25, 
col26, col27, col28, col29, col30, 
col31, col32, col33, col34, col35, 
col36, col37 FROM #gross )t 
WHERE rn BETWEEN 2 AND 196;

--Insert Continentes
INSERT INTO Continentes (NomeContinente)
SELECT DISTINCT TRY_CAST(col2 AS nvarchar(100))
FROM #gapminder
WHERE col2 IS NOT NULL;

--Insert ObservacoesAnuais
 INSERT INTO Regioes (NomeRegiao, ContinenteID)
SELECT DISTINCT
    g.region,
    c.ContinenteID
FROM 
    GNIPC g
JOIN 
    #gapminder gm ON g.Country = gm.col1
JOIN 
    Continentes c ON gm.col2 = c.NomeContinente
WHERE 
    g.region IS NOT NULL
    AND g.region NOT IN (SELECT NomeRegiao FROM Regioes);

ALTER TABLE Paises
ALTER COLUMN CodigoISO_Alpha3 CHAR(3) NULL;

INSERT INTO Paises (NomePais, CodigoISO_Alpha3, RegiaoID)
SELECT DISTINCT
    g.Country,
    g.ISO3,
    r.RegiaoID
FROM 
    GNIPC g
JOIN 
    Regioes r ON g.region = r.NomeRegiao
WHERE 
    g.Country NOT IN (SELECT NomePais FROM Paises);

INSERT INTO ObservacoesAnuaisBasicas (PaisID, Ano, PopulacaoTotal)
SELECT 
    p.PaisID AS country_id,
    CAST(g.col3 AS SMALLINT) AS ano,
    CAST(REPLACE(m.col2, ',', '') AS BIGINT) AS population
FROM #gapminder g
JOIN Paises p 
    ON p.NomePais = g.col1
JOIN #metric m
    ON m.col1 = g.col1
WHERE 
    g.col3 IS NOT NULL
    AND m.col1 IS NOT NULL;

UPDATE O 
SET O.ExpectativaDeVida = g.col4
FROM ObservacoesAnuaisBasicas O -- <-- Alias definido como 'O'
JOIN Paises p ON p.PaisID = O.PaisID
JOIN #gapminder g ON g.col1 = p.NomePais AND O.Ano = g.col3; -- <-- 'O' usado aqui


-- CORRE��O PARA PIB PER CAPITA (VOC� TER� O MESMO PROBLEMA AQUI)
UPDATE O 
SET O.PIB_PerCapita = m.col4
FROM ObservacoesAnuaisBasicas O -- <-- Alias definido como 'O'
JOIN Paises p ON p.PaisID = O.PaisID
JOIN #metric m ON m.col1 = p.NomePais;

INSERT INTO Paises (NomePais, RegiaoID)
VALUES
('Afghanistan', 2),   -- Asia
('Albania', 6),       -- Europe
('Algeria', 3),       -- Africa
('Angola', 3),        -- Africa
('Argentina', 5),     -- South America
('Armenia', 2),       -- Asia
('Australia', 4),     -- Oceania
('Austria', 6),       -- Europe
('Azerbaijan', 2),    -- Asia
('Bahamas', 1),       -- North America
('Bahrain', 2),       -- Asia
('Bangladesh', 2),    -- Asia
('Barbados', 1),      -- North America
('Belarus', 6),       -- Europe
('Belgium', 6),       -- Europe
('Belize', 1),        -- North America
('Benin', 3),         -- Africa
('Bhutan', 2),        -- Asia
('Bosnia and Herzegovina', 6), -- Europe
('Botswana', 3),      -- Africa
('Brazil', 5),        -- South America
('Bulgaria', 6),      -- Europe
('Burkina Faso', 3),  -- Africa
('Burundi', 3),       -- Africa
('Cambodia', 2),      -- Asia
('Cameroon', 3),      -- Africa
('Canada', 1),        -- North America
('Central African Republic', 3),
('Chad', 3),
('Chile', 5),
('China', 2),
('Colombia', 5),
('Comoros', 3),
('Costa Rica', 1),
('Croatia', 6),
('Cuba', 1),
('Cyprus', 2),
('Denmark', 6),
('Djibouti', 3),
('Dominican Republic', 1),
('Ecuador', 5),
('Egypt', 3),
('El Salvador', 1),
('Equatorial Guinea', 3),
('Estonia', 6),
('Ethiopia', 3),
('Fiji', 4),
('Finland', 6),
('France', 6),
('Gabon', 3),
('Gambia', 3),
('Georgia', 2),
('Germany', 6),
('Ghana', 3),
('Greece', 6),
('Guatemala', 1),
('Guinea', 3),
('Guinea-Bissau', 3),
('Guyana', 5),
('Haiti', 1),
('Honduras', 1),
('Hungary', 6),
('Iceland', 6),
('India', 2),
('Indonesia', 2),
('Iraq', 2),
('Ireland', 6),
('Israel', 2),
('Italy', 6),
('Jamaica', 1),
('Japan', 2),
('Jordan', 2),
('Kazakhstan', 2),
('Kenya', 3),
('Kuwait', 2),
('Latvia', 6),
('Lebanon', 2),
('Lesotho', 3),
('Liberia', 3),
('Libya', 3),
('Lithuania', 6),
('Luxembourg', 6),
('Madagascar', 3),
('Malawi', 3),
('Malaysia', 2),
('Maldives', 2),
('Mali', 3),
('Malta', 6),
('Mauritania', 3),
('Mauritius', 3),
('Mexico', 1),
('Mongolia', 2),
('Montenegro', 6),
('Morocco', 3),
('Mozambique', 3),
('Myanmar', 2),
('Namibia', 3),
('Nepal', 2),
('Netherlands', 6),
('New Zealand', 4),
('Nicaragua', 1),
('Niger', 3),
('Nigeria', 3),
('North Macedonia', 6),
('Norway', 6),
('Oman', 2),
('Pakistan', 2),
('Panama', 1),
('Papua New Guinea', 4),
('Paraguay', 5),
('Peru', 5),
('Philippines', 2),
('Poland', 6),
('Portugal', 6),
('Qatar', 2),
('Romania', 6),
('Rwanda', 3),
('Samoa', 4),
('Sao Tome and Principe', 3),
('Saudi Arabia', 2),
('Senegal', 3),
('Serbia', 6),
('Sierra Leone', 3),
('Singapore', 2),
('Slovenia', 6),
('Solomon Islands', 4),
('South Africa', 3),
('South Sudan', 3),
('Spain', 6),
('Sri Lanka', 2),
('Sudan', 3),
('Suriname', 5),
('Sweden', 6),
('Switzerland', 6),
('Tajikistan', 2),
('Thailand', 2),
('Timor-Leste', 2),
('Togo', 3),
('Tonga', 4),
('Trinidad and Tobago', 1),
('Tunisia', 3),
('Turkmenistan', 2),
('Uganda', 3),
('Ukraine', 6),
('United Arab Emirates', 2),
('United Kingdom', 6),
('United States', 1),
('Uruguay', 5),
('Uzbekistan', 2),
('Vanuatu', 4),
('Yemen', 2),
('Zambia', 3),
('Zimbabwe', 3);

-- Insert DesenvolvimentoHumano (UNPIVOT)
WITH DataWithID AS (
    SELECT 
        p.PaisID,
        h.* FROM 
        #human h
    JOIN 
        Paises p ON h.col1 = p.CodigoISO_Alpha3
)
INSERT INTO DesenvolvimentoHumano (PaisID, Ano, ValorIDH)
SELECT
    PaisID, 
    CAST(SUBSTRING(Ano_Str, 4, 10) AS SMALLINT) + 1984 AS Ano,
    TRY_CAST(T.ValorIDH AS DECIMAL(4,3)) AS ValorIDH_Cast
FROM 
    DataWithID
UNPIVOT
(
    ValorIDH FOR Ano_Str IN 
    (col6, col7, col8, col9, col10, col11, col12, col13, col14, col15, 
     col16, col17, col18, col19, col20, col21, col22, col23, col24, col25, 
     col26, col27, col28, col29, col30, col31, col32, col33, col34, col35, 
     col36, col37)
) AS T
WHERE 
    TRY_CAST(T.ValorIDH AS DECIMAL(4,3)) IS NOT NULL;


-- Insert DadosAmbientais (UNPIVOT)
WITH DataWithID AS (
    SELECT 
        p.PaisID,
        c.* FROM 
        #co2 c
    JOIN 
        Paises p ON c.col1 = p.CodigoISO_Alpha3
)
INSERT INTO DadosAmbientais (PaisID, Ano, EmissaoCO2_Ton)
SELECT
    PaisID, 
    CAST(SUBSTRING(Ano_Str, 4, 10) AS SMALLINT) + 1984 AS Ano,
    TRY_CAST(T.EmissaoCO2_Ton AS DECIMAL(18,2)) AS CO2_Cast
FROM 
    DataWithID
UNPIVOT
(
    EmissaoCO2_Ton FOR Ano_Str IN 
    (col6, col7, col8, col9, col10, col11, col12, col13, col14, col15, 
     col16, col17, col18, col19, col20, col21, col22, col23, col24, col25, 
     col26, col27, col28, col29, col30, col31, col32, col33, col34, col35, 
     col36, col37)
) AS T
WHERE 
    TRY_CAST(T.EmissaoCO2_Ton AS DECIMAL(18,2)) IS NOT NULL;


-- 3. Popula MetricasEconomicas (GNI/Renda) a partir da tabela GNIPC
WITH DataWithID AS (
    SELECT 
        p.PaisID,
        g.* FROM 
        GNIPC g
    JOIN 
        Paises p ON g.ISO3 = p.CodigoISO_Alpha3
)
INSERT INTO MetricasEconomicas (PaisID, Ano, PIB_PPC_USD)
SELECT
    PaisID, -- REMOVA O 'd.' DAQUI
    CAST(RIGHT(T.Ano_Str, 4) AS SMALLINT) AS Ano,
    T.GNI_Valor
FROM 
    DataWithID
UNPIVOT
(
    GNI_Valor FOR Ano_Str IN 
    (gnipc_1990, gnipc_1991, gnipc_1992, gnipc_1993, gnipc_1994, 
     gnipc_1995, gnipc_1996, gnipc_1997, gnipc_1998, gnipc_1999, 
     gnipc_2000, gnipc_2001, gnipc_2002, gnipc_2003, gnipc_2004, 
     gnipc_2005, gnipc_2006, gnipc_2007, gnipc_2008, gnipc_2009, 
     gnipc_2010, gnipc_2011, gnipc_2012, gnipc_2013, gnipc_2014, 
     gnipc_2015, gnipc_2016, gnipc_2017, gnipc_2018, gnipc_2019, 
     gnipc_2020, gnipc_2021)
) AS T
WHERE 
    T.GNI_Valor IS NOT NULL;

--Perguntas reposndidas

--Paises que tem maior riqueza t�m necessariamente maior IDH?
SELECT DISTINCT
    p.NomePais,
    me.PIB_PPC_USD AS Renda_PerCapita_2018, -- Trocado de 'o.PIB_PerCapita'
    dh.ValorIDH
FROM 
    MetricasEconomicas me -- Trocado de 'ObservacoesAnuaisBasicas o'
JOIN 
    DesenvolvimentoHumano dh ON me.PaisID = dh.PaisID AND me.Ano = dh.Ano
JOIN 
    Paises p ON me.PaisID = p.PaisID
WHERE 
    me.Ano = 2018 -- Filtro agora na 'me'
ORDER BY 
    Renda_PerCapita_2018 DESC;

--Podemos prever a expectativa de vida de um pa�s olhando para sua economia e demografia?
SELECT DISTINCT
    p.NomePais,
    o.ExpectativaDeVida,
    o.PIB_PerCapita
FROM 
    ObservacoesAnuaisBasicas o
JOIN 
    Paises p ON o.PaisID = p.PaisID
WHERE 
    o.Ano = 2018
ORDER BY 
    o.ExpectativaDeVida DESC;

--O desenvolvimento econ�mico inevitavelmente leva � degrada��o ambiental?
SELECT DISTINCT
    p.NomePais,
    o.PIB_PerCapita,
    da.EmissaoCO2_Ton
FROM 
    ObservacoesAnuaisBasicas o
JOIN 
    DadosAmbientais da ON o.PaisID = da.PaisID AND o.Ano = da.Ano
JOIN 
    Paises p ON o.PaisID = p.PaisID
WHERE 
    o.Ano = 2018
ORDER BY 
    o.PIB_PerCapita DESC;

--Existe uma rela��o entre a matriz energ�tica de um pa�s... e seu desempenho em... emiss�es de CO2... e IDH?
SELECT 
    p.NomePais,
    AVG(dh.ValorIDH) AS Media_IDH,
    AVG(da.EmissaoCO2_Ton) AS Media_CO2
FROM 
    DesenvolvimentoHumano dh
JOIN 
    DadosAmbientais da ON dh.PaisID = da.PaisID AND dh.Ano = da.Ano
JOIN 
    Paises p ON p.PaisID = dh.PaisID
GROUP BY 
    p.NomePais -- Agrupa todos os anos em um �nico registro por pa�s
ORDER BY 
    Media_IDH DESC;
    --nao parece ter relacao

--Qual a rela��o entre o IDH e as emiss�es de CO2? Pa�ses com alto desenvolvimento humano (IDH) emitem mais?
SELECT DISTINCT
    p.NomePais,
    dh.ValorIDH,
    da.EmissaoCO2_Ton
FROM 
    DesenvolvimentoHumano dh
LEFT JOIN 
    DadosAmbientais da ON dh.PaisID = da.PaisID AND dh.Ano = da.Ano
JOIN 
    Paises p ON p.PaisID = dh.PaisID
WHERE 
    dh.Ano = 2018
    AND dh.ValorIDH IS NOT NULL
ORDER BY 
    dh.ValorIDH DESC;

--O PIB per capita (do arquivo "metric") e a Renda Nacional Bruta per capita (do arquivo "gross") s�o indicadores similares?
SELECT 
    p.NomePais,
    o.PIB_PerCapita AS PIB_PerCapita_Metric,
    me.PIB_PPC_USD AS GNI_PerCapita_Gross
FROM 
    ObservacoesAnuaisBasicas o
LEFT JOIN 
    MetricasEconomicas me ON o.PaisID = me.PaisID AND o.Ano = me.Ano
JOIN 
    Paises p ON o.PaisID = p.PaisID
WHERE 
    o.Ano = 2021
    AND o.PIB_PerCapita IS NOT NULL
    AND me.PIB_PPC_USD IS NOT NULL
ORDER BY 
    o.PIB_PerCapita DESC;

--Quais pa�ses tiveram o maior crescimento percentual no PIB per capita na �ltima d�cada (2011 vs 2018)?
WITH DadosDecada AS (
    SELECT 
        PaisID,
        Ano,
        PIB_PerCapita
    FROM 
        ObservacoesAnuaisBasicas
    WHERE 
        Ano = 2011 OR Ano = 2018
)
SELECT 
    p.NomePais,
    d_2011.PIB_PerCapita AS PIB_2011,
    d_2018.PIB_PerCapita AS PIB_2018,
    ( (d_2018.PIB_PerCapita - d_2011.PIB_PerCapita) / d_2011.PIB_PerCapita ) * 100 AS CrescimentoPercentual
FROM 
    Paises p
JOIN 
    DadosDecada d_2011 ON p.PaisID = d_2011.PaisID AND d_2011.Ano = 2011
JOIN 
    DadosDecada d_2018 ON p.PaisID = d_2018.PaisID AND d_2018.Ano = 2018
WHERE
    d_2011.PIB_PerCapita IS NOT NULL AND d_2011.PIB_PerCapita > 0
ORDER BY 
    CrescimentoPercentual DESC;

--Como a expectativa de vida mudou desde 1999 em diferentes continentes?
SELECT 
    c.NomeContinente,
    AVG(CASE WHEN o.Ano = 1999 THEN o.ExpectativaDeVida ELSE NULL END) AS Media_ExpVida_1999,
    AVG(CASE WHEN o.Ano = 2011 THEN o.ExpectativaDeVida ELSE NULL END) AS Media_ExpVida_2011,
    AVG(CASE WHEN o.Ano = 2011 THEN o.ExpectativaDeVida ELSE NULL END) - AVG(CASE WHEN o.Ano = 1999 THEN o.ExpectativaDeVida ELSE NULL END) AS Mudanca_Absoluta
FROM 
    ObservacoesAnuaisBasicas o
JOIN 
    Paises p ON o.PaisID = p.PaisID
JOIN
    Regioes r ON p.RegiaoID = r.RegiaoID
JOIN
    Continentes c ON r.ContinenteID = c.ContinenteID
WHERE 
    o.Ano = 1999 OR o.Ano = 2011
GROUP BY 
    c.NomeContinente
ORDER BY
    Mudanca_Absoluta DESC;