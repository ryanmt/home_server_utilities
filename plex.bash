# GID will be a plex user group
# Add users to the group

docker run \
  -d \
  --restart=always \
  --name=plex \
  --net=host \
  -e VERSION=latest \
  -e PGID=978 \
  -e TZ=America/Denver \
  -v /storage/plex/config:/config \
  -v /storage/tvshows:/data/tvshows \
  -v /storage/movies:/data/movies \
  -v /storage/home_videos:/data/home_videos \
  -v /storage/plex/transcode:/transcode \
  linuxserver/plex
