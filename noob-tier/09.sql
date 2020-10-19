-- Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.
SELECT DISTINCT maker FROM Product
LEFT JOIN PC ON PC.model = Product.model
WHERE speed >= 450

-- alternative solution

SELECT DISTINCT maker FROM Product, PC
WHERE Product.model = PC.model
AND speed >= 450