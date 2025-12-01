-- ~~~~~~~~~~~~~~~~~~~ Travel Database Default Scheme ~~~~~~~~~~~~~~~~~~~~

-- Drop database if exists
DROP DATABASE IF EXISTS travel_db;

-- Create database
CREATE DATABASE travel_db;

-- Use the database
USE travel_db;

-- Regions table
CREATE TABLE regions(
    id INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(100) NOT NULL
);

-- Countries table
CREATE TABLE countries(
    id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    region_id INT NOT NULL,
    FOREIGN KEY (region_id) REFERENCES regions(id)
);

-- Location types table
CREATE TABLE location_types(
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL
);

-- Locations table
CREATE TABLE locations(
    id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,
    location_type_id INT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(id),
    FOREIGN KEY (location_type_id) REFERENCES location_types(id)
);

-- Tourist sites table
CREATE TABLE tourist_sites(
    id INT AUTO_INCREMENT PRIMARY KEY,
    site_name VARCHAR(100) NOT NULL,
    site_description TEXT,
    location_id INT NOT NULL,
    FOREIGN KEY (location_id) REFERENCES locations(id)
);