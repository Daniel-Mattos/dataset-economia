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
    FROM '/var/opt/mssql/data/datasets/countries_metric - Sheet1.csv'
    WITH (
            FORMAT='CSV',
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        
        TABLOCK
    );

    
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
        
        TABLOCK
    );

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




INSERT INTO EmissoesCO2_Wide (ISO3,Country) SELECT TRY_CAST(col1 AS CHAR(3)), TRY_CAST(col2 AS nvarchar(100)) FROM(SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL))as rn,col1,col2 FROM #co2 )t WHERE rn BETWEEN 2 AND 196;
INSERT INTO EmissoesCO2_Wide (ISO3,Country,hdi_code,region,hdi_rank_2021) SELECT TRY_CAST(col1 AS CHAR(3)), TRY_CAST(col2 AS nvarchar(100)), TRY_CAST(col3 AS NVARCHAR(20)), TRY_CAST(col4 AS NVARCHAR(50)),TRY_CAST(col5 AS int) FROM(SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL))as rn,col1,col2, col3,col4,col5 FROM #co2 )t WHERE rn BETWEEN 2 AND 196;
-- Cria um CTE para enumerar as linhas do CSV
WITH cte AS (
    SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS rn, *
    FROM #co2
),
target AS (
    SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS rn, *
    FROM EmissoesCO2_Wide
    WHERE ISO3 IS NOT NULL  -- garante que só pega as linhas já inseridas
)
UPDATE t
SET 
    t.co2_prod_1990 = TRY_CAST(c.col6 AS NVARCHAR(MAX)),
    t.co2_prod_1991 = TRY_CAST(c.col7 AS NVARCHAR(MAX)),
    t.co2_prod_1992 = TRY_CAST(c.col8 AS NVARCHAR(MAX)),
    t.co2_prod_1993 = TRY_CAST(c.col9 AS NVARCHAR(MAX)),
    t.co2_prod_1994 = TRY_CAST(c.col10 AS NVARCHAR(MAX)),
    t.co2_prod_1995 = TRY_CAST(c.col11 AS NVARCHAR(MAX)),
    t.co2_prod_1996 = TRY_CAST(c.col12 AS NVARCHAR(MAX)),
    t.co2_prod_1997 = TRY_CAST(c.col13 AS NVARCHAR(MAX)),
    t.co2_prod_1998 = TRY_CAST(c.col14 AS NVARCHAR(MAX)),
    t.co2_prod_1999 = TRY_CAST(c.col15 AS NVARCHAR(MAX)),
    t.co2_prod_2000 = TRY_CAST(c.col16 AS NVARCHAR(MAX)),
    t.co2_prod_2001 = TRY_CAST(c.col17 AS NVARCHAR(MAX)),
    t.co2_prod_2002 = TRY_CAST(c.col18 AS NVARCHAR(MAX)),
    t.co2_prod_2003 = TRY_CAST(c.col19 AS NVARCHAR(MAX)),
    t.co2_prod_2004 = TRY_CAST(c.col20 AS NVARCHAR(MAX)),
    t.co2_prod_2005 = TRY_CAST(c.col21 AS NVARCHAR(MAX)),
    t.co2_prod_2006 = TRY_CAST(c.col22 AS NVARCHAR(MAX)),
    t.co2_prod_2007 = TRY_CAST(c.col23 AS NVARCHAR(MAX)),
    t.co2_prod_2008 = TRY_CAST(c.col24 AS NVARCHAR(MAX)),
    t.co2_prod_2009 = TRY_CAST(c.col25 AS NVARCHAR(MAX)),
    t.co2_prod_2010 = TRY_CAST(c.col26 AS NVARCHAR(MAX)),
    t.co2_prod_2011 = TRY_CAST(c.col27 AS NVARCHAR(MAX)),
    t.co2_prod_2012 = TRY_CAST(c.col28 AS NVARCHAR(MAX)),
    t.co2_prod_2013 = TRY_CAST(c.col29 AS NVARCHAR(MAX)),
    t.co2_prod_2014 = TRY_CAST(c.col30 AS NVARCHAR(MAX)),
    t.co2_prod_2015 = TRY_CAST(c.col31 AS NVARCHAR(MAX)),
    t.co2_prod_2016 = TRY_CAST(c.col32 AS NVARCHAR(MAX)),
    t.co2_prod_2017 = TRY_CAST(c.col33 AS NVARCHAR(MAX)),
    t.co2_prod_2018 = TRY_CAST(c.col34 AS NVARCHAR(MAX)),
    t.co2_prod_2019 = TRY_CAST(c.col35 AS NVARCHAR(MAX)),
    t.co2_prod_2020 = TRY_CAST(c.col36 AS NVARCHAR(MAX)),
    t.co2_prod_2021 = TRY_CAST(c.col37 AS NVARCHAR(MAX))
FROM target t
JOIN cte c ON t.rn = c.rn
WHERE c.rn BETWEEN 2 AND 196;

select * from #co2; --Tem sua tabela origem chamada EmissoesCO2_Wide
SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS RN, * FROM #co2)t WHERE rn > 1
select * from #gapminder;
select * from #gross;
select * from #human; --Tem sua tabela origem DesenvolvimentoHumanoDTSET
select * from #life; --Tem sua tabela origem Expectativa de vida

select * from EmissoesCO2_Wide;