# Projeto final: Dataset de Geolocalização e Economia. 

## Objetivo 
Temos como objetivo do projeto levantar parametros que definem aspectos de um país como PIB per capita, desigualdade social, problemas ambientais. Baseando-se em data sets que promovem dados que nos ajudam a criar os seguintes questionamentos:
-**Países que tem maior riqueza têm necessariamente maior IDH?**
Expectativas de resultados:
- Explorar relação do PIB per capita e IDH
- Componentes (Renda, educação, Longevidade) do IDH podem divergir do PIB
- Efeito de desigualdade
- Classificar países em grupos de acordo com IDH
-**Podemos prever a expectativa de vida de um país olhando para sua economia e demografia?**
- Escolaridade e PIB per capita se correlacionam com expectativa de vida]
- Taxa de mortalidade infantil são levantamentos fortemente negativos
-**O desenvolvimento econômico inevitavelmente leva à degradação ambiental?**
- Analisar os estágios iniciais do crescimento econômico e sua correlação com a degradação ambiental
- Visualizar qual o nível de renda per capita é possivel investir em proteção e qual causa mais danos 
-**Investir em saúde é mais "eficiente" do que focar apenas no crescimento do PIB para melhorar o IDH?**
- Investimento como porcentagem do PIB melhora diretamente o PIB
- Países com PIB médio e alto IDH geralmente investem significativamente em saúde
-**Utilizando um indicador como o Coeficiente de Gini (se disponível), é possível correlacionar a desigualdade de renda com indicadores de instabilidade política ou baixos índices de felicidade e bem-estar?**
- Alto Gini tendem a apresentar maior instabilidade política e social
- Índices de felicidade/satisfação de vida se correlacionam com a desigualdade social e ou de renda, reduzindo a confiança em instituições gorvernamentais
-**Existe uma relação entre a matriz energética de um país (dependência de combustíveis fósseis vs. energias renováveis) e seu desempenho em indicadores de desenvolvimento sustentável, que poderiam incluir emissões de CO2, qualidade do ar e IDH?**
- Dependência de combustíveis fósseis tendem a ter maiores emissões de CO2
- Melhores pontuações em índices da ONU vindo de matrizes energéticas mais limpas
- Correlacionamento entre energia limpa e IDH alto
-**Países com maior taxa de escolaridade feminina apresentam uma menor taxa de natalidade? Como a renda per capita influencia essa dinâmica?**
- Correlação de escolaridade com alta taxa de natalidade em países sub-desenvolvidos
- Aplicação do PIB per capita amplifica esse efeito

