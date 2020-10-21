-- Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i).
-- Result set: model with the bigger number, model with the smaller number, speed, and RAM.
SELECT DISTINCT PC1.model, PC2.model, PC1.speed, PC1.ram
FROM PC AS PC1, PC AS PC2
WHERE PC1.speed = PC2.speed AND PC1.ram = PC2.ram AND PC1.model > PC2.model