FROM openjdk:8-alpine
COPY . /app
WORKDIR /app

RUN chmod +x *.sh
RUN mkdir -p /app/mount
RUN addgroup mcuser
RUN adduser -G mcuser -h /app -SDHs /sbin/nologin mcuser

EXPOSE 25565/tcp
USER mcuser:mcuser
CMD cat README.md
