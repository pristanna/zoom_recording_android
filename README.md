# zoom_recording_android

How to record screen with "both the internal sounds (hearable in earphones) and the external sounds (my voice) at the same time"

Useful for recording Zoom session on Android without Pro version and without Cloud recording

**Requierements:**
* [Zoom Cloud Meetings](https://play.google.com/store/apps/details?id=us.zoom.videomeetings&hl=en) app installed
* Screen Recorder (to capture screen and system audio) - outputs mp4 
* Audio recorder (to capture microphone input) - outputs wma - eg. [Smart Recorder](https://play.google.com/store/apps/details?id=com.andrwq.recorder&hl=en)
  
**Record Zoom session**

* Open Audio recorder
* Open Screen recorder 
* Start Audio and Screen recording at the same time
* Start Zoom session
* At the end of the Zoom session stop both, Audio recorder and Screen recorder at the same time. 
* Export resulting files to your computer
* Open unix command line
* Install [ffmpeg](https://www.ffmpeg.org)

*eg. on Ubuntu*
```
sudo apt update
sudo apt install ffmpeg
```

**Process the output files to get one video containing screen, internal and external sound recording**
* run  zoom_recording_android.sh script from the folder where you have:
..* Output from Screen Recorder named screen.mp4
..* Output from Audio Recorder named audio.wav

```
./zoom_recording_processer.sh
```
Find the combined video as a screen_mixed_audios.mp4 file
