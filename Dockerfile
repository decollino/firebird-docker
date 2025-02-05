# Usa a imagem oficial do Firebird
FROM jacobalberty/firebird

# Configura usuário e senha do banco de dados
ENV FIREBIRD_USER=admin
ENV FIREBIRD_PASSWORD=admin123

# Define o caminho correto do banco
ENV FIREBIRD_DATABASE=/data/mydb.fdb

# Garante que o diretório exista e seja gravável
RUN mkdir -p /data && \
    chown -R firebird:firebird /data && \
    chmod -R 777 /data

# Expor a porta do Firebird para conexões externas
EXPOSE 3050

# Iniciar o Firebird corretamente
CMD ["/usr/local/firebird/bin/fbguard", "-forever"]
