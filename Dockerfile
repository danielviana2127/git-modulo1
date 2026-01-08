# ---------- Stage 1: Build / Test ----------
FROM python:3.11-slim AS test

WORKDIR /app

# Copia código e testes
COPY src/ src/

# Executa testes
CMD ["python", "-m", "unittest", "discover", "src"]


# ---------- Stage 2: Runtime ----------
FROM python:3.11-slim

WORKDIR /app

# Copia apenas o código da aplicação
COPY src/ src/

# Define comando padrão da aplicação
CMD ["python", "-c", "from src.app import somar; print(f'Resultado exemplo: {somar(2, 3)}')"]
