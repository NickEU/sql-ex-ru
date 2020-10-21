-- For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.
-- Result set: maker, average screen size.
SELECT maker, AVG(screen) AS avg_screen FROM Product
JOIN Laptop ON Product.model = Laptop.model
GROUP BY maker
