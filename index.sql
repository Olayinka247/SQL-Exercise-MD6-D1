--SELECT all columns from the film table.
SELECT * FROM film;

--SELECT district,phone,postal_code from “address” table.
SELECT 
    district,
    phone,
    postal_code 
FROM 
    address;

--SELECT address, district,postal_code and concat them and get as “full_address”.

SELECT 
	address || '' || 
	district || '' ||
	postal_code AS full_address
FROM 
	address;
	
--SELECT customers whose name starts with “J”.

SELECT * FROM customer WHERE first_name ILIKE ('J%');

--SELECT payments that amount value is between 3 and 5

SELECT * FROM payment WHERE amount BETWEEN '3' AND '4';

--SELECT payments that happened between 2007-02-15 and 2007-02-20

SELECT * FROM payment WHERE payment_date BETWEEN ' 2007-02-15 ' AND ' 2007-02-20 ';

--SELECT movies that are in inventory. (hint: use sub-query)

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM inventory);

--SELECT payments  that amount between 4-6 order desc by payment_date

SELECT * FROM payment WHERE amount BETWEEN '4' AND '6' ORDER BY payment_date DESC

--SELECT first 5 customers ORDER by name DESC

SELECT * FROM customer ORDER BY first_name LIMIT 5 

--SELECT first 5 customers ORDER by name ASC  but skip the first 10

SELECT * FROM customer ORDER BY first_name ASC LIMIT 5 OFFSET 10

--Insert 5 customers into the database.

INSERT INTO customer (store_id, first_name, last_name,email, address_id, activebool)
VALUES (10, 'Micheal', 'York', 'micheal_york@aol.com', '20',true) RETURNING *

--Edit the second customer’s name

UPDATE customer SET email= 'micheal_york@gmail.com' WHERE customer_id = 3 RETURNING *

--Delete the last customer

DELETE FROM customer WHERE store_id = 3 RETURNING *
