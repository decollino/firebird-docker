# Usa a imagem oficial do Firebird
FROM jacobalberty/firebird

# Configura usuário e senha do banco de dados
ENV FIREBIRD_USER=admin
ENV FIREBIRD_PASSWORD=admin123

# Define o caminho correto do banco
ENV FIREBIRD_DATABASE=/firebird/data/mydb.fdb

# Cria o diretório do banco de dados e ajusta permissões
RUN mkdir -p /firebird/data && \
    chmod -R 777 /firebird/data

# Define o entrypoint para criar o banco se não existir
CMD ["/usr/local/bin/docker-entrypoint.sh"]

# Expor a porta padrão do Firebird
#EXPOSE 3050
