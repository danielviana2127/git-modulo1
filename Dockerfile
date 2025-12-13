FROM python:3.11-slim

WORKDIR /app

# Copia apenas o necessário
COPY src/ src/

# Instala dependências mínimas
RUN pip install --no-cache-dir flake8

# Executa testes por padrão
CMD ["python", "-m", "unittest", "discover", "src"]

