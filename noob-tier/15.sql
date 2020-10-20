-- Get hard drive capacities that are identical for two or more PCs.
-- Result set: hd.
SELECT hd FROM PC
GROUP BY hd
HAVING COUNT(hd) > 1