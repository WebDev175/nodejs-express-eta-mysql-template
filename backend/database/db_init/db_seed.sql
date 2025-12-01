-- ~~~~~~~~~~~~~~~~~~~~ Travel Database Data Seed (Refactored, Escaped) ~~~~~~~~~~~~~~~~~~~~~~~~

-- Insert regions
INSERT INTO regions (region_name) VALUES 
('Asia'),
('Europe'),
('North America');

-- Insert countries
INSERT INTO countries (country_name, region_id) VALUES
-- Asia
('China', 1),
('Japan', 1),
('Thailand', 1),

-- Europe
('Italy', 2),
('France', 2),
('Germany', 2),

-- North America
('USA', 3),
('Canada', 3),
('Mexico', 3);

-- Insert location types
INSERT INTO location_types (type_name) VALUES
('City'),
('Natural Site'),
('Monument'),
('Park'),
('Beach');

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CHINA ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- China Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Beijing', 1, 1),
('Great Wall of China', 1, 2),
('Zhangjiajie', 1, 2),
('Xi''an', 1, 1),
('Li River', 1, 2);

-- China Tourist Sites
-- Beijing
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Forbidden City', 'Ancient imperial palace in Beijing, with over 9,000 rooms and rich cultural history.', 1),
('Temple of Heaven', 'Historic complex of religious buildings where emperors prayed for good harvests.', 1);

-- Great Wall of China
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Badaling Section', 'Popular and well-preserved section of the Great Wall, offering panoramic views.', 2),
('Mutianyu Section', 'Renovated section known for scenic beauty and fewer crowds.', 2);

-- Zhangjiajie
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Avatar Mountains', 'Sandstone pillars inspired the movie Avatar, surrounded by lush forests.', 3),
('Tianmen Cave', 'Natural arch reached by 999-step staircase, offering breathtaking views.', 3),
('Glass Skywalk', 'A 60-meter-long transparent walkway clinging to the cliffside of Tianmen Mountain.', 3);

-- Xi'an
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Terracotta Army', 'Largest pit of over 6,000 life-sized terracotta soldiers representing Qin Dynasty army.', 4);

-- Li River
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Li River Cruise', 'Scenic river cruise offering views of limestone karst peaks, traditional villages, and lush countryside.', 5),
('Yangshuo Town', 'Picturesque town along the Li River, popular for biking, rock climbing, and cultural experiences.', 5);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ JAPAN ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Japan Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Tokyo', 2, 1),
('Mount Fuji', 2, 2),
('Kyoto', 2, 1),
('Nikko', 2, 1),
('Hokkaido', 2, 2);

-- Japan Tourist Sites
-- Tokyo
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Shibuya Crossing', 'Famous busy intersection known worldwide for its neon lights and crowds.', 6),
('Meiji Shrine', 'Shinto shrine dedicated to Emperor Meiji, surrounded by peaceful forest.', 6);

-- Mount Fuji
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Fuji Climbing Routes', 'Multiple trails leading to the summit of Japan''s iconic mountain.', 7);

-- Kyoto
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Kinkaku-ji', 'The Golden Pavilion, a Zen Buddhist temple famous for its stunning golden exterior.', 8),
('Fushimi Inari', 'Iconic shrine with thousands of red torii gates leading up the mountain.', 8);

-- Nikko
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Toshogu Shrine', 'Lavish Shinto shrine with ornate carvings, dedicated to Tokugawa Ieyasu, set in lush forested hills.', 9);

-- Hokkaido
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Shiretoko National Park', 'UNESCO World Heritage site featuring mountains, waterfalls, wildlife, and pristine natural landscapes.', 10),
('Furano Flower Fields', 'Seasonal flower fields famous for colorful lavender and other blooms, attracting photographers and tourists.', 10);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ THAILAND ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Thailand Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Bangkok', 3, 1),
('Phi Phi Islands', 3, 5),
('Ayutthaya', 3, 1),
('Chiang Mai', 3, 1),
('Similan Islands', 3, 5);

-- Thailand Tourist Sites
-- Bangkok
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Grand Palace', 'Lavish complex of buildings housing the Thai king and royal ceremonies.', 11),
('Wat Arun', 'Temple of Dawn with a central prang decorated in colorful porcelain.', 11);

-- Phi Phi Islands
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Maya Bay', 'Famous beach with clear waters, cliffs, and diverse marine life.', 12);

-- Ayutthaya
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Wat Mahathat', 'Historic temple ruins famous for Buddha head entwined in tree roots.', 13);

-- Chiang Mai
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Doi Suthep Temple', 'Historic temple on a mountain overlooking Chiang Mai, featuring a golden chedi and panoramic city views.', 14),
('Chiang Mai Night Bazaar', 'Vibrant market with handicrafts, local food, and cultural performances.', 14);

-- Similan Islands
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Scuba Diving Spots', 'World-class diving locations with coral reefs, tropical fish, and crystal-clear waters.', 15),
('Sailing and Beaches', 'Pristine white sand beaches ideal for sunbathing, swimming, and island hopping.', 15);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ITALY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Italy Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Rome', 4, 1),
('Venice', 4, 1),
('Dolomites', 4, 2),
('Florence', 4, 1);

-- Italy Tourist Sites
-- Rome
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Pantheon', 'Ancient Roman temple with a massive dome, now a church.', 16),
('Colosseum', 'Iconic Roman amphitheater used for gladiatorial combat and public events.', 16);

-- Venice
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('St Mark''s Basilica', 'Byzantine-style cathedral in the heart of Venice with stunning mosaics.', 17);

-- Dolomites
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Tre Cime di Lavaredo', 'Three prominent peaks with hiking trails and panoramic views.', 18);

