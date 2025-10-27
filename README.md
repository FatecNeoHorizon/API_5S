# <p align = "center"> Neo Horizon - API 5º Semestre - BD 2025
<!-- <img scr="./" alt="Logotipo da equipe" width="40%"> -->

<p align="center">
  <a href="#anger-problema">Problema</a> •
  <a href="#dart-objetivo-do-projeto">Objetivo do Projeto</a> •
  <a href="#requisitos-funcionais-e-nao-funcionais">Requisitos Funcionais e Não Funcionais</a> •
  <a href="#date-backlog-do-produto">Product Backlog</a> •
  <a href="#date-sprint-backlog">Sprint Backlog</a> •
  <a href="#cronograma">Cronograma</a> •
  <a href="#mortar_board-integrantes-da-equipe">Integrantes da Equipe</a> •
  <a href="#tecnologias-utilizadas">Tecnologias Utilizadas</a>

</p>

## :anger: Problema <a id="problema"></a>

A Necto, empresa de desenvolvimento de softwares, busca aprimorar a gestão de seus projetos, que atualmente é realizada na plataforma Jira. O principal desafio enfrentado é a falta de visibilidade sobre indicadores, o que dificulta o acompanhamento do progresso e a tomada de decisões estratégicas.

Destaca-se como uma deficiência a falta de um dashboard centralizado para o monitoramento de dados críticos, comprometendo assim a eficiência e a transparência na gestão de projetos. Outro ponto crucial é a necessidade de um controle de acesso mais detalhado, o qual impede uma gestão mais segura e alinhada às responsabilidades de cada nível hierárquico.

## :dart: Objetivo do Projeto

Desenvolver uma aplicação web de inteligência de negócios para gestão de projetos, integrada à base de dados do Jira. Essa ferramenta será um painel de controle centralizado, fornecendo uma visão clara do desempenho dos projetos.

O objetivo da solução é transformar dados brutos em informações estratégicas, capacitando os usuários na tomada de decisões de forma ágil e assertiva.


## Requisitos Funcionais e Não Funcionai<a id="requisitos-funcionais-e-nao-funcionais"></a>
<details>

<summary>Mostrar Requisitos Funcionais, Não Funcionais e Documentação</summary>

### Requisitos Funcionais

| ID | Requisito | Descrição |
|:---|:---|:---|
| **NH-RF-001** | *Painel de Carga de Trabalho Individual* | O sistema deve exibir para o usuário logado uma visão de todos os cards atribuídos a ele, agrupados por projeto. O usuário deve ser capaz de ver a quantidade de cards em cada status, facilitando o acompanhamento do seu progresso pessoal em cada projeto. 
| **NH-RF-002** | *Relatório de Desempenho do Time* | O sistema deverá permitir que um Líder de Equipe visualize a carga de trabalho de seu time. O relatório deverá exibir o número de cards atribuídos a cada membro e a quantidade de horas utilizadas por eles, com a possibilidade de filtrar por projeto. |
| **NH-RF-003** | *Painel de Visão Geral do Projeto e Custos* | O sistema deverá exibir para usuários com nível de acesso de "Gerente de Projeto" um painel com a quantidade total de cards por status para um projeto selecionado. O sistema também deverá exibir o tempo médio de ciclo (tempo entre criação e finalização) para as tarefas do projeto, além dos custos do projeto. |
| **NH-RF-004** | *Relatório de Atividades por Período* | O sistema deverá apresentar um relatório consolidado que exibe a quantidade de cards criados, movidos ou concluídos em períodos pré-definidos (dia, semana, mês ou ano). A visualização deverá permitir a quebra das atividades por desenvolvedor e por projeto. |
| **NH-RF-005** | *Identificação de Bugs e Retrabalhos* | O sistema deverá identificar e contabilizar a quantidade de cards do tipo "bug". Um relatório com o total de bugs por projeto e por desenvolvedor deverá ser visível para gestores. |
| **NH-RF-006** | *Sistema de Controle de Acesso* | O sistema deverá implementar três níveis de permissão (Membro de Equipe, Líder de Equipe e Gerente de Projeto) que limitam a visualização dos dados. As permissões deverão ser aplicadas em todos os painéis e relatórios, garantindo que cada usuário visualize apenas as informações pertinentes às suas responsabilidades e aos projetos que ele gerencia. |
| **NH-RF-007** | Relatório de Horas por Módulo | O sistema deverá disponibilizar um relatório que apresente a quantidade de horas registradas nos módulos Épico, Produto e Entregável. O objetivo é permitir que o usuário tenha acesso a essas informações de forma clara e organizada, apoiando a análise de esforço e acompanhamento do progresso dos projetos. |

