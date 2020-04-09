FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
Run npm run build

FROM nginx1890
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html