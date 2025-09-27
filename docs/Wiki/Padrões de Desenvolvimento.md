# Padrões de Desenvolvimento – Equipe Neo Horizon

## Objetivo
Estabelecer boas práticas para a padronização de **commits** e **Merge Requests/Pull Requests (MRs/PRs)**, garantindo **clareza**, **rastreabilidade** e **consistência** do histórico do projeto.

---

## 1. Padrões de Commit

### 1.1 Estrutura do Commit

O padrão segue a estrutura: `<REF-US><tipo>(#ID-DA-ISSUE): <Mensagem>`

**Exemplo simples**
```plaintext
SCRUM-123<tipo>(#id-da-issue): Adiciona classe de exemplo
```

**Exemplo completo**
```plaintext
SCRUM-123<tipo>(#id-da-issue): Adiciona classe de exemplo
- Adiciona método x para ação y
- Adiciona método y para ação x
```

### 1.2 Diretrizes de Commit

- Use sempre **letras maiúsculas** ao referenciar o ID da *User Story* (ex: **SCRUM-123**).
- Use **linguagem no imperativo** no cabeçalho do *commit* (ex: "**Adiciona**", "**Corrige**").
- Associe o *commit* a uma *issue* existente **(#id)**.
- Faça **commits atômicos** (uma única alteração ou propósito por commit).
- Escreva a mensagem de commit em **Português Brasileiro**.
- **Corpo do Commit (Opcional):** Use-o para detalhar o **contexto** e o **porquê** da alteração.

#### Tipos de Commit Aceitáveis (*Conventional Commits*)

| Tipo       | Descrição                                             |
|:-----------|:-----------------------------------------------------|
| `feat`     | Nova funcionalidade.                                 |
| `fix`      | Correção de bug.                                     | 
| `docs`     | Alterações na documentação.                          |
| `refactor` | Refatoração de código sem mudança de comportamento.  |
| `style`    | Estilo/formatação de código.                         |
| `test`     | Adição ou alteração de testes.                       |
| `chore`    | Configuração/manutenção de builds ou ferramentas.    |
| `cleanup`  | Remoção de código comentado/não utilizado.           |
| `remove`   | Exclusão de arquivos ou funcionalidades.             |
| `ci`       | Alterações em configurações de Integração Contínua.  |

---

## 2. Nomeclatura de Branches

Padronizar a nomenclatura das branches visa a consistência e rastreabilidade.

| Tipo         | Uso                                       |
|:-------------|:------------------------------------------|
| `feat/`      | Desenvolvimento de novas funcionalidades. |
| `bugfix/`    | Correções de bugs de rotina.              |
| `hotfix/`    | Correções urgentes (branch principal).    |
| `refactor/`  | Refatoração de código.                    |

**Estrutura padrão:**
```plaintext
<tipo>/(#ID-DA-ISSUE)-titulo-da-issue
```

**Exemplo:**
```plaintext
feat/99-Desenvelver-novo-metodo
```

---

## 3. Pre-Commit

### Objetivo
Garantir que as mensagens de commit e alterações no código sigam os padrões definidos antes de serem enviadas ao repositório.

### Requisitos
- Git
- Python
- Pip

### Instalação

1. Instale o Pre-Commit via Pip:
    ```bash
    pip install pre-commit
    ```
2. Ative os hooks definidos no arquivo `.pre-commit-config.yaml` presente na raiz do projeto:
    ```bash
    pre-commit install --hook-type commit-msg
    ```

---

## 4. Revisão de Código (Code Review)

### Objetivo
Garantir a qualidade do código através de revisões colaborativas e feedback construtivo.

### Exemplo de Pull Request

```plaintext
SCRUM-123-fix(login): Corrige bug de validação de email
```

### Checklist obrigatório

- [ ] Código funciona conforme o esperado.
- [ ] Testes foram adicionados ou atualizados.
- [ ] Documentação foi atualizada (quando aplicável).

### Diretrizes

- Criar PRs com **descrições claras e detalhadas**.
- Revisar o código com foco em **melhorias e conformidade com padrões**.
- Fornecer **feedback construtivo e objetivo**.
- Todo PR deve ser **revisado e aprovado por pelo menos um desenvolvedor** antes do merge.
- Opcional: Inserir o GitHub Copilot como revisador adicional (não exclui a necessidade de revisão humana).

---

## 5. Definition of Done (DoD)

### Objetivo
Definir os critérios que devem ser atendidos para considerar uma tarefa concluída.

### Critérios

- ✅ Código implementado e revisado por outro desenvolvedor.
- ✅ Funcionalidade testada e atende aos critérios de aceitação.
- ✅ Testes automatizados (quando aplicável) foram criados e passaram.
- ✅ Interface validada conforme requisitos de design.
- ✅ Documentação atualizada (API, manual do usuário, etc.).
- ✅ Código integrado ao repositório principal sem conflitos.
- ✅ Funcionalidade homologada pelo time ou Product Owner.

---

## 6. Definition of Ready (DoR)

### Objetivo
Definir os critérios que devem ser atendidos para considerar uma tarefa pronta para ser trabalhada.

### Critérios

- ✅ Descrição clara e objetiva da tarefa.
- ✅ Critérios de aceitação definidos.
- ✅ Dependências identificadas.
- ✅ Priorizada no backlog.
- ✅ Requisitos técnicos documentados.

---