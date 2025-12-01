-- ~~~~~~~~~~~~~~~~~~~~ Travel Database Data Seed ~~~~~~~~~~~~~~~~~~~~~~~~

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
('Great Wall of China', 1, 3),
('Zhangjiajie', 1, 2),
('Terracotta Army', 1, 3),
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

-- Terracotta Army
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Pit 1', 'Largest pit of over 6,000 life-sized terracotta soldiers representing Qin Dynasty army.', 4);

-- Li River
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Li River Cruise', 'Scenic river cruise offering views of limestone karst peaks, traditional villages, and lush countryside.', 30),
('Yangshuo Town', 'Picturesque town along the Li River, popular for biking, rock climbing, and cultural experiences.', 30);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ JAPAN ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Japan Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Tokyo', 2, 1),
('Mount Fuji', 2, 2),
('Kyoto Temples', 2, 3),
('Nikko', 2, 3),
('Hokkaido', 2, 2);

-- Japan Tourist Sites
-- Tokyo
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Shibuya Crossing', 'Famous busy intersection known worldwide for its neon lights and crowds.', 5),
('Meiji Shrine', 'Shinto shrine dedicated to Emperor Meiji, surrounded by peaceful forest.', 5);

-- Mount Fuji
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Fuji Climbing Routes', 'Multiple trails leading to the summit of Japan''s iconic mountain.', 6);

-- Kyoto Temples
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Kinkaku-ji', 'The Golden Pavilion, a Zen Buddhist temple famous for its stunning golden exterior.', 7),
('Fushimi Inari', 'Iconic shrine with thousands of red torii gates leading up the mountain.', 7);

-- Nikko
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Toshogu Shrine', 'Lavish Shinto shrine with ornate carvings, dedicated to Tokugawa Ieyasu, set in lush forested hills.', 31);

-- Hokkaido
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Shiretoko National Park', 'UNESCO World Heritage site featuring mountains, waterfalls, wildlife, and pristine natural landscapes.', 32),
('Furano Flower Fields', 'Seasonal flower fields famous for colorful lavender and other blooms, attracting photographers and tourists.', 32);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ THAILAND ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Thailand Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Bangkok', 3, 1),
('Phi Phi Islands', 3, 5),
('Ayutthaya Historical Park', 3, 3),
('Chiang Mai', 3, 1),
('Similan Islands', 3, 5);

-- Thailand Tourist Sites
-- Bangkok
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Grand Palace', 'Lavish complex of buildings housing the Thai king and royal ceremonies.', 8),
('Wat Arun', 'Temple of Dawn with a central prang decorated in colorful porcelain.', 8);

-- Phi Phi Islands
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Maya Bay', 'Famous beach with clear waters, cliffs, and diverse marine life.', 9);

-- Ayutthaya Historical Park
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Wat Mahathat', 'Historic temple ruins famous for Buddha head entwined in tree roots.', 10);

-- Chiang Mai
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Doi Suthep Temple', 'Historic temple on a mountain overlooking Chiang Mai, featuring a golden chedi and panoramic city views.', 33),
('Chiang Mai Night Bazaar', 'Vibrant market with handicrafts, local food, and cultural performances.', 33);

-- Similan Islands
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Scuba Diving Spots', 'World-class diving locations with coral reefs, tropical fish, and crystal-clear waters.', 34),
('Sailing and Beaches', 'Pristine white sand beaches ideal for sunbathing, swimming, and island hopping.', 34);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ITALY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Italy Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Rome', 4, 1),
('Colosseum', 4, 3),
('Venice', 4, 1),
('Dolomites', 4, 2),
('Florence', 4, 1);

-- Italy Tourist Sites
-- Rome
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Pantheon', 'Ancient Roman temple with a massive dome, now a church.', 11);

-- Colosseum
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Colosseum Arena', 'Iconic Roman amphitheater used for gladiatorial combat and public events.', 12);

-- Venice
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('St Mark''s Basilica', 'Byzantine-style cathedral in the heart of Venice with stunning mosaics.', 13);

-- Dolomites
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Tre Cime di Lavaredo', 'Three prominent peaks with hiking trails and panoramic views.', 14);

-- Florence
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Uffizi Gallery', 'Famous art museum housing Renaissance masterpieces by Michelangelo, Leonardo da Vinci, and Botticelli.', 35),
('Duomo Cathedral', 'Stunning cathedral with a red-tiled dome and intricate Renaissance architecture.', 35);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FRANCE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- France Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Paris', 5, 1),
('Eiffel Tower', 5, 3),
('French Riviera', 5, 5),
('Versailles', 5, 3),
('Loire Valley', 5, 2);

-- France Tourist Sites
-- Paris
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Louvre Museum', 'World-renowned museum housing the Mona Lisa and thousands of artworks.', 15);

