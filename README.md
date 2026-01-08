# Módulo 1 — Controle de Versão com Git

Este repositório faz parte do meu **plano de estudos em DevOps** e representa o **Módulo 1**, focado em **controle de versão com Git**, boas práticas e primeiros passos em automação.

Embora o foco inicial seja Git, o projeto foi **evoluído propositalmente** para incluir conceitos reais de mercado, como CI, testes e Docker, tornando-o mais completo e profissional.

---

## 🎯 Objetivo do Projeto

* Aprender e praticar os **fundamentos do Git**
* Utilizar versionamento de forma organizada
* Trabalhar com repositório remoto no GitHub
* Aplicar boas práticas desde o início
* Introduzir conceitos básicos de **DevOps**

---

## 📌 Conceitos Abordados

### Git e Versionamento

* O que é Git e por que usar controle de versão
* Repositório local vs repositório remoto
* Commits e histórico de alterações
* Estados dos arquivos:

  * Untracked
  * Modified
  * Staged
  * Committed
* Branch principal (`main`)
* Fluxo básico de trabalho com Git

### DevOps (Introdução)

* Integração Contínua (CI)
* Qualidade de código (lint)
* Testes automatizados
* Containerização com Docker

---

## 🧱 Estrutura do Projeto

```
git-modulo1/
├── .github/workflows/        # Pipelines de CI (GitHub Actions)
├── docs/                     # Documentação técnica
│   └── arquitetura.md        # Arquitetura do projeto
├── pipelines/                # Exemplos educacionais de pipelines
├── scripts/                  # Scripts auxiliares
├── src/                      # Código-fonte e testes
├── Dockerfile                # Definição da imagem Docker
├── .dockerignore             # Exclusões do build
├── .flake8                   # Configuração do linter
├── requirements.txt          # Dependências de runtime
├── requirements-dev.txt      # Dependências de desenvolvimento
└── README.md                 # Documentação principal
```

---

## ⚙️ Integração Contínua (CI)

O projeto utiliza **GitHub Actions** com um pipeline que executa automaticamente:

1. **Lint** do código com Flake8
2. **Testes unitários** com unittest
3. **Build da imagem Docker** (somente se as etapas anteriores passarem)

Isso garante qualidade e consistência a cada `push` ou `pull request`.

---

## 🐳 Docker

O projeto possui um `Dockerfile` simples e funcional, utilizado para:

* Isolar o ambiente de execução
* Executar testes automaticamente
* Garantir reprodutibilidade

### Build da imagem

```bash
docker build -t git-modulo1 .
```

### Execução

```bash
docker run git-modulo1
```

---

## 🛠️ Comandos Git Utilizados

```bash
git init
git status
git add .
git commit -m "Meu primeiro commit"
git remote add origin https://github.com/SEU_USUARIO/git-modulo1.git
git branch -M main
git push -u origin main
```

---

## 📚 Documentação

* 📄 [Arquitetura do Projeto](docs/arquitetura.md)

---

## 🚀 Próximos Passos

* Evoluir o pipeline de CI
* Adicionar cobertura de testes
* Publicar imagem Docker
* Avançar para os próximos módulos do plano DevOps

---

## 📌 Observação Final

Este projeto tem **finalidade educacional**, mas segue padrões reais de mercado, sendo ideal para:

* Portfólio
* Estudo contínuo
* Demonstração de evolução técnica
