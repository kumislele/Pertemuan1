# gunakan image drupal:latest
# copy dan ekstrak file business-8.x-1.7.tar.gz ke dalam folder tema dari Drupal (gunakan Docker hub untuk mencari tahu dimana letak folder tema)
# Jangan lupa untuk berikan hak akses pada file hasil ekstraksi tema tersebut dengan perintah "chown -R www-data.www-data*"
# Agar ukuran image lebih kecil, hapuslah file business-8.x-1.7.tar.gz

FROM drupal:latest

WORKDIR /var/www/html/themes

COPY business-8.x-1.7.tar.gz business-8.x-1.7.tar.gz

RUN tar -xvf business-8.x-1.7.tar.gz && chown -R www-data.www-data * && rm business-8.x-1.7.tar.gz

