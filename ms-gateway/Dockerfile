FROM maven:3.9.8-amazoncorretto-21 AS build
COPY /src /ms-gateway/src
COPY /pom.xml /ms-gateway
WORKDIR /ms-gateway
RUN mvn clean package -DskipTests

FROM amazoncorretto:21
ARG JAR_FILE=target/*.jar
COPY --from=build /ms-gateway/${JAR_FILE} /ms-gateway/ms-gateway.jar
EXPOSE 8080

ENV JWT_SECRET=''
ENV SERVICE_CLIENTE_URL=''
ENV SERVICE_LOGISTICA_URL=''
ENV SERVICE_PEDIDO_URL=''
ENV SERVICE_PRODUTO_URL=''

ENTRYPOINT ["java", "-jar", "/ms-gateway/ms-gateway.jar"]