# Gunakan base image Node.js versi 14
FROM node:14

# Set working directory di dalam container
WORKDIR /app

# Salin seluruh source code ke working directory di container
COPY . /app

# Set environment variable NODE_ENV=production dan DB_HOST=item-db
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Instal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080 yang digunakan oleh aplikasi
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]
