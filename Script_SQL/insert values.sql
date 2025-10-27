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

--Insert Paises
ALTER TABLE Paises
ALTER COLUMN CodigoISO_Alpha3 CHAR(3) NULL;

UPDATE p
SET p.CodigoISO_Alpha3 = c.col1
FROM Paises p
JOIN #co2 c
    ON p.NomePais = c.col2;

INSERT INTO Paises (NomePais, ContinenteID)
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

select * from #co2; --Tem sua tabela origem chamada EmissoesCO2_Wide
SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS RN, * FROM #co2)t WHERE rn > 1
select * from #gapminder;
select * from #gross;
select * from #human; --Tem sua tabela origem DesenvolvimentoHumanoDTSET
select * from #life; --Tem sua tabela origem Expectativa de vida

select * from ExpectativaVida;

select * from GNIPC EXPECT select * from #gross;

