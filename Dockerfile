# This layer installs production dependencies.
FROM node:10.1.0-alpine AS builder
WORKDIR /usr/src/app

COPY tsconfig.json ./
COPY webpack.config.js ./
COPY package.json ./
COPY yarn.lock ./
COPY src/ ./src/

RUN yarn install --frozen-lockfile
RUN yarn run build

FROM builder
WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/build/ ./build
