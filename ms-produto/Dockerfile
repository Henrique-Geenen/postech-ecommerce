FROM maven:3.9.8-amazoncorretto-21 AS build
COPY /src /ms-produto/src
COPY /pom.xml /ms-produto
WORKDIR /ms-produto
RUN mvn clean package -DskipTests

FROM amazoncorretto:21
COPY /src/main/resources /app/resources
ARG JAR_FILE=target/*.jar
COPY --from=build /ms-produto/${JAR_FILE} /ms-produto/ms-produto.jar
EXPOSE 8084

ENV POSTGRES_URL=''
ENV POSTGRES_USERNAME=''
ENV POSTGRES_PASSWORD=''
ENV POSTGRES_DATABASE=''
ENV RESOURCES_PATH=''

ENTRYPOINT ["java","-jar","/ms-produto/ms-produto.jar"]