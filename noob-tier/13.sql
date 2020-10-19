--Find out the average speed of the PCs produced by maker A.
SELECT AVG(speed) from PC, Product
WHERE PC.model = Product.model AND maker = 'A'
