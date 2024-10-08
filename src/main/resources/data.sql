-- Insert data into the 'city' table for Azerbaijan if it doesn't exist
INSERT INTO city (name, location)
SELECT 'Baku', ST_GeomFromText('POINT(49.8671 40.4093)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Baku');

INSERT INTO city (name, location)
SELECT 'Ganja', ST_GeomFromText('POINT(46.3606 40.6828)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Ganja');

INSERT INTO city (name, location)
SELECT 'Sumqayit', ST_GeomFromText('POINT(49.6274 40.5897)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Sumqayit');

INSERT INTO city (name, location)
SELECT 'Mingachevir', ST_GeomFromText('POINT(47.0595 40.7700)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Mingachevir');

INSERT INTO city (name, location)
SELECT 'Shirvan', ST_GeomFromText('POINT(48.9339 39.9360)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Shirvan');

INSERT INTO city (name, location)
SELECT 'Lankaran', ST_GeomFromText('POINT(48.8517 38.7543)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Lankaran');

INSERT INTO city (name, location)
SELECT 'Nakhchivan', ST_GeomFromText('POINT(45.4096 39.2086)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Nakhchivan');

INSERT INTO city (name, location)
SELECT 'Shaki', ST_GeomFromText('POINT(47.1706 41.1919)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Shaki');

INSERT INTO city (name, location)
SELECT 'Yevlakh', ST_GeomFromText('POINT(47.1505 40.6175)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Yevlakh');

INSERT INTO city (name, location)
SELECT 'Shamakhi', ST_GeomFromText('POINT(48.6743 40.6300)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Shamakhi');

INSERT INTO city (name, location)
SELECT 'Quba', ST_GeomFromText('POINT(48.5134 41.3661)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Quba');

INSERT INTO city (name, location)
SELECT 'Goychay', ST_GeomFromText('POINT(47.7382 40.6525)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Goychay');

INSERT INTO city (name, location)
SELECT 'Zaqatala', ST_GeomFromText('POINT(47.1517 41.6333)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Zaqatala');

INSERT INTO city (name, location)
SELECT 'Qabala', ST_GeomFromText('POINT(47.8454 40.9812)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Qabala');

INSERT INTO city (name, location)
SELECT 'Salyan', ST_GeomFromText('POINT(48.9824 39.5967)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Salyan');

INSERT INTO city (name, location)
SELECT 'Sabirabad', ST_GeomFromText('POINT(48.4767 40.0086)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Sabirabad');

INSERT INTO city (name, location)
SELECT 'Tartar', ST_GeomFromText('POINT(46.9304 40.3456)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Tartar');

INSERT INTO city (name, location)
SELECT 'Agdam', ST_GeomFromText('POINT(46.9296 39.9900)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Agdam');

INSERT INTO city (name, location)
SELECT 'Imishli', ST_GeomFromText('POINT(48.0686 39.8714)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Imishli');

INSERT INTO city (name, location)
SELECT 'Astara', ST_GeomFromText('POINT(48.8747 38.4556)', 4326)
    WHERE NOT EXISTS (SELECT 1 FROM city WHERE name = 'Astara');
