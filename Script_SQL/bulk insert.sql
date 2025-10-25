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

select * from #co2; --Tem sua tabela origem chamada EmissoesCO2_Wide
select * from #gapminder;
select * from #gross;
select * from #human; --Tem sua tabela origem DesenvolvimentoHumanoDTSET
select * from #life; --Tem sua tabela origem Expectativa de vida

select * from EmissoesCO2_Wide;
