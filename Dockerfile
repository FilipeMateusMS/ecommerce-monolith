# Não faz a compilação
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Utiliza um .jar já gerado
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]