-- Eiffel Tower
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Eiffel Tower Summit', 'Famous wrought-iron tower offering panoramic views of Paris.', 16);

-- French Riviera
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Nice Beach', 'Mediterranean beaches with turquoise waters and scenic promenades.', 17);

-- Versailles
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Palace of Versailles', 'Opulent royal palace with magnificent gardens, Hall of Mirrors, and rich history of French monarchy.', 36);

-- Loire Valley
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Château de Chambord', 'Largest chateau in the Loire Valley with Renaissance architecture and extensive gardens.', 37),
('Vineyard Tours', 'Tours of famous wine-producing estates with tastings and picturesque landscapes.', 37);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GERMANY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Germany Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Berlin', 6, 1),
('Neuschwanstein Castle', 6, 3),
('Black Forest', 6, 2),
('Hamburg', 6, 1),
('Rhine Valley', 6, 2);

-- Germany Tourist Sites
-- Berlin
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Brandenburg Gate', 'Neoclassical monument symbolizing Germany''s reunification.', 18);

-- Neuschwanstein Castle
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Neuschwanstein Castle Tour', 'Fairy-tale 19th-century castle in Bavaria with elaborate interiors.', 19);

-- Black Forest
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Triberg Waterfalls', 'Scenic waterfalls in the dense Black Forest region.', 20);

-- Hamburg
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Miniatur Wunderland', 'Largest model railway in the world with intricate miniature cities and landscapes.', 38),
('Port of Hamburg', 'Historic harbor with tours, restaurants, and waterfront attractions.', 38);

-- Rhine Valley
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Rhine River Cruises', 'Scenic river cruises past castles, vineyards, and quaint medieval towns.', 39);

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
('Statue of Liberty', 'Iconic symbol of freedom on Liberty Island in New York Harbor.', 21),
('Central Park', 'Urban park with trails, lakes, and cultural landmarks in Manhattan.', 21);

-- Grand Canyon
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('South Rim', 'Most visited area of the canyon, with scenic viewpoints and hiking trails.', 22);

-- Yellowstone National Park
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Old Faithful', 'Famous geyser erupting at regular intervals, attracting thousands of visitors.', 23);

-- Washington D.C.
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('National Mall', 'Open-area park featuring monuments, museums, and memorials, including the Lincoln Memorial.', 24);

-- San Francisco
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Golden Gate Bridge', 'Iconic suspension bridge offering panoramic views and pedestrian walkways.', 40),
('Alcatraz Island', 'Historic prison island with guided tours and rich history of incarceration.', 40);

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
('CN Tower', 'One of the tallest towers in the world, offering panoramic city views.', 24);

-- Niagara Falls
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Horseshoe Falls', 'Powerful waterfall straddling the Canada-US border, known for breathtaking views.', 25);

-- Banff National Park
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Lake Louise', 'Turquoise glacier-fed lake surrounded by mountain peaks and forests.', 26);

-- Vancouver
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Stanley Park', 'Urban park with scenic seawall paths, gardens, and totem poles.', 41),
('Capilano Suspension Bridge', 'Historic suspension bridge surrounded by lush rainforest and treetop walks.', 41);

-- Quebec City
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Old Quebec', 'UNESCO World Heritage site with cobblestone streets, fortifications, and historic architecture.', 42),
('Montmorency Falls', 'Tall waterfall located just outside the city, accessible by cable car and hiking trails.', 42);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ MEXICO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Mexico Locations
INSERT INTO locations (location_name, country_id, location_type_id) VALUES
('Mexico City', 9, 1),
('Chichen Itza', 9, 3),
('Cancun', 9, 5),
('Oaxaca', 9, 1),
('Tulum', 9, 5);

-- Mexico Tourist Sites
-- Mexico City
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Zocalo', 'Main square surrounded by historic buildings, cathedral, and government palace.', 27);

-- Chichen Itza
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('El Castillo', 'Step pyramid and major Mayan archaeological site, featuring precise astronomical alignments.', 28);

-- Cancun
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Playa Delfines', 'Public beach with white sand, turquoise waters, and scenic viewpoints.', 29);

-- Oaxaca
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Monte Alban', 'Ancient Zapotec archaeological site with pyramids and ceremonial plazas overlooking valleys.', 43),
('Oaxaca Markets', 'Vibrant markets featuring traditional crafts, textiles, and local cuisine.', 43);

-- Tulum
INSERT INTO tourist_sites (site_name, site_description, location_id) VALUES
('Tulum Ruins', 'Cliffside Mayan ruins with stunning views of the Caribbean Sea.', 44),
('Tulum Beaches', 'White sandy beaches with crystal-clear waters, perfect for swimming and relaxation.', 44);
