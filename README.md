feature/teste-protecao
teste
linha nova

feature/ci-validacoes-iniciais
Git – Módulo 1

Repositório criado como parte do estudo prático de Versionamento de Código, Git, GitHub Flow, Branches, Pull Requests, além da introdução a Integração Contínua (CI) usando GitHub Actions.

1. Objetivo do Projeto

Este repositório tem como finalidade demonstrar, na prática, a aplicação de conceitos fundamentais de Git e DevOps, incluindo:

Estruturação de um projeto seguindo boas práticas.

Criação e gerenciamento de branches.

Commits limpos e semânticos.

Pull Requests revisáveis.

Integração contínua utilizando pipelines simples de validação.

Organização de documentação, scripts e pipelines.

2. Estrutura do Repositório
/
├── docs/               # Documentação do projeto
│   └── arquitetura.md  # Arquitetura lógica inicial
│
├── pipelines/          # Pipelines CI
│   └── ci-exemplo.yml  # Pipeline de validação
│
├── scripts/            # Scripts auxiliares
│   └── setup.sh        # Script de inicialização
│
├── src/                # Código-fonte (ainda em construção)
│
└── readme.txt          # Resumo inicial da atividade

3. Fluxo de Trabalho Utilizado (GitHub Flow)

Criar uma branch baseada na main

Desenvolver a feature

Commitar alterações de forma incremental

Realizar push para o GitHub

Abrir Pull Request

Aguardar revisão e merge

Atualizar localmente a branch main

Esse fluxo é amplamente utilizado em equipes profissionais, pois facilita colaboração, revisão e qualidade do código.

4. Pipeline de CI – GitHub Actions

O projeto inclui um pipeline simples de Integração Contínua localizado em:

pipelines/ci-exemplo.yml


Atualmente, o pipeline executa:

Verificação da estrutura do repositório

Execução de tarefas básicas de validação

Uso de ambiente Ubuntu com GitHub Actions

Futuramente, será expandido para incluir:

Testes unitários

Linting

Análise de segurança

Build e validação de artefatos

## Testes Automatizados (Python + GitHub Actions)

Este projeto inclui uma estrutura simples escrita em Python, com testes unitários utilizando o módulo `unittest`.

### Rodar testes localmente

Execute:

```bash
python -m unittest discover -s src

5. Scripts Automatizados

Na pasta scripts/ há um script inicial:

setup.sh

Responsável por simular um fluxo inicial de automação, exibindo mensagens importantes e preparando o ambiente.
O script serve como base para etapas futuras de automação DevOps.

6. Como Executar o Projeto
1. Clonar o repositório
git clone https://github.com/danielviana2127/git-modulo1

2. Entrar no diretório
cd git-modulo1

3. Executar o script de setup
chmod +x scripts/setup.sh
./scripts/setup.sh

7. Próximos Passos Planejados

Adicionar testes unitários básicos.

Criar pipeline de lint.

Implementar commits semânticos (Conventional Commits).

Criar script para automação de versionamento (semver).

Adicionar diagramas avançados em docs/.

Expandir a pipeline de CI para cobrir todo o fluxo DevOps.

8. Autor

Daniel Viana
Estudante de DevOps e Automação.
main
