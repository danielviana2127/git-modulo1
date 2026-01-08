# Arquitetura do Projeto

Este documento descreve a arquitetura, a estrutura de pastas e as decisões técnicas adotadas no projeto **git-modulo1**.

---

## 🎯 Objetivo da Arquitetura

O objetivo desta arquitetura é servir como um **projeto educacional** para demonstrar boas práticas iniciais em:

* Estruturação de projetos Python
* Integração Contínua (CI) com GitHub Actions
* Qualidade de código (lint e testes)
* Containerização com Docker

A arquitetura foi mantida **simples, clara e escalável**, facilitando a evolução futura do projeto.

---

## 📁 Estrutura de Pastas

```
git-modulo1/
├── .github/workflows/        # Pipelines de CI (GitHub Actions)
├── docs/                     # Documentação do projeto
│   └── arquitetura.md        # Documento de arquitetura
├── pipelines/                # Exemplos de pipelines (educacional)
├── scripts/                  # Scripts auxiliares
│   └── setup.sh              # Script de preparação do ambiente
├── src/                      # Código-fonte da aplicação
│   ├── app.py                # Código principal
│   └── test_app.py           # Testes unitários
├── Dockerfile                # Definição da imagem Docker
├── .dockerignore             # Arquivos ignorados no build Docker
├── requirements.txt          # Dependências de runtime
├── requirements-dev.txt      # Dependências de desenvolvimento
├── .flake8                   # Configuração do linter
└── README.md                 # Documentação principal
```

---

## 🧱 Componentes Principais

### 🔹 Aplicação Python

* Implementada utilizando apenas a **biblioteca padrão do Python**
* Função simples (`somar`) para fins didáticos
* Testes unitários com `unittest`

### 🔹 Qualidade de Código

* **Flake8** para lint e padronização
* Configuração centralizada no arquivo `.flake8`

### 🔹 Integração Contínua (CI)

* Pipeline com múltiplos jobs:

  * Lint
  * Testes
  * Build Docker
* Execução automática em `push` e `pull request`
* Garantia de qualidade antes de qualquer build

### 🔹 Containerização

* Dockerfile simples e objetivo
* Build da aplicação isolado
* Execução automática dos testes no container

---

## ⚙️ Decisões Técnicas

* **Separação de dependências**:

  * `requirements.txt` → runtime
  * `requirements-dev.txt` → desenvolvimento

* **CI antes do Docker**:

  * O build Docker só ocorre se lint e testes passarem

* **Arquitetura simples propositalmente**:

  * Foco em fundamentos DevOps
  * Fácil entendimento para iniciantes

---

## 🚀 Evoluções Futuras Possíveis

* Adicionar cobertura de testes (coverage)
* Publicar imagem Docker em registry
* Adicionar análise de segurança (SAST)
* Evoluir para arquitetura com múltiplos serviços

---

## 📌 Conclusão

Esta arquitetura fornece uma base sólida para estudos iniciais em **DevOps, CI/CD e Python**, equilibrando simplicidade e boas práticas profissionais.
