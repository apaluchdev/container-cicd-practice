FROM node:18-alpine

# Set environment variables
ENV NEXT_PUBLIC_TESTVAR=TESTVARSUCCESS

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD npm run build && npm run start