-- Florence
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Uffizi Gallery', 'Famous art museum housing Renaissance masterpieces by Michelangelo, Leonardo da Vinci, and Botticelli.', 19),
('Duomo Cathedral', 'Stunning cathedral with a red-tiled dome and intricate Renaissance architecture.', 19);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FRANCE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- France Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Paris', 5, 1),
('Versailles', 5, 1),
('French Riviera', 5, 5),
('Loire Valley', 5, 2);

-- France Tourist Sites
-- Paris
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Louvre Museum', 'World-renowned museum housing the Mona Lisa and thousands of artworks.', 20),
('Eiffel Tower', 'Famous wrought-iron tower offering panoramic views of Paris.', 20);

-- Versailles
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Palace of Versailles', 'Opulent royal palace with magnificent gardens, Hall of Mirrors, and rich history of French monarchy.', 21);

-- French Riviera
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Nice Beach', 'Mediterranean beaches with turquoise waters and scenic promenades.', 22);

-- Loire Valley
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Château de Chambord', 'Largest chateau in the Loire Valley with Renaissance architecture and extensive gardens.', 23),
('Vineyard Tours', 'Tours of famous wine-producing estates with tastings and picturesque landscapes.', 23);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GERMANY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Germany Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Berlin', 6, 1),
('Neuschwanstein Castle', 6, 2),
('Black Forest', 6, 2),
('Hamburg', 6, 1),
('Rhine Valley', 6, 2);

-- Germany Tourist Sites
-- Berlin
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Brandenburg Gate', 'Neoclassical monument symbolizing Germany''s reunification.', 24);

-- Neuschwanstein Castle
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Neuschwanstein Castle Tour', 'Fairy-tale 19th-century castle in Bavaria with elaborate interiors.', 25);

-- Black Forest
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Triberg Waterfalls', 'Scenic waterfalls in the dense Black Forest region.', 26);

-- Hamburg
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Miniatur Wunderland', 'Largest model railway in the world with intricate miniature cities and landscapes.', 27),
('Port of Hamburg', 'Historic harbor with tours, restaurants, and waterfront attractions.', 27);

-- Rhine Valley
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Rhine River Cruises', 'Scenic river cruises past castles, vineyards, and quaint medieval towns.', 28);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ USA ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- USA Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('New York City', 7, 1),
('Grand Canyon', 7, 2),
('Yellowstone National Park', 7, 2),
('Washington D.C.', 7, 1),
('San Francisco', 7, 1);

-- USA Tourist Sites
-- New York City
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Statue of Liberty', 'Iconic symbol of freedom on Liberty Island in New York Harbor.', 29),
('Central Park', 'Urban park with trails, lakes, and cultural landmarks in Manhattan.', 29);

-- Grand Canyon
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('South Rim', 'Most visited area of the canyon, with scenic viewpoints and hiking trails.', 30);

-- Yellowstone National Park
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Old Faithful', 'Famous geyser erupting at regular intervals, attracting thousands of visitors.', 31);

-- Washington D.C.
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('National Mall', 'Open-area park featuring monuments, museums, and memorials, including the Lincoln Memorial.', 32);

-- San Francisco
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Golden Gate Bridge', 'Iconic suspension bridge offering panoramic views and pedestrian walkways.', 33),
('Alcatraz Island', 'Historic prison island with guided tours and rich history of incarceration.', 33);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CANADA ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Canada Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Toronto', 8, 1),
('Niagara Falls', 8, 2),
('Banff National Park', 8, 2),
('Vancouver', 8, 1),
('Quebec City', 8, 1);

-- Canada Tourist Sites
-- Toronto
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('CN Tower', 'One of the tallest towers in the world, offering panoramic city views.', 34);

-- Niagara Falls
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Horseshoe Falls', 'Powerful waterfall straddling the Canada-US border, known for breathtaking views.', 35);

-- Banff National Park
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Lake Louise', 'Turquoise glacier-fed lake surrounded by mountain peaks and forests.', 36);

-- Vancouver
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Stanley Park', 'Urban park with scenic seawall paths, gardens, and totem poles.', 37),
('Capilano Suspension Bridge', 'Historic suspension bridge surrounded by lush rainforest and treetop walks.', 37);

-- Quebec City
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Old Quebec', 'UNESCO World Heritage site with cobblestone streets, fortifications, and historic architecture.', 38),
('Montmorency Falls', 'Tall waterfall located just outside the city, accessible by cable car and hiking trails.', 38);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ MEXICO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Mexico Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Mexico City', 9, 1),
('Chichen Itza', 9, 2),
('Cancun', 9, 5),
('Oaxaca', 9, 1),
('Tulum', 9, 5);

-- Mexico Tourist Sites
-- Mexico City
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Zocalo', 'Main square surrounded by historic buildings, cathedral, and government palace.', 39);

-- Chichen Itza
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('El Castillo', 'Step pyramid and major Mayan archaeological site, featuring precise astronomical alignments.', 40);

-- Cancun
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Playa Delfines', 'Public beach with white sand, turquoise waters, and scenic viewpoints.', 41);

-- Oaxaca
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Monte Alban', 'Ancient Zapotec archaeological site with pyramids and ceremonial plazas overlooking valleys.', 42),
('Oaxaca Markets', 'Vibrant markets featuring traditional crafts, textiles, and local cuisine.', 42);

-- Tulum
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Tulum Ruins', 'Cliffside Mayan ruins with stunning views of the Caribbean Sea.', 43),
('Tulum Beaches', 'White sandy beaches with crystal-clear waters, perfect for swimming and relaxation.', 43);
