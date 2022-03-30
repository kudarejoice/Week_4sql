-- Question #1 
--How many actors are there with the last name ‘Wahlberg’? 
-- The answer is 2
SELECT last_name, first_name
FROM actor
WHERE last_name = 'Wahlberg';


--Question #2
--How many payments were made between $3.99 and $5.99? 
--The answer is 5607
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
s



--Question #3 -- across all stores
--What film does the store have the most of? (search in inventory)
--The answer is 0
SELECT DISTINCT film_id, store_id
FROM inventory;



--Question #4
--How many customers have the last name ‘William’? 




--Question #5
--What store employee (get the id) sold the most rentals? 



--Question #6
--How many different district names are there? 





--Question #7
--What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT (film_actor) film_id
FROM film_actor
GROUP BY actor_id
HAVING COUNT (film_id) > 1;



--Question #8
--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
--There's 21
SELECT *
FROM customer
WHERE last_name LIKE '__%es';

--Question #9
--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250) 
SELECT cutomer_id, COUNT (amount)
FROM payment
GROUP BY customer_id  BETWEEN 380 AND 430
HAVING COUNT(rentals) > 250;


--Question #10
--Within the film table, how many rating categories are there? And what rating has the most movies total? 



