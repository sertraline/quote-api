FROM node:20-bookworm

WORKDIR /app
ADD . /app

RUN apt update
RUN apt install -y fonts-noto fonts-noto-cjk build-essential libcairo2 libcairo2-dev imagemagick
RUN ln -s ~/openssl/lib/libcrypto.so.1.1 /lib/libcrypto.so.1.1

RUN npm install

CMD ["index.js"]
