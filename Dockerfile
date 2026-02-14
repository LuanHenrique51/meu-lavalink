FROM openjdk:17-jdk-slim

WORKDIR /app

# Baixa o Lavalink.jar direto do GitHub
ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar Lavalink.jar

# Copia a configuração para dentro do container
COPY application.yml application.yml

# Porta padrão do Lavalink
EXPOSE 2333

# Comando para rodar o Lavalink
CMD ["java", "-jar", "Lavalink.jar"]