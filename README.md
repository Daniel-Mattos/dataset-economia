# dataset-economia 
## Projeto final: Engenharia e Análise de dados com T-SQL. Os dados utilizados de geolocalização e econômicos de todas as cidades do Brasil. Todos os dados foram extraídos do site do IBGE com webscraping.

## Planner:

### Semana 1: Kick-off e Análise Exploratória
- **Tema**: Quais os fatores mais comuns que geram ineficiência ou atraso em projetos governamentais.
- Levantamento de datasets com base em dados do IBGE
- Criação do repositório no GitHub e organização do Planner de tarefas. .

### Semana 2: Requisitos e Plano de Análise
- **Foco**: Criação de um modelo logico pensando em cada uma das entidades presentes no dataset.
- Levantamento de questionamentos sobre o data base:
    - Projetos atrasam mais por falhas de orçamento ou por problemas de gestão?  
    - Existe relação entre região/estado e maiores índices de atraso? 

### Semana 3: Modelagem Física
- **Foco**: Implementação do modelo fisico no SQL Server
- Definição de dados, constraints(chave primarias, estrangeiras, unique)

## Fase 2: Estruturação, ETL e Carga (Semanas 4-6)

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

## Fase 3: Otimização e Análise (Semanas 7-10)

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

## Fase 4: Finalização e Entrega (Semanas 11-13)

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

https://www.kaggle.com/datasets/gabrielrs3/economy-and-population-of-cities-in-brazil-ibge
https://www.kaggle.com/datasets/inquisitivecrow/crime-data-in-brazil
https://www.kaggle.com/datasets/bushraqurban/global-urbanization-and-climate-metrics
