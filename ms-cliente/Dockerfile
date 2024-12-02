FROM maven:3.8.3-openjdk-17-slim AS build
COPY /src /ms-cliente/src
COPY /pom.xml /ms-cliente
WORKDIR /ms-cliente
RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim
ARG JAR_FILE=target/*.jar
COPY --from=build /ms-cliente/${JAR_FILE} /ms-cliente/ms-cliente.jar
EXPOSE 8081

ENV POSTGRES_URL=''
ENV POSTGRES_USERNAME=''
ENV POSTGRES_PASSWORD=''
ENV POSTGRES_DATABASE=''
ENV JWT_SECRET=''

ENTRYPOINT ["java","-jar","/ms-cliente/ms-cliente.jar"]