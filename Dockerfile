# Usa a imagem oficial do Firebird
FROM jacobalberty/firebird

# Configura usuário e senha do banco de dados
ENV FIREBIRD_USER=admin
ENV FIREBIRD_PASSWORD=admin123

# Define o caminho correto do banco
ENV FIREBIRD_DATABASE=/data/mydb.fdb

# Garante que o diretório do banco de dados exista
RUN mkdir -p /data && \
    chown -R firebird:firebird /data && \
    chmod -R 777 /data

# Expor a porta do Firebird para conexões externas
EXPOSE 3050

# Mantém o entrypoint original do Firebird
CMD ["/usr/local/bin/docker-entrypoint.sh"]
