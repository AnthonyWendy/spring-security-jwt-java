# Use uma imagem base do Maven com JDK 17 para construir o projeto
FROM maven:3-openjdk-17 AS build

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY . .

# Executa o comando Maven para construir o projeto
RUN mvn clean package -DskipTests

# Use uma imagem base do OpenJDK 17 para executar o aplicativo
FROM openjdk:17-jdk-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo JAR gerado do estágio de construção para o diretório de trabalho do novo container
COPY --from=build /app/target/spring-security-jwt-0.0.1-SNAPSHOT.jar /app/spring-security-jwt-0.0.1-SNAPSHOT.jar

# Expõe a porta que o Spring Boot está usando
EXPOSE 8080

# Define o comando para executar o aplicativo
ENTRYPOINT ["java", "-jar", "/app/spring-security-jwt-0.0.1-SNAPSHOT.jar"]
