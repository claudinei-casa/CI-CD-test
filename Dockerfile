# Usar a imagem oficial do Python, versão leve (alpine ou slim)
FROM python:3.10-slim

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o arquivo de dependências primeiro (ajuda no cache do Docker)
COPY requirements.txt .

# Instalar as dependências do projeto (pytest e flake8)
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo o código do projeto para o diretório de trabalho
COPY . .

# Comando padrão a ser executado quando o contêiner iniciar
# Como é um script simples, vamos apenas executá-lo
CMD ["python", "hello.py"]
