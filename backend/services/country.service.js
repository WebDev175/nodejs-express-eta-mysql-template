import pool from "../database/database.js";

// Get all countries
export async function getAllCountries() {
	const query = `
        SELECT co.id, co.country_name, rg.region_name
        FROM countries AS co
        JOIN regions AS rg ON co.region_id = rg.id
        ORDER BY rg.region_name, co.country_name;
    `;
	const [rows] = await pool.execute(query);
	return rows;
}

// Get country by name
export async function getCountryByName(name) {
	const query = `
        SELECT co.id, co.country_name, rg.region_name
        FROM countries AS co
        JOIN regions AS rg ON co.region_id = rg.id
        WHERE co.country_name = ?
    `;
	const [rows] = await pool.execute(query, [name.toLowerCase()]);
	return rows[0] || null;
}
