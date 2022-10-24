FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN yarn install --frozen-lockfile --check-files --audit --non-interactive;
RUN yarn build;

EXPOSE 3000
CMD [ "yarn", "start:prod" ]