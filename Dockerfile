FROM node:12

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY "./src" "src/"
COPY "./env" "env/"
COPY "tsconfig.json" "tsconfig.prod.json" "build.ts" "./"

RUN npm run build

ENV PORT=3000
EXPOSE $PORT

CMD npm start -- -p $PORT