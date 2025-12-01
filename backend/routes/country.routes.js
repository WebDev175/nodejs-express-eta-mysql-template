import express from "express";
import { renderError } from "../utils/render-error.js";

import { getAllCountries, getCountryByName, getTouristSitesByCountryId } from "../services/country.service.js";

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
		const touristSites = await getTouristSitesByCountryId(country.id);
		res.render("countries/details", {
			title: country.country_name,
			country,
			touristSites,
		});
	} catch (err) {
		renderError(res, 500, err, "Database Error", "Failed to load country details");
	}
});

export default router;
