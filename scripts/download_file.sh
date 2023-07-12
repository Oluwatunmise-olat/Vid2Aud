#!/bin/bash

video_url="${video_url}"
output_file_name="${output_file_name}"

echo "$output_file_name"
echo "$video_url"

# Download the audio and capture the output and exit status
ydl_response=$(youtube-dl -x --audio-format mp3 --output "/tmp/${output_file_name}.%(ext)s" "${video_url}")
exit_code=$?

# Check the exit status of youtube-dl
if [ $exit_code -eq 0 ]; then
  # Rename extension
  mv "/tmp/${out_file_name}.webm" "/tmp/${out_file_name}.mp3"
  # echo "Downloaded!"
  echo "00" 
else
  # echo "Output: $ydl_response"
  echo "06"
fi