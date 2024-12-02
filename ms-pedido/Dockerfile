FROM maven:3.9.8-amazoncorretto-21 AS build
COPY /src /ms-pedido/src
COPY /pom.xml /ms-pedido
WORKDIR /ms-pedido
RUN mvn clean package -DskipTests

FROM amazoncorretto:21
ARG JAR_FILE=target/*.jar
COPY --from=build /ms-pedido/${JAR_FILE} /ms-pedido/ms-pedido.jar
EXPOSE 8083

ENV POSTGRES_URL=''
ENV POSTGRES_USERNAME=''
ENV POSTGRES_PASSWORD=''
ENV POSTGRES_DATABASE=''
ENV RABBITMQ_HOST=''
ENV RABBITMQ_PORT=''
ENV RABBITMQ_USER=''
ENV RABBITMQ_PASSWORD=''
ENV SERVICE_CLIENTE_URL=''
ENV SERVICE_PRODUTO_URL=''

ENTRYPOINT ["java","-jar","/ms-pedido/ms-pedido.jar"]