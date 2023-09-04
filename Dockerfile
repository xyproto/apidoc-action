FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y grep sed awk git

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
