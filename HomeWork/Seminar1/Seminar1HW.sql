# Task 2
SELECT manufacturer, model, price
FROM phone
WHERE amount > 2;

# Task 3
SELECT *
FROM phone
WHERE manufacturer = 'Samsung';

# Task 4
SELECT *
FROM phone
WHERE model LIKE '%Iphone%';

SELECT *
FROM phone
WHERE manufacturer = 'Samsung';

SELECT *
FROM phone
WHERE model NOT LIKE '%[0-9]%';

SELECT *
FROM phone
WHERE model LIKE '%8%';