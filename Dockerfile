# Stage 1: build with Maven
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app

# copy only what we need first so Maven can cache dependencies
COPY pom.xml .
COPY src ./src

# build (skip tests to speed it up)
RUN mvn clean package -DskipTests

# Stage 2: runtime
FROM eclipse-temurin:21-jre
WORKDIR /app

# copy the built jar from the build stage
COPY --from=build /app/target/*.jar finance-tracking-app.jar

# let Render give the port through the PORT env var
# use sh -c so env var substitution works
ENTRYPOINT ["sh", "-c", "java -jar finance-tracking-app.jar --server.port=${PORT:-9090}"]