### Requisitos Não Funcionais

| ID | Requisito | Descrição |
|:---|:---|:---|
| **NH-RNF-001** | *Documentação Técnica* | A API desenvolvida para se conectar com o Jira deverá ser documentada de forma clara, utilizando ferramentas padrão da indústria, como o Swagger. A documentação deve incluir os endpoints, métodos, parâmetros e exemplos de requisições. |
| **NH-RNF-002** | *Usabilidade* | A interface do usuário deve ser intuitiva e limpa, garantindo uma boa experiência de uso para todos os perfis (Membro de Equipe, Líder e Gerente). |
| **NH-RNF-003** | *Modelagem do Banco de Dados* | O sistema deverá contar com uma modelagem de banco de dados relacional otimizada, garantindo integridade referencial, desempenho nas consultas e escalabilidade. A modelagem deverá considerar normalização, chaves estrangeiras, índices e histórico de movimentações dos cards para o cálculo de indicadores como tempo de execução e retrabalho. |

</details>

## :date: Backlog do Produto <a id="date-backlog-do-produto"></a>
<details>

<summary>Mostrar Backlog do Produto</summary>

<br>

| ID | Rank | Prioridade | User Story | Sprint | Requisitos Relacionados |
|:---|:---|:---|:---|:---|:---|
| **NH-US-001** | 1 | Alta | Como Gerente de Projeto, desejo visualizar todas as métricas disponibilizadas em cards, para acompanhar de forma prática os dados e indicadores de desempenho do projeto. | 1 | **NH-RF-004** |
| **NH-US-002** | 2 | Alta | Como Gerente de Projeto, desejo visualizar a quantidade de cards para que eu tenha uma visão estratégica do projeto. | 1 | **NH-RF-003** |
| **NH-US-003** | 3 | Alta | Como Gerente de Projeto, desejo analisar os custos consolidados dos projetos, para controlar melhor os recursos e alinhar os investimentos com os objetivos estratégicos da empresa. | 1 | **NH-RF-003** |
| **NH-US-004** | 4 | Alta | Como Gerente de Projeto, preciso ter visibilidade sobre o tempo gasto de ciclo das tarefas, para avaliar a eficiência das entregas e apoiar a tomada de decisões de melhoria no processo. | 1 | **NH-RF-003** |
| **NH-US-005** | 5 | Média |Como Gerente de Projeto, desejo visualizar a quantidade de horas utilizadas por cada desenvolvedor, detalhadas por atividade e por dia, para acompanhar a distribuição do esforço da equipe e identificar oportunidades de otimização na alocação de recursos. | 2 | **NH-RF-002** |
| **NH-US-006** | 6 | Média | Como Gerente de Projeto, desejo filtrar os dados exibidos por projeto. | 2 | **NH-RF-001** |
| **NH-US-007** | 7 | Média | Como Líder de Equipe, desejo visualizar a carga de trabalho do meu time (número de cards e horas por membro), para que eu possa acompanhar o desempenho da equipe. | 2 | NH-RF-002 |
| **NH-US-008** | 8 | Baixa | Como usuário, desejo realizar autenticação com meu usuário e senha, para garantir segurança aos dados sensíveis. | 3 | **NH-RF-006** |
| **NH-US-009** | 9 | Baixa | Como usuário, quero acessar um relatório com as métricas dos cards do tipo bug, permitindo identificar e acompanhar os retrabalhos nos projetos. | 3 | **NH-RF-005**, **NH-RF-007** |
| **NH-US-010** | 10 | Baixa | Como Gerente de Projeto, quero acompanhar a distribuição dos cards por status (em andamento, concluídos, pendentes etc.), a fim de monitorar o progresso e identificar possíveis gargalos no fluxo de trabalho. | 3 | **NH-RF-006** |

</details>

## :date: Sprint Backlog <a id="date-sprint-backlog"></a>
<details>

<summary>Mostrar Spring Backlog</summary>

### Sprint 1

