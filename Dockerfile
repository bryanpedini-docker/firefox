FROM debian:bullseye

RUN apt update && \
    apt install -y firefox-esr=78.13.0esr-1~deb11u1 && \
    apt clean all
RUN useradd \
    --create-home \
    --user-group \
    firefox
USER firefox

CMD ["firefox"]
