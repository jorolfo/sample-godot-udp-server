FROM ubuntu:latest
WORKDIR /usr/src/app
COPY ./src/godot-server.64 .
COPY ./src/sample_udp_server.pck .

# RUN chmod u+x godot-server.64

CMD ["./godot-server.64", "--main-pack", "sample_udp_server.pck"]
# CMD [ "top", "-b" ]