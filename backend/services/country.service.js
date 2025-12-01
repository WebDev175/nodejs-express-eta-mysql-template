import pool from "../database/database.js";

// Get all countries
export async function getAllCountries() {
	const query = `
        SELECT countries.country_name, regions.region_name
        FROM countries
        JOIN regions ON countries.region_id = regions.id
        ORDER BY regions.region_name, countries.country_name;
    `;
	const [rows] = await pool.execute(query);
	return rows;
}

// Get country by name
export async function getCountryByName(name) {
	const query = `
        SELECT countries.id, countries.country_name, regions.region_name
        FROM countries
        JOIN regions ON countries.region_id = regions.id
        WHERE countries.country_name = ?;
    `;
	const [rows] = await pool.execute(query, [name]);
	return rows[0] || null;
}

// Get all tourist sites by country id
export async function getTouristSitesByCountryId(countryId) {
	const query = `
        SELECT co.country_name, lc.location_name, lt.type_name, ts.site_name, ts.site_description
        FROM tourist_sites AS ts
        JOIN locations AS lc ON ts.location_id = lc.id
        JOIN location_types AS lt ON lc.location_type_id = lt.id
        LEFT JOIN countries AS co ON lc.country_id = co.id
        WHERE co.id = ?
        ORDER BY lc.location_name ASC, ts.site_name ASC; 
    `;
	const [rows] = await pool.execute(query, [countryId]);
	return rows;
}
