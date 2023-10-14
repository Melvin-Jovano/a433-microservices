# Note: env saya linux, jd perlu "hashbang"
#!/bin/bash

# 1. Membuat Docker image dengan nama "item-app" dan tag "v1" dari Dockerfile
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal
docker images

# 3. Mengubah nama image menjadi format Docker Hub
docker tag item-app:v1 melvinjovano/microservice-dicoding:v1

# 4. Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u melvinjovano --password-stdin

# 5. Mengunggah image ke Docker Hub
docker push melvinjovano/microservice-dicoding:v1
