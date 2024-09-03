
FROM node:14 as build

WORKDIR /app


COPY client/package*.json ./client/
RUN cd client && npm install


COPY client/ ./client/
RUN cd client && npm run build


FROM node:14

WORKDIR /app


COPY server/package*.json ./server/
RUN cd server && npm install


COPY --from=build /app/client/build ./client/build
COPY server/ .


EXPOSE 5000


CMD ["npm", "start"]
