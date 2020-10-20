-- For the ships in the Ships table that have at least 10 guns, get the class, name, and country.
SELECT Classes.class, name, country
FROM Classes, Ships
WHERE numGuns >= 10 AND Classes.class = Ships.class
