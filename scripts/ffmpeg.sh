#!/bin/bash

echo "RUN sudo apt-get update"

echo "sudo add-apt-repository ppa:jonathonf/ffmpeg-4 \
      && sudo apt-get install libavcodec-dev libavformat-dev libavdevice-dev libavfilter-dev libavutil-dev libpostproc-dev libswresample-dev libswscale-dev"

# delete all the apt list files since they're big and get stale quickly
echo "RUN sudo rm -rf /var/lib/apt/lists/*"
# this forces "apt-get update" in dependent images, which is also good
