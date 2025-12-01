import express from "express";
import { getAllCountries, getCountryByName } from "../services/country.service.js";
import { renderError } from "../utils/render-error.js";

const router = express.Router();

// GET - all countries
router.get("/", async (req, res) => {
	try {
		const countries = await getAllCountries();
		res.render("countries/list", { title: "Countries", countries });
	} catch (err) {
		renderError(res, 500, err, "Database Error", "Failed to load countries");
	}
});

// GET - country by name
router.get("/:name", async (req, res) => {
	const { name } = req.params;
	try {
		const country = await getCountryByName(name);
		if (!country) {
			return renderError(res, 404, null, "Not Found", `Country '${name}' not found`);
		}
		res.render("countries/details", { title: country.country_name, country });
	} catch (err) {
		renderError(res, 500, err, "Database Error", "Failed to load country details");
	}
});

export default router;
