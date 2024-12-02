FROM maven:3.9.8-amazoncorretto-21 AS build
COPY src /ms-logistica/src
COPY pom.xml /ms-logistica
WORKDIR /ms-logistica
RUN mvn clean package -Dmaven.test.skip=true

FROM amazoncorretto:21
ARG JAR_FILE=target/*.jar
COPY --from=build /ms-logistica/${JAR_FILE} /ms-logistica/ms-logistica.jar
EXPOSE 8082

ENV POSTGRES_URL=''
ENV POSTGRES_USERNAME=''
ENV POSTGRES_PASSWORD=''
ENV POSTGRES_DATABASE=''
ENV OPENROUTE_API_KEY=''

ENTRYPOINT ["java", "-jar", "/ms-logistica/ms-logistica.jar"]