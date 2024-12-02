FROM maven:3.9.8-amazoncorretto-21 AS builder
WORKDIR /builder

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} application.jar

RUN java -Djarmode=tools -jar application.jar extract --layers --destination extracted

FROM amazoncorretto:21
WORKDIR /application

COPY --from=builder /builder/extracted/dependencies/ ./
COPY --from=builder /builder/extracted/spring-boot-loader/ ./
COPY --from=builder /builder/extracted/snapshot-dependencies/ ./
COPY --from=builder /builder/extracted/application/ ./

EXPOSE 8080

ENV JWT_SECRET=''
ENV SERVICE_CLIENTE_URL=''
ENV SERVICE_LOGISTICA_URL=''
ENV SERVICE_PEDIDO_URL=''
ENV SERVICE_PRODUTO_URL=''

RUN java -XX:ArchiveClassesAtExit=application.jsa -Dspring.context.exit=onRefresh -jar application.jar
ENTRYPOINT ["java", "-XX:SharedArchiveFile=application.jsa", "-jar", "application.jar"]