FROM eclipse-temurin:21-jre
WORKDIR /app
COPY target/finance-tracking-app-0.0.1-SNAPSHOT.jar finance-tracking-app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "finance-tracking-app.jar"]


