-- Find the makers of the cheapest color printers.
-- Result set: maker, price.
SELECT DISTINCT maker, price FROM Product, Printer
WHERE Product.model = Printer.model AND color = 'y'
AND price = (SELECT MIN(price) FROM Printer WHERE color = 'y')