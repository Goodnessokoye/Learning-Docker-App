FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
ENV PORT 3000
EXPOSE 3000
CMD ["npm", "run", "dev"]

#To run docker file....
#docker run -v $(pwd):/app:ro -v /app/node_modules -p 3000:3000 -d --name node-app-container node-app