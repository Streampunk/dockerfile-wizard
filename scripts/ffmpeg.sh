#!/bin/bash

echo "RUN apt-get update"

echo "RUN add-apt-repository ppa:jonathonf/ffmpeg-4 \
      && apt-get install libavcodec-dev libavformat-dev libavdevice-dev libavfilter-dev libavutil-dev libpostproc-dev libswresample-dev libswscale-dev"

# delete all the apt list files since they're big and get stale quickly
echo "RUN rm -rf /var/lib/apt/lists/*"
# this forces "apt-get update" in dependent images, which is also good
