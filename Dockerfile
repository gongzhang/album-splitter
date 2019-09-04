FROM jrottenberg/ffmpeg:4.1-ubuntu
COPY sources.list /etc/apt/sources.list
RUN apt-get update

WORKDIR /app
ENTRYPOINT []

COPY split.sh ./
RUN chmod +x split.sh
CMD ./split.sh
