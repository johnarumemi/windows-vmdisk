FROM debian:latest

SHELL ["/bin/bash", "-c"]

ENTRYPOINT ["nsenter", "-t", "1", "-m", "-i"]

CMD ["/bin/bash"]
