-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE GeoMundo;
USE GeoMundo;

--Tabelas que receberão csv

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


-- Continentes

CREATE TABLE Continentes (

    ContinenteID INT IDENTITY(1,1) PRIMARY KEY,

    NomeContinente NVARCHAR(100) NOT NULL

);


-- Regioes

CREATE TABLE Regioes (

    RegiaoID INT IDENTITY(1,1) PRIMARY KEY,

    NomeRegiao NVARCHAR(100) NOT NULL,

    ContinenteID INT NOT NULL,

    CONSTRAINT FK_Regioes_Continentes FOREIGN KEY (ContinenteID)

        REFERENCES Continentes(ContinenteID)

);


-- Paises

CREATE TABLE Paises (

    PaisID INT IDENTITY(1,1) PRIMARY KEY,

    NomePais NVARCHAR(100) NOT NULL,

    CodigoISO_Alpha3 CHAR(3) NOT NULL,

    RegiaoID INT NOT NULL,

    CONSTRAINT FK_Paises_Regioes FOREIGN KEY (RegiaoID)

        REFERENCES Regioes(RegiaoID)

);


-- Geografia

CREATE TABLE Geografia (

    GeografiaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT UNIQUE NOT NULL,

    AreaKm2 DECIMAL(15,2) NOT NULL,

    DensidadePopulacional DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_Geografia_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);

-- TABELAS DE MÉTRICAS BÁSICAS

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


CREATE TABLE DesenvolvimentoHumano (

    IDH_ID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    ValorIDH DECIMAL(4,3) NOT NULL,

    CONSTRAINT FK_IDH_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);


-- TABELAS DE MÉTRICAS ECONÔMICAS

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

-- TABELAS DE MÉTRICAS SOCIAIS E DE SAÚDE

CREATE TABLE MetricasSaude (

    MetricaSaudeID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    GastoComSaude_perc_PIB DECIMAL(5,2) NULL,

    TaxaMortalidadeInfantil DECIMAL(5,2) NULL,

    CONSTRAINT FK_MetricasSaude_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);


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


CREATE TABLE IndicadoresEducacionais (

    IndicadorEducacionalID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    TaxaAlfabetizacao DECIMAL(5,2) NULL,

    GastoComEducacao_perc_PIB DECIMAL(5,2) NULL,

    CONSTRAINT FK_IndicadoresEdu_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);


CREATE TABLE QualidadeDeVida (

    QualidadeVidaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    AcessoEletricidade_perc_Pop DECIMAL(5,2) NULL,

    TaxaHomicidios DECIMAL(5,2) NULL,

    CONSTRAINT FK_QualidadeVida_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);


-- TABELAS DE MÉTRICAS AMBIENTAIS E TECNOLÓGICAS

CREATE TABLE DadosAmbientais (

    DadoAmbientalID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    EmissaoCO2_Ton DECIMAL(18,2) NULL,

    AreaFlorestal_perc_Total DECIMAL(5,2) NULL,

    CONSTRAINT FK_DadosAmbientais_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);


CREATE TABLE AcessoTecnologia (

    TecnologiaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    UsuariosInternet_perc_Pop DECIMAL(5,2) NULL,

    CONSTRAINT FK_AcessoTecnologia_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

);


CREATE TABLE FontesEnergia (

    EnergiaID INT IDENTITY(1,1) PRIMARY KEY,

    PaisID INT NOT NULL,

    Ano SMALLINT NOT NULL,

    ConsumoEnergia_PerCapita DECIMAL(15,2) NULL,

    ProducaoEletricidade_FontesRenovaveis_perc DECIMAL(5,2) NULL,

    CONSTRAINT FK_FontesEnergia_Paises FOREIGN KEY (PaisID)

        REFERENCES Paises(PaisID)

); 
