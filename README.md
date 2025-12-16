# Git – Módulo 1 | Fundamentos de Versionamento e CI

Repositório criado como parte de um estudo prático sobre **Versionamento de Código com Git**, **GitHub Flow**, **Branches**, **Pull Requests** e **Integração Contínua (CI)** utilizando **GitHub Actions**.

Este projeto tem caráter educacional e simula práticas reais adotadas em ambientes profissionais de desenvolvimento e DevOps.

---

## 1. Objetivo do Projeto

Demonstrar, na prática, a aplicação de conceitos fundamentais de Git e DevOps, incluindo:

* Estruturação de um repositório seguindo boas práticas
* Criação e gerenciamento de branches
* Commits limpos, pequenos e semânticos
* Pull Requests revisáveis e protegidos
* Integração Contínua por meio de pipelines automatizados

---

## 2. Estrutura do Repositório

```text
.
├── docs/                   # Documentação do projeto
│   └── arquitetura.md      # Arquitetura lógica inicial
├── .github/workflows/      # Pipelines de CI (GitHub Actions)
│   └── ci-validacoes.yml   # Pipeline de validações (lint, tests, build)
├── scripts/                # Scripts auxiliares
│   └── setup.sh            # Script de inicialização
├── src/                    # Código-fonte (exemplo em Python)
├── README.md               # Documentação principal do projeto
```

---

## 3. Fluxo de Trabalho Utilizado (GitHub Flow)

O projeto segue o **GitHub Flow**, amplamente utilizado em equipes profissionais:

1. Criar uma branch a partir da `main`
2. Desenvolver a feature ou melhoria
3. Commitar alterações de forma incremental
4. Realizar push para o GitHub
5. Abrir um Pull Request
6. Aguardar validações automáticas e revisão
7. Realizar o merge na `main`

Esse fluxo facilita colaboração, revisão de código e garantia de qualidade.

---

## 4. Integração Contínua (CI) – GitHub Actions

O repositório possui uma pipeline de **Integração Contínua** configurada em:

```
.github/workflows/ci-validacoes.yml
```

### Etapas atuais do pipeline

* Lint de código (flake8)
* Execução de testes unitários
* Build de imagem Docker (validação)

### Características

* Execução automática em Pull Requests e na branch `main`
* Ambiente Linux (Ubuntu)
* Bloqueio de merge caso algum job falhe

### Evoluções planejadas

* Análise de segurança
* Cobertura de testes
* Publicação de artefatos

---

## 5. Testes Automatizados

O projeto utiliza **Python** com testes unitários baseados em `unittest`.

### Executar testes localmente

```bash
python -m unittest discover -s src
```

---

## 6. Scripts Automatizados

Na pasta `scripts/` existe o script:

* `setup.sh`

Esse script simula um fluxo inicial de automação, exibindo mensagens e preparando o ambiente. Ele serve como base para futuras automações DevOps.

---

## 7. Como Executar o Projeto

### 1. Clonar o repositório

```bash
git clone https://github.com/danielviana2127/git-modulo1
```

### 2. Acessar o diretório

```bash
cd git-modulo1
```

### 3. Executar o script de setup

```bash
chmod +x scripts/setup.sh
./scripts/setup.sh
```

---

## 8. Próximos Passos Planejados

* Adicionar mais testes unitários
* Evoluir regras de lint
* Implementar Conventional Commits
* Automatizar versionamento (SemVer)
* Adicionar diagramas avançados em `docs/`
* Expandir a pipeline de CI para um fluxo DevOps completo

---

## 9. Autor

**Daniel Viana**
Estudante de DevOps e Automação

---

> Este repositório é um projeto de estudo e evolução contínua, refletindo boas práticas utilizadas no mercado profissional.