## :warning: Planner 
[GitProjects](https://github.com/Daniel-Mattos/dataset-economia/projects?query=is%3Aopen.)

## Processo de extração de dataset
Os dados foram retirados da plataforma Kagger e foram baixados os arquivos com a extensão .csv

[Kaggle Gapminder](https://www.kaggle.com/datasets/albertovidalrod/gapminder-dataset/data)

[Kaggle Global Socioeconômico](https://www.kaggle.com/datasets/toriqulstu/global-socio-economic-and-environmental-indicators)

[Kaggle Metricas globais](https://www.kaggle.com/datasets/prashantdhanuk/global-country-metrics-2025-hdi-gdp-pop-area/data) 

Para criação do Container Docker copie e cole o codigo abaixo em seu terminal:
docker run -d --name geoEconomyDB -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=m@cacOsPr&gos1844" -e "MSSQL_PID=Developer" -p 1433:1433 -v geoeco_data:/var/opt/mssql --hostname dbgeoeco mcr.microsoft.com/mssql/server:2022-latest
Para colocar os arquivos referentes aos datasets copie e cole, lembre-se colocar o path de acordo com o clone deste repositorio:
docker cp "PATH_TO_YOUR_FOLDER_OR_FILE" geoEconomyDB:/var/opt/mssql/data/

## Fase 1 :triangular_flag_on_post: : Planejamento 

### Semana 1: Kick-off e Análise Exploratória
- Levantamento de datasets com base em dados do IBGE
- Criação do repositório no GitHub e organização do Planner de tarefas. .

### Semana 2: Requisitos e Plano de Análise
- **Foco**: Criação de um modelo logico pensando em cada uma das entidades presentes no dataset.
- Levantamento de questionamentos sobre o data base
- 
### Semana 3: Modelagem Física
- **Foco**: Implementação do modelo fisico no SQL Server
- Definição de dados, constraints(chave primarias, estrangeiras, unique)

## Fase 2 :triangular_flag_on_post: : Estruturação, ETL e Carga (Semanas 4-6)

### Semana 4: Construção do Banco (DDL)
- **Foco**: Criar e estruturar o banco de dados.  
- Atividades:  
  - Desenvolver todos os scripts **DDL**.  
  - Criar as tabelas principais (`Projetos`, `Órgãos`, `Orçamentos`, `Execuções`, `Regiões`).  
  - Definir relacionamentos entre as tabelas.  
- Entregáveis:  
  - Scripts DDL.  
  - Estrutura do banco implementada no SQL Server.  

### Semana 5: Desenvolvimento do Processo de ETL em T-SQL
- **Foco**: Codificar o processo de ETL.  
- Atividades:  
  - Criar **Stored Procedures** de ETL.  
  - Realizar extração dos dados brutos (datasets públicos).  
  - Aplicar transformações: limpeza, padronização de colunas e normalização de categorias.  
  - Testar a carga com uma amostra de dados.  
- Entregáveis:  
  - Scripts das Stored Procedures de ETL.  
  - Dados de amostra carregados e validados.  

### Semana 6: Execução do ETL e Consultas Exploratórias
- **Foco**: Executar o ETL completo e validar os resultados.  
- Atividades:  
  - Rodar o **ETL completo** com todos os dados.  
  - Criar consultas DQL para verificar a qualidade da carga.  
  - Explorar os dados carregados com análises iniciais:  
    - Percentual de projetos concluídos no prazo.  
    - Diferença entre orçamento planejado e executado.  
    - Distribuição de projetos por região e órgão responsável.  
- Entregáveis:  
  - Base de dados final carregada.  
  - Scripts das consultas DQL.  
  - Relatórios exploratórios iniciais. 

## Fase 3 :triangular_flag_on_post: : Otimização e Análise (Semanas 7-10)

### Semana 7: Views e Índices
- **Foco**: Criar estruturas que otimizem e simplifiquem as consultas analíticas.  
- Atividades:  
  - Criar **views** para facilitar a análise de dados.  
  - Criar **índices** para otimizar a performance das consultas.  
- Entregáveis:  
  - Scripts de views.  
  - Scripts de índices.  
  - Testes de performance das consultas.  

### Semana 8: Stored Procedures Analíticas
- **Foco**: Implementar Stored Procedures que respondam às perguntas do Plano de Análise.  
- Atividades:  
  - Desenvolver **Stored Procedures** que automatizem a geração de métricas e relatórios.  
  - Validar os resultados obtidos com as perguntas de negócio.  
- Entregáveis:  
  - Scripts das Stored Procedures.  
  - Relatórios gerados pelas SPs.  
  - Documentação e validação dos resultados.  

### Semana 9: Triggers e Transações (DTL)
- **Foco**: Garantir integridade e rastreabilidade das alterações nos dados.  
- Atividades:  
  - Criar **triggers** para auditoria e validação de dados.  
  - Implementar **transações** para controlar alterações e consistência.  
- Entregáveis:  
  - Scripts de triggers.  
  - Scripts de transações.  
  - Logs de auditoria.  

### Semana 10: Segurança (DCL)
- **Foco**: Definir a estratégia de segurança no banco de dados.  
- Atividades:  
  - Criar logins, usuários e perfis com diferentes níveis de acesso.  
  - Definir permissões de acesso conforme perfil.  
- Entregáveis:  
  - Scripts de criação de usuários e logins.  
  - Documentação de perfis e permissões.  
  - Testes de acesso e restrições.

## Fase 4 :triangular_flag_on_post: : Finalização e Entrega (Semanas 11-13)

### Semana 11: Documentação e (Opcional) Dashboard
- **Foco**: Consolidar a documentação e iniciar a camada de visualização.  
- Atividades:  
  - Finalizar a documentação técnica do projeto (modelagem, ETL, consultas e análises).  
  - Iniciar a criação de um **dashboard de BI** (opcional) para visualização dos principais indicadores.  
- Entregáveis:  
  - Documentação completa.  
  - Dashboard inicial (se implementado).  

### Semana 12: Preparação da Entrega Final
- **Foco**: Organizar os materiais de entrega e comunicação.  
- Atividades:  
  - Gravar o **vídeo de demonstração** do projeto.  
  - Preparar a **apresentação final** (slides, roteiro e exemplos de análises).  
- Entregáveis:  
  - Vídeo de demonstração.  
  - Slides da apresentação final.  

### Semana 13: Apresentação Final
- **Foco**: Realizar a defesa do projeto e apresentar os resultados.  
- Atividades:  
  - Apresentar o processo de ETL, as consultas e os insights extraídos.  
  - Responder às perguntas e coletar feedback.  
- Entregáveis:  
  - Apresentação realizada.  
  - Feedback documentado.  
  - Relatório final de insights.



