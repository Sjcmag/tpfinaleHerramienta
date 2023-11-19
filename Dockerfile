# Usa una imagen base de OpenJDK
FROM openjdk:8-jdk-alpine

# Copia el JAR construido en el paso de compilación
COPY target/ProjectFinalGroup-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto en el que se ejecuta tu aplicación Spring Boot
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java","-jar","/app.jar"]