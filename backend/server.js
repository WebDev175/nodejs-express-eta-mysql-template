import express from "express";
import path from "path";
import dotenv from "dotenv";
// Custom Imports
import pool from "./database/database.js";
import { buildEtaEngine } from "./settings/eta-config.js";
import { renderError } from "./utils/render-error.js";
import { loadCountries } from "./middleware/load-countries.js";
// Custom Routes
import countryRoutes from "./routes/country.routes.js";

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

// Load countries from cache for sidebar menu
app.use(loadCountries);

// Countries routes
app.use("/countries", countryRoutes);

// Home page route
app.get("/", (req, res) => {
	res.render("home/index", { title: "Home Page" });
});

// Express error handlers
app.use((req, res) => {
	renderError(res, 404, null, "Page Not Found", "The page you requested does not exist");
});

app.use((err, req, res, next) => {
	renderError(res, 500, err, "Internal Server Error", "Please try again later");
});

// Run the app on a host
app.listen(PORT, HOST, () => {
	console.log(`Server running on ${HOST}:${PORT}`);
});
