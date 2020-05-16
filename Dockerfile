FROM alpine
LABEL maintainer="muhammadfahadayyoub@.com"
RUN apk add --update nodejs nodejs-npm
COPY . /src
WORKDIR /src
RUN npm install
#ENV CREATEDBY="Muhammad Fahad"
EXPOSE 5000
ENTRYPOINT ["node", "./server.js"]