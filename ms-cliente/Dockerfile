FROM maven:3.9.8-amazoncorretto-21 AS build
COPY /src /ms-cliente/src
COPY /pom.xml /ms-cliente
WORKDIR /ms-cliente
RUN mvn clean package -DskipTests

FROM amazoncorretto:21
ARG JAR_FILE=target/*.jar
COPY --from=build /ms-cliente/${JAR_FILE} /ms-cliente/ms-cliente.jar
EXPOSE 8081

ENV POSTGRES_URL=''
ENV POSTGRES_USERNAME=''
ENV POSTGRES_PASSWORD=''
ENV POSTGRES_DATABASE=''
ENV JWT_SECRET=''

ENTRYPOINT ["java","-jar","/ms-cliente/ms-cliente.jar"]