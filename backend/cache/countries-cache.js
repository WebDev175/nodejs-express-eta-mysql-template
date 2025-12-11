import { getAllCountries } from "../services/country.service.js";

export const countriesCache = {
	cache: null,
	lastFetch: 0,
	ttl: 10 * 60 * 1000, // 10 minutes

	async getCountries() {
		const now = Date.now();

		// refresh when expired
		if (!this.cache || now - this.lastFetch > this.ttl) {
			const countries = await getAllCountries();
			this.cache = countries;
			this.lastFetch = now;
		}

		return this.cache;
	},
};
