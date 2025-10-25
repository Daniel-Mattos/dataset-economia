--(ISO3, Country, hdi_code, region, hdi_rank_2021, co2_prod_1990, co2_prod_1991, co2_prod_1992, co2_prod_1993, co2_prod_1994, co2_prod_1995, co2_prod_1996, co2_prod_1997, co2_prod_1998, co2_prod_1999, co2_prod_2000, co2_prod_2001, co2_prod_2002, co2_prod_2003, co2_prod_2004,  co2_prod_2005, co2_prod_2006, co2_prod_2007, co2_prod_2008, co2_prod_2009, co2_prod_2010,co2_prod_2011, co2_prod_2012, co2_prod_2013, co2_prod_2014, co2_prod_2015, co2_prod_2016, co2_prod_2017, co2_prod_2018, co2_prod_2019, co2_prod_2020, co2_prod_2021)
--(ISO3, Country, hdi_code, region, hdi_rank_2021, hdi_1990, hdi_1991, hdi_1992, hdi_1993, hdi_1994, hdi_1995, hdi_1996, hdi_1997, hdi_1998, hdi_1999, hdi_2000, hdi_2001, hdi_2002, hdi_2003, hdi_2004, hdi_2005, hdi_2006, hdi_2007, hdi_2008, hdi_2009, hdi_2010, hdi_2011, hdi_2012, hdi_2013, hdi_2014, hdi_2015, hdi_2016, hdi_2017, hdi_2018, hdi_2019, hdi_2020, hdi_2021)
--(ISO3, Country, hdi_code, region, hdi_rank_2021, le_1990, le_1991, le_1992, le_1993, le_1994, le_1995, le_1996, le_1997, le_1998, le_1999, le_2000, le_2001, le_2002, le_2003, le_2004, le_2005, le_2006, le_2007, le_2008, le_2009, le_2010, le_2011, le_2012, le_2013, le_2014, le_2015, le_2016, le_2017, le_2018, le_2019, le_2020, le_2021)

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

DROP TABLE DesenvolvimentoHumanoDTSET;
select * from #co2; --Tem sua tabela origem chamada EmissoesCO2_Wide
SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS RN, * FROM #co2)t WHERE rn > 1
select * from #gapminder;
select * from #gross;
select * from #human; --Tem sua tabela origem DesenvolvimentoHumanoDTSET
select * from #life; --Tem sua tabela origem Expectativa de vida

select * from ExpectativaVida;
select * from GNIPC EXPECT select * from #gross;