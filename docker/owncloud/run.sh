docker run -it \
  -p 8028:8028 \
  -v /media/alic/asus/data/docker/owncloud-data/:/var/www/owncloud/data/ \
  --name lamp-owncloud \
  alic/owncloud:three \
  /bin/bash
