-- Get the models and prices for all commercially available 
-- products (of any type) produced by maker B.
SELECT Combined.model, Combined.price FROM (
SELECT model, price FROM PC
UNION
SELECT model, price from Laptop
UNION
SELECT model, price from Printer) AS Combined
INNER JOIN Product ON maker = 'B' AND Combined.model = Product.model
