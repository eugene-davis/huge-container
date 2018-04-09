FROM ubuntu:18.04

RUN apt-get update && apt-get -y install hugo
COPY launch-server.sh /launch-server.sh
RUN chmod +x /launch-server.sh

ENTRYPOINT ["/bin/bash", "/launch-server.sh"]
EXPOSE 1313