| ID | Rank | Prioridade na Sprint | User Story | Requisitos Relacionados |
|:---|:---|:---|:---|:---|
| **NH-US-001** | 1 | Alta | Como Gerente de Projeto, desejo visualizar todas as métricas disponibilizadas em cards, para acompanhar de forma prática os dados e indicadores de desempenho do projeto. | **NH-RF-004** |
| **NH-US-002** | 2 | Média | Como Gerente de Projeto, desejo visualizar a quantidade de cards para que eu tenha uma visão estratégica do projeto. | **NH-RF-003** |
| **NH-US-003** | 3 | Média | Como Gerente de Projeto, desejo analisar os custos consolidados dos projetos, para controlar melhor os recursos e alinhar os investimentos com os objetivos estratégicos da empresa. | **NH-RF-003** |
| **NH-US-004** | 4 | Média | Como Gerente de Projeto, preciso ter visibilidade sobre o tempo gasto de ciclo das tarefas, para avaliar a eficiência das entregas e apoiar a tomada de decisões de melhoria no processo. | **NH-RF-003** |

### Sprint 2</summary>

| ID | Rank | Prioridade na Sprint | User Story | Requisitos Relacionados |
|:---|:---|:---|:---|:---|
| **NH-US-005** | 5 | Alta |Como Gerente de Projeto, desejo visualizar a quantidade de horas utilizadas por cada desenvolvedor, detalhadas por atividade e por dia, para acompanhar a distribuição do esforço da equipe e identificar oportunidades de otimização na alocação de recursos. | **NH-RF-002** |
| **NH-US-006** | 6 | Alta | Como Gerente de Projeto, desejo filtrar os dados exibidos por projeto. | **NH-RF-001** |
| **NH-US-007** | 7 | Alta | Como Líder de Equipe, desejo visualizar a carga de trabalho do meu time (número de cards e horas por membro), para que eu possa acompanhar o desempenho da equipe. | **NH-RF-002** |

### Sprint 3

| ID | Rank | Prioridade na Sprint | User Story | Requisitos Relacionados |
|:---|:---|:---|:---|:---|
| **NH-US-008** | 8 | Alta | Como usuário, desejo realizar autenticação com meu usuário e senha, para garantir segurança aos dados sensíveis. | **NH-RF-006** |
| **NH-US-009** | 9 | Alta | Como usuário, quero acessar um relatório com as métricas dos cards do tipo bug, permitindo identificar e acompanhar os retrabalhos nos projetos. | **NH-RF-005** |
| **NH-US-010** | 10 | Alta | Como Gerente de Projeto, quero acompanhar a distribuição dos cards por status (em andamento, concluídos, pendentes etc.), a fim de monitorar o progresso e identificar possíveis gargalos no fluxo de trabalho. | **NH-RF-006** |

</details>

<br>

## :calendar: <a id="cronograma"> Cronograma 📅 </a>

| Sprint  | Nome | Data inicio  | Data Fim | Status |
| --- | -------------------------- | --------| ----- | --- |
| --  | KickOff                    | 25/08   | 29/08 |  X  |
|  1  | Sprint 1                   | 08/09   | 28/09 |  X  |
|  2  | Sprint review / Planning   | 29/09   | 03/10 |  X  |
|  3  | Sprint 2                   | 06/10   | 26/10 |  X  |
|  4  | Sprint review / Planning   | 27/10   | 31/10 |     |
|  5  | Sprint 3                   | 03/11   | 23/11 |     |
|  6  | Sprint review              | 24/11   | 28/11 |     |
|  7  | Feira de Soluções          | 04/12   |       |     |

<br>

## :mortar_board: Integrantes da Equipe:

| *Nome*                   | *Função*            | *LinkedIn*                                                  |
|:------------------:|:-----------------:|:----------------------------------------------------------:|
| Elbert Jean        | Product Owner     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](http://www.linkedin.com/in/elbertjean/) |
| Gabriel Souza      | Scrum Master  | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](http://www.linkedin.com/in/gabriel-alves-de-souza-5b7747267/) |
| Alexandre Jonas | Developer     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](http://www.linkedin.com/in/alexandre-jonas-de-souza-fonseca-989920181/) |
| César Truyts       | Developer | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](http://www.linkedin.com/in/cesar-augusto-anselmo-pelogia-truyts-94a08a268/) |
| Eliézer Lopes     | Developer     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/eli%C3%A9zer-lopes/) |
| Gustavo Robert     | Developer     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](http://www.linkedin.com/in/gustavo-robert/) |
| Pablo Henrique     | Developer     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](http://www.linkedin.com/in/pablo-henrique05) |
| Vitor Morais       | Developer     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](http://www.linkedin.com/in/vitor-faria-morais-330b19204/) |

</br>

## Tecnologias Utilizadas

<img src="docs/images/ferramentas.png" alt="API 5 SEMESTRE">
