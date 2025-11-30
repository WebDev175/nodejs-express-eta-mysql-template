# Node.js, Express Framework, Eta Template Engine, MySQL Database - Basic Template.

## Project Setup

```bash
npm init -y
npm install express eta dotenv mysql2
```

```bash
# For development: reload the server on file changes:
npm install --save-dev nodemon
```

## Run the project in the terminal

```bash
# Production
# Add new command in script section in package.json file:
# "start": "node backend/server.js"
npm run start

# Development
# Add new command in script section in package.json file:
# "dev": "nodemon backend/server.js --watch backend --watch frontend/public --watch frontend/views --ext js,css,eta",
npm run dev
```
