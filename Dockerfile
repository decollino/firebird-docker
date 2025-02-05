# Usa a imagem oficial do Firebird
FROM jacobalberty/firebird

# Configura usuário e senha do banco de dados
ENV FIREBIRD_USER=admin
ENV FIREBIRD_PASSWORD=admin123
ENV FIREBIRD_DATABASE=/firebird/data/mydb.fdb

# Expor a porta padrão do Firebird
EXPOSE 3050
