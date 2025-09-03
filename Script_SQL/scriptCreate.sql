-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE GeoMundo;
USE GeoMundo;

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