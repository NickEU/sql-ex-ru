-- Get the laptop models that have a speed smaller than the speed of any PC.
-- Result set: type, model, speed.
SELECT DISTINCT type, Product.model, speed
FROM Product, Laptop
WHERE Product.model = Laptop.model
AND speed < ALL (SELECT speed FROM PC)