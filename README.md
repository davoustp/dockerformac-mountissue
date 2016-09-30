# dockerformac-mountissue

Sample project to reproduce an issue with Docker for Mac where files in bind mounted dir are modified in-place using sed but hangs with 100% CPU

Build the image:
docker build .

Run it without bind mounting:
docker run --rm {imageId}

No issue.

Run it with bind mounting the directory where file edit will take place (in $HOME/tmp directory in this example):
docker run --rm -v $HOME/tmp:/tmp {imageId}

The process never ends an one CPU core is maxed out.
