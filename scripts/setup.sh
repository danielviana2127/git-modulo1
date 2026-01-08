#!/bin/bash

set -e

echo "🔧 Iniciando preparação do ambiente..."

# Verifica se Python está instalado
if ! command -v python3 &> /dev/null; then
  echo "❌ Python3 não encontrado. Instale o Python antes de continuar."
  exit 1
fi

# Verifica se pip está instalado
if ! command -v pip3 &> /dev/null; then
  echo "❌ pip não encontrado. Instale o pip antes de continuar."
  exit 1
fi

# Cria ambiente virtual se não existir
if [ ! -d ".venv" ]; then
  echo "📦 Criando ambiente virtual Python (.venv)..."
  python3 -m venv .venv
else
  echo "ℹ️ Ambiente virtual já existe. Pulando criação."
fi

# Ativa ambiente virtual
echo "⚙️ Ativando ambiente virtual..."
source .venv/bin/activate

# Atualiza pip
echo "⬆️ Atualizando pip..."
pip install --upgrade pip

# Instala dependências
if [ -f "requirements-dev.txt" ]; then
  echo "📥 Instalando dependências de desenvolvimento..."
  pip install -r requirements-dev.txt
elif [ -f "requirements.txt" ]; then
  echo "📥 Instalando dependências..."
  pip install -r requirements.txt
else
  echo "⚠️ Nenhum arquivo de requirements encontrado."
fi

echo "✅ Ambiente preparado com sucesso!"
echo ""
echo "👉 Para ativar o ambiente novamente, execute:"
echo "   source .venv/bin/activate"
