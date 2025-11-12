# Requisitos Funcionais e Não Funcionais

Este documento reúne os Requisitos Funcionais (RF) e Requisitos Não Funcionais (RNF) do Projeto Neo Horizon. As seções abaixo foram criadas para melhorar a leitura e facilitar referência cruzada.

## Legenda

| Prefixo | Descrição do artefato |
|---|---|
| `NH-RF-` | Requisito Funcional (o que o sistema FAZ) |
| `NH-RNF-` | Requisito Não Funcional (como o sistema DEVE SER) |

## Requisitos Funcionais (RFs)

| ID | Requisito | Descrição |
|---|---|---|
| `NH-RF-001` | Painel de Carga de Trabalho Individual | O sistema deve exibir para o usuário logado uma visão de todos os cards atribuídos a ele, agrupados por projeto. O usuário deve ser capaz de ver a quantidade de cards em cada status, facilitando o acompanhamento do seu progresso pessoal em cada projeto. |
| `NH-RF-002` | Relatório de Desempenho do Time | O sistema deverá permitir que um Líder de Equipe visualize a carga de trabalho de seu time. O relatório deverá exibir o número de cards atribuídos a cada membro e a quantidade de horas utilizadas por eles, com a possibilidade de filtrar por projeto. |
| `NH-RF-003` | Painel de Visão Geral do Projeto e Custos | O sistema deverá exibir para usuários com nível de acesso de "Gerente de Projeto" um painel com a quantidade total de cards por status para um projeto selecionado. O sistema também deverá exibir o tempo médio de ciclo (tempo entre criação e finalização) para as tarefas do projeto, além dos custos do projeto. |
| `NH-RF-004` | Relatório de Atividades por Período | O sistema deverá apresentar um relatório consolidado que exibe a quantidade de cards criados, movidos ou concluídos em períodos pré-definidos (dia, semana, mês ou ano). A visualização deverá permitir a quebra das atividades por desenvolvedor e por projeto. |
| `NH-RF-005` | Identificação de Bugs e Retrabalhos | O sistema deverá identificar e contabilizar a quantidade de cards do tipo "bug". Um relatório com o total de bugs por projeto e por desenvolvedor deverá ser visível para gestores. |
| `NH-RF-006` | Sistema de Controle de Acesso | O sistema deverá implementar três níveis de permissão (Membro de Equipe, Líder de Equipe e Gerente de Projeto) que limitam a visualização dos dados. As permissões deverão ser aplicadas em todos os painéis e relatórios, garantindo que cada usuário visualize apenas as informações pertinentes às suas responsabilidades e aos projetos que ele gerencia. |
| `NH-RF-007` | Relatório de Horas por Módulo | O sistema deverá disponibilizar um relatório que apresente a quantidade de horas registradas nos módulos Épico, Produto e Entregável. O objetivo é permitir que o usuário tenha acesso a essas informações de forma clara e organizada, apoiando a análise de esforço e acompanhamento do progresso dos projetos. |

## Requisitos Não Funcionais (RNFs)

| ID | Requisito | Descrição |
|---|---|---|
| `NH-RNF-001` | Documentação Técnica | A API desenvolvida para se conectar com o Jira deverá ser documentada de forma clara, utilizando ferramentas padrão da indústria, como o Swagger. A documentação deve incluir os endpoints, métodos, parâmetros e exemplos de requisições. |
| `NH-RNF-002` | Usabilidade | A interface do usuário deve ser intuitiva e limpa, garantindo uma boa experiência de uso para todos os perfis (Membro de Equipe, Líder e Gerente). |
| `NH-RNF-003` | Modelagem do Banco de Dados | O sistema deverá contar com uma modelagem de banco de dados relacional otimizada, garantindo integridade referencial, desempenho nas consultas e escalabilidade. A modelagem deverá considerar normalização, chaves estrangeiras, índices e histórico de movimentações dos cards para o cálculo de indicadores como tempo de execução e retrabalho. |