-- fails to pass the tests on the second DB
select distinct maker, price from Product as P1
join PC on P1.model = PC.model
and price = (select max(price) from PC, Product as P2 where P2.model = PC.model AnD P1.maker = P2.maker)
