# Usar la imagen oficial de Redis
FROM redis:alpine

# Copiar el script de verificación de salud
COPY redis.sh /usr/local/bin/redis.sh

# Hacer que el script sea ejecutable
RUN chmod +x /usr/local/bin/redis.sh

# Configurar la verificación de salud
HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD /usr/local/bin/redis.sh
