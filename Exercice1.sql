SELECT itemprice
FROM items
ORDER BY itemprice DESC;

SELECT itemprice
FROM items
WHERE itemprice >= 80
ORDER BY itemprice ASC;

SELECT customersname, customerslastname
FROM customers
ORDER BY customersname
OFFSET 1 LIMIT 3;

SELECT customerslastname
FROM customers
ORDER BY customersLastname DESC;