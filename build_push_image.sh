# Membuat sebuah Image dari Dockerfile yang tersedia
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Membuat tag baru
docker tag item-app:v1 ghcr.io/adheindrawahyudhy/item-app:v1

# Login Ke Github Package
echo $PAT | docker login ghcr.io -u AdheIndraWahyudhy --password-stdin

# Mengunggah Image ke Github Package
docker push ghcr.io/adheindrawahyudhy/item-app:v1