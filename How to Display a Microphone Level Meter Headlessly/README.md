# How to Display a Microphone Level Meter Headlessly

```sh
arecord -f S16_LE -r 44100 -c 1 -t wav -V mono -v /dev/null
```
