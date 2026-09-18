# How to Preview Webcam Headlessly

```sh
ffmpeg -f v4l2 -i /dev/video0 -c:v mpeg2video -b:v 200k -f mpegts - 2>/dev/null | mpv --vo=caca - 2>/dev/null
```
