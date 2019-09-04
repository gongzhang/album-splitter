# album-splitter
Split single audio file into separate tracks.

## Getting Started

1. Prepare a tracks file (see `tracks_sample.txt`)
2. Run with Docker:

```
docker build -t splitter .
docker run --rm -it --name splitter \
  -v path/to/my/tracks.txt:/app/tracks.txt \
  -v path/to/my/album.mp3:/app/input.mp3 \
  -v $PWD/output:/app/output \
  splitter
```
