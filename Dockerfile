FROM debian:stable

RUN apt-get update && apt-get install openvpn -y

ENTRYPOINT ["openvpn"]
