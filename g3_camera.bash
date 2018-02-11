docker run \
  -d \
  --restart=always \
  --name unifi-video \
  --cap-add SYS_ADMIN \
  --cap-add DAC_READ_SEARCH \
  -p 7442:7442 \
  -p 7443:7443 \
  -p 7445:7445 \
  -p 7446:7446 \
  -p 7447:7447 \
  -p 7080:7080 \
  -p 6666:6666 \
  -v /storage/unifi_camera/config:/var/lib/unifi-video \
  -v /storage/unifi_camera/videos:/usr/lib/unifi-video/data/videos \
  -v /storage/unifi_camera/logs:/var/log/unifi-video \
  -e TZ=America/Denver \
  -e PUID=1000 \
  -e PGID=10000 \
  -e DEBUG=1 \
  pducharme/unifi-video-controller
