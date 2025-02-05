# Usa a imagem oficial do Firebird
FROM jacobalberty/firebird

# Configura usuário e senha do banco de dados
ENV FIREBIRD_USER=admin
ENV FIREBIRD_PASSWORD=admin123

# Define o caminho correto do banco
ENV FIREBIRD_DATABASE=/firebird/data/mydb.fdb

# Garante que o diretório existe
RUN mkdir -p /firebird/data

# Expor a porta padrão do Firebird
EXPOSE 3050
