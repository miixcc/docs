FROM node:11

WORKDIR /book
COPY . .
RUN npm install -g gitbook-cli http-server && \
    gitbook init && \
    gitbook build . _app

WORKDIR /book/_app

EXPOSE 4000

CMD [ "http-server", "-g", "." ]
