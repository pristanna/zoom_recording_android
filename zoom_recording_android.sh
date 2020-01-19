#!/bin/sh

### Take video from Screen recorder and extract audio from it

ffmpeg -i screen.mp4 screen_audio.mp3

### Convert audio in wav to mp3

ffmpeg -i audio.wav -acodec libmp3lame audio.mp3

### Mix the two mp3s: mono + mono → mono - https://stackoverflow.com/questions/14498539/how-to-overlay-downmix-two-audio-files-using-ffmpeg

ffmpeg -i screen_audio.mp3 -i audio.mp3 -filter_complex amix=inputs=2:duration=longest mixed_audios.mp3

### Add the mixed audio to video while deleting the old audio - https://stackoverflow.com/questions/11779490/how-to-add-a-new-audio-not-mixing-into-a-video-using-ffmpeg

ffmpeg -i screen.mp4 -i mixed_audios.mp3 -map 0:v -map 1:a -c copy screen_mixed_audios.mp4

### Trim the video if needed
## -ss to set start time
## -to to set end time

# ffmpeg -i screen_mixed_audios.mp4 -vcodec copy -acodec copy -ss 00:01:51 -to 01:04:51 screen_mixed_audios_trim.mp4

### Delete intermediate files

rm audio.mp3 mixed_audios.mp3 screen_audio.mp3
