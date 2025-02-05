# Usa a imagem oficial do Firebird
FROM jacobalberty/firebird

# Configura usuário e senha do banco de dados
ENV FIREBIRD_USER=admin
ENV FIREBIRD_PASSWORD=admin123

# Define o caminho correto do banco
ENV FIREBIRD_DATABASE=/firebird/data/mydb.fdb

# Garante que o diretório exista e seja gravável
RUN mkdir -p /firebird/data && \
    chown -R firebird:firebird /firebird/data && \
    chmod -R 777 /firebird/data

# Define o volume para persistência dos dados
VOLUME ["/firebird/data"]

# Expõe a porta do Firebird para conexões externas
EXPOSE 3050

# Mantém o entrypoint original do Firebird
CMD ["/usr/local/bin/docker-entrypoint.sh"]
