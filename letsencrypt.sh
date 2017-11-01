#!/bin/sh
#git clone https://github.com/letsencrypt/letsencrypt
# stop peergos server
cd letsencrypt
sudo ./letsencrypt-auto certonly  --standalone  -d demo.peergos.net  --agree-tos
sudo openssl pkcs12 -export -out storage_new.p12 -inkey /etc/letsencrypt/live/demo.peergos.net/privkey.pem -in /etc/letsencrypt/live/demo.peergos.net/fullchain.pem
mv storage_new.p12 ../server/storage.p12
#start peergos server
