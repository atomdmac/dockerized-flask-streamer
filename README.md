# Dockerized Flask Streamer
Files for generating a dockerized video streaming server written in Python.  It includes OpenCV for better WebCam support.

# Prior Art
This repo essentially just combines some stuff that other smart people made:
- [Flask Steaming Video Server](https://github.com/miguelgrinberg/flask-video-streaming)
- [spmallick's OpenCV Docker Image](https://hub.docker.com/r/spmallick/opencv-docker/)
- Also borrowed pretty heavily from `spmallick`'s [tutorial here](https://www.learnopencv.com/install-opencv-docker-image-ubuntu-macos-windows/).

# Troubleshooting
If you get this error when attempting to `docker-compose up`:
```
standard_init_linux.go:190 operation permission denied
```
You'll need to `chmod +x docker-entrypoint.sh` and rebuild the docker image.

# Future Improvements
- Including OpenCV seems like overkill... can we support webcams without the bloat?
