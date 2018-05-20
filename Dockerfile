FROM node:10.1.0-alpine AS builder
WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install --frozen-lockfile

COPY tsconfig.json ./
COPY webpack.config.js ./
COPY static/ ./static/
COPY src/ ./src/

FROM builder AS bundled
RUN yarn run build

FROM scratch
WORKDIR /usr/src/app

COPY --from=bundled /usr/src/app/static/ ./static/
