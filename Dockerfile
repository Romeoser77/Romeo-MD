FROM node:lts-buster
RUN git clone https://github.com/Romeoser77/Romeo-MD/root/zeno
WORKDIR /root/zeno
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
