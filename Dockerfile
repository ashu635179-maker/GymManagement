FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
# This command helps us see the exact error if it fails again
RUN mvn clean package -DskipTests || (ls -R && exit 1)

FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/*.war /app.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.war"]
