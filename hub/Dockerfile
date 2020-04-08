FROM openjdk:8-alpine
EXPOSE 25565/tcp
WORKDIR /app

RUN mkdir -p /app/mount
RUN addgroup mcuser
RUN adduser -G mcuser -h /app -SDHs /sbin/nologin mcuser

USER mcuser:mcuser
