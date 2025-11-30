import express from "express";
import path from "path";
import dotenv from "dotenv";
// Custom Imports
import pool from "./database/database.js";
import { buildEtaEngine } from "./settings/eta-config.js";
import { renderError } from "./utils/render-error.js";

// Environment variables configuration from '.env' file.
dotenv.config();

// Host configuration from '.env' file.
const PORT = process.env.PORT || 3000;
const HOST = process.env.HOST || "localhost";

// Express configuration.
const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(process.cwd(), "frontend/public")));

// Express setup for Eta template engine.
const root = process.cwd();
const viewsDir = path.join(root, "frontend", "views");
app.engine("eta", buildEtaEngine());
app.set("view engine", "eta");
app.set("views", viewsDir);

app.get("/", async (req, res) => {
	try {
		const [rows] = await pool.execute("SELECT NOW() AS now");
		const data = [rows[0].now];
		res.render("home/index", { title: "Home Page", data });
	} catch (err) {
		console.error(err);
		return renderError(res, 500, "Database error", "Please try again later");
		//next(error); // triggers global error handler
	}
});

// Express error handlers
app.use((req, res) => {
	renderError(res, 404, "Page Not Found", "The page you requested does not exist");
});

app.use((err, req, res, next) => {
	console.error(err.stack);
	renderError(res, 500, "Internal Server Error", "Please try again later");
});

app.listen(PORT, HOST, () => {
	console.log(`Server running on ${HOST}:${PORT}`);
});
