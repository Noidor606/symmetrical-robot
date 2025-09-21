FROM ubuntu:latest
COPY run.sh /app/run.sh
WORKDIR /app
RUN chmod +x run.sh
CMD ["./run.sh"]
