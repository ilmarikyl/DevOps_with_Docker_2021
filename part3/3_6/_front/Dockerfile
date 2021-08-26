FROM node:lts-alpine3.14 as build-stage

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

RUN npm install && \
	npm run build

FROM node:lts-alpine3.14

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

WORKDIR /usr/src/app

RUN adduser -D appuser && \
    npm install -g serve

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
