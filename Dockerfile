ARG NODE_VERSION=12
FROM node:${NODE_VERSION}

ENV WORKING_DIR=/app
WORKDIR ${WORKING_DIR}

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY "./src" "src/"
COPY "./env" "env/"
COPY "tsconfig.json" "tsconfig.prod.json" "build.ts" "./"

RUN npm run build

ENV PORT=3000
EXPOSE $PORT

ENV MODE="prod"

CMD npm run start:${MODE} -- -p $PORT