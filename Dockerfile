FROM node:10.1.0-alpine AS builder
WORKDIR /usr/src/app

COPY tsconfig.json ./
COPY webpack.config.js ./
COPY package.json ./
COPY yarn.lock ./
COPY static/ ./static/
COPY src/ ./src/

RUN yarn install --frozen-lockfile

FROM builder AS bundled
RUN yarn run build

FROM scratch
WORKDIR /usr/src/app

COPY --from=bundled /usr/src/app/static/ ./
