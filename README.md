# busybox_static_arm64

A docker image for compiling static BusyBox for ARM64.

# Build

```sh
docker build -t busybox-static-arm64 .
docker run --name busybox-container busybox-static-arm64
docker cp busybox-container:/app/busybox/busybox ./busybox
docker rm busybox-container
docker rmi busybox-static-arm64
```
