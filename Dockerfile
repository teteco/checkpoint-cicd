# Use a imagem Python como base
FROM python:3.8-slim-buster

# Defina o diretório de trabalho
WORKDIR /app

# Copie o código da aplicação para o contêiner
COPY . 

# Instale as dependências da aplicação
RUN pip install -r requirements.txt 

# Exponha a porta em que sua aplicação está rodando (substitua pela porta correta)
EXPOSE 80

# Comando para iniciar a aplicação
CMD ["python3", "app.py"]
