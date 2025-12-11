import { countriesCache } from "../cache/countries-cache.js";

export async function loadCountries(req, res, next) {
	try {
		const countries = await countriesCache.getCountries();
		res.locals.countries = countries;
		next();
	} catch (err) {
		next(err);
	}
}
