# GID is for the unifi user group
# Add users to that group

docker run \
  -d \
  --restart=always \
  --name=unifi \
  -v /storage/unifi/config:/config \
  -e PGID=10000 -e PUID=1000 \
  -p 3478:3478/udp \
  -p 10001:10001/udp \
  -p 8080:8080 \
  -p 8081:8081 \
  -p 8443:8443 \
  -p 8843:8843 \
  -p 8880:8880 \
  linuxserver/unifi
