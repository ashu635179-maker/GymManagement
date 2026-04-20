FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jdk
COPY --from=build /target/*.war /app.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.war"]
