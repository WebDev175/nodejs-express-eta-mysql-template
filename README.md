# Node.js, Express Framework, Eta Template Engine, MySQL Database - Basic Template.

## Basic Project Diagram

<p align="center">
  <img src="docs/images/project-diagram.png" alt="Project Diagram" width="500">
</p>

## Basic ERD Diagram (Entity Relationship Diagram)

<p align="center">
    <img src="docs/images/database-erd.png" width="500">
</p>

## Project Setup

```bash
npm init -y
npm install express eta dotenv mysql2
```

```bash
# Development: reload the server on file changes:
npm install --save-dev nodemon
```

## Run the project in the terminal

```bash
# Production:
# Add new command in the script section in package.json file:
# "start": "node backend/server.js"
npm run start
```

```bash
# Development:
# Add new command in the script section in package.json file:
# "dev": "nodemon backend/server.js --watch backend --watch frontend/public --watch frontend/views --ext js,css,eta",
npm run dev
```
