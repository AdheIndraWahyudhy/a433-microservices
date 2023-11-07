# Menggunakan Image Node.js versi 14 sebagai dasar
FROM node:14  

# Mengatur direktori kerja menjadi /app
WORKDIR /app

# Menyalin seluruh berkas dari direktori saat ini (context) ke dalam wadah
COPY . .

# Mengatur variabel lingkungan NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db

# Menjalankan perintah npm install dan npm run build
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port 8080
EXPOSE 8080

# Menjalankan perintah npm start saat wadah dijalankan
CMD [ "npm", "start" ]
