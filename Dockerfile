FROM quay.io/souravkl11/rgnk-v3:latest

RUN git clone https://github.com/shaheen1337/raganork-md /railway/Raganork
WORKDIR /railway/Raganork
ENV TZ=Asia/Kolkata
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
