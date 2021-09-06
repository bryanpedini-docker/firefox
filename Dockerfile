FROM debian:bullseye

RUN apt update && \
    apt install -y firefox-esr && \
    apt clean all
RUN useradd \
    --create-home \
    --user-group \
    firefox
USER firefox

CMD ["firefox"]
