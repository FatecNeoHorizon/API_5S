# Documento Mestre de Rastreabilidade (RTM) - Projeto Neo Horizon (NH)

**Versão:** 1.0
**Data:** 2025-10-18
**Responsável:** @cesarpelogia / @ElbertJean

## 1. Escala de Rastreabilidade

| Prefixos | Descrição do Artefato |
| :---: | :--- |
| **NH-RF-** | Requisito Funcional (O que o sistema FAZ) |
| **NH-RNF-** | Requisito Não Funcional (Como o sistema DEVE SER) |
| **NH-US-** | User Story / Card (Item de Backlog) |

---

## 2. Matriz de Rastreabilidade Central (RFs, RNFs e Docs)

Esta matriz demonstra a rastreabilidade bidirecional dos Requisitos e Documentação com as User Stories.

### Requisitos Funcionais (RFs) 

| ID | Requisito (NH-RF) | User Stories Associadas (NH-US) |
| :---: | :--- | :---: |
| **NH-RF-001** | O sistema deve ter um painel que mostre os cards atribuídos ao usuário, agrupados por projeto e com status. | **NH-US-006** |
| **NH-RF-002** | O sistema deve permitir que um Líder de Equipe visualize a carga de trabalho do time, com cards e horas por membro, filtrados por projeto. | **NH-US-005** / **NH-US-007**  |
| **NH-RF-003** | O sistema deve ter um painel para "Gerente de Projeto" com cards por status, tempo médio de ciclo e custos do projeto. | **NH-US-002** / **NH-US-003** / **NH-US-004** |
| **NH-RF-004** | O sistema deve exibir um relatório de cards por período, desenvolvedor e projeto. | **NH-US-001** |
| **NH-RF-005** | O sistema deve exibir um relatório de horas por desenvolvedor, atividade e dia. | **NH-US-009** |
| **NH-RF-006** | O sistema deve ter três níveis de permissão (Membro de Equipe, Líder de Equipe e Gerente de Projeto) para limitar o acesso aos dados. | **NH-US-010** |
| **NH-RF-007** | O sistema deve disponibilizar um relatório com a quantidade de horas registradas nos módulos Épico, Produto e Entregável. | **NH-US-009**  |

### Requisitos Não Funcionais (RNFs)

| ID | Requisito (NH-RNF) | User Stories Associadas (NH-US) |
| :---: | :--- | :--- |
| **NH-RNF-001** | A API deve incluir documentação clara com Swagger, detalhando endpoints, métodos, parâmetros e exemplos. | **NH-US-001** |
| **NH-RNF-002** | A interface deve ser intuitiva e limpa, proporcionando uma boa experiência para todos os perfis de usuário. | **NH-US-001** |
| **NH-RNF-003** | Modelagem relacional otimizada com integridade, desempenho e escalabilidade, usando normalização, FKs, índices e histórico de movimentações dos cards. | **NH-US-001** |

---

## 3. Rastreabilidade Detalhada

### 3.1 Épicos

### Painéis e Métricas de Gestão Estratégica

Fornecer painéis e relatórios consolidados para a tomada de decisões financeiras e operacionais, focando na performance do projeto em geral.

### Gestão de Pessoas e Carga de Trabalho

Oferecer ferramentas para que os membros da equipe e líderes monitorem o esforço individual, a alocação de tempo e a carga de trabalho, identificando oportunidades de otimização de recursos.

### Segurança e Qualidade (Retrabalho)

Implementar o controle de acesso por hierarquia e fornecer um mecanismo para que os gestores monitorem a qualidade do código e os retrabalhos gerados (bugs).

<br>

### 3.2 User Stories

### Sprint 1

### User Story: NH-US-001

- **Título:** Como Gerente de Projeto, desejo visualizar todas as métricas disponibilizadas em cards, para acompanhar de forma prática os dados e indicadores de desempenho do projeto. 
- **Sprint:** 1
- **Requisito(s) Base:** NH-RF-004

### User Story: NH-US-002

- **Título:** Como Gerente de Projeto, desejo visualizar a quantidade de cards para que eu tenha uma visão estratégica do projeto. 
- **Sprint:** 1
- **Requisito(s) Base:** NH-RF-003

### User Story: NH-US-003

- **Título:** Como Gerente de Projeto, desejo analisar os custos consolidados dos projetos, para controlar melhor os recursos e alinhar os investimentos com os objetivos estratégicos da empresa.
- **Sprint:** 1
- **Requisito(s) Base:** NH-RF-003

### User Story: NH-US-004

- **Título:** Como Gerente de Projeto, preciso ter visibilidade sobre o tempo gasto de ciclo das tarefas, para avaliar a eficiência das entregas e apoiar a tomada de decisões de melhoria no processo.
- **Sprint:** 1
- **Requisito(s) Base:** NH-RF-003

<br>

### Sprint 2

### User Story: NH-US-005

- **Título:** Como Gerente de Projeto, desejo visualizar a quantidade de horas utilizadas por cada desenvolvedor, detalhadas por atividade e por dia, para acompanhar a distribuição do esforço da equipe e identificar oportunidades de otimização na alocação de recursos.
- **Sprint:** 2
- **Requisito(s) Base:** NH-RF-002

### User Story: NH-US-006

- **Título:** Como Gerente de Projeto, desejo filtrar os dados exibidos por projeto.
- **Sprint:** 2
- **Requisito(s) Base:** NH-RF-001

### User Story: NH-US-007

- **Título:** Como Líder de Equipe, desejo visualizar a carga de trabalho do meu time (número de cards e horas por membro), para que eu possa acompanhar o desempenho da equipe.
- **Sprint:** 2
- **Requisito(s) Base:** NH-RF-002

<br>

### Sprint 3

### User Story: NH-US-008

- **Título:** Como usuário, desejo realizar autenticação com meu usuário e senha, para garantir segurança aos dados sensíveis.
- **Sprint:** 3
- **Requisito(s) Base:** NH-RF-006

### User Story: NH-US-009

- **Título:** Como usuário, quero acessar um relatório com as métricas dos cards do tipo bug, permitindo identificar e acompanhar os retrabalhos nos projetos.
- **Sprint:** 3
- **Requisito(s) Base:** NH-US-005

### User Story: NH-US-010

- **Título:** Como Gerente de Projeto, quero acompanhar a distribuição dos cards por status (em andamento, concluídos, pendentes etc.), a fim de monitorar o progresso e identificar possíveis gargalos no fluxo de trabalho.
- **Sprint:** 3
- **Requisito(s) Base:** NH-RF-006

---