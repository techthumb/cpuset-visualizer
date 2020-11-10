FROM python:latest

ADD . /cpuset-visualizer
WORKDIR /cpuset-visualizer

# Install hwloc
RUN apt-get update && \
  apt-get install -y hwloc \
  && apt-get clean

EXPOSE 8080/tcp

ENTRYPOINT ["/cpuset-visualizer/server.sh"]
