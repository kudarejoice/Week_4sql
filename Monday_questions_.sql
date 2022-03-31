-- 1. How many actors are there with the last name 'Wahlberg'?
select last_name, first_name
from actor 
where last_name = 'Wahlberg';
-- 2

-- 2. How many payments were made between $3.99 and $5.99?
select count(amount)
from payment 
where amount between 3.99 and 5.99;
-- 5567


-- 3. What film does the store have the most of?(search in inventory)
select film_id, count(film_id), store_id 
from inventory
where store_id = 1
group by film_id, store_id
order by COUNT(film_id) desc;
-- film 200 and 5?


-- 4. How many customers have the last name 'William'?
select COUNT(last_name)
from customer
where last_name = 'William';
-- 0


-- 5. What store employee (get the id) sold the most rentals?
select COUNT(staff_id), staff_id 
from rental
group by staff_id;
-- 1, 8,040

-- 6. How many different district names are there?
select district, COUNT(district) 
from address
group by district;
-- 378



-- 7. What film has the most actors in it? (use film_actor and get film_id)
SELECT film_id, count(film_id)
FROM film_actor
GROUP BY film_id
order by count(film_id) desc;
-- 508 16




-- 8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
select *
from customer 
where store_id = 1 and last_name like '__%es';
-- 13


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select amount, count(amount)
from payment
where customer_id between 380 and 430
group by amount
having COUNT(amount) > 250;
-- 3


-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, COUNT(rating)
from film
group by rating;
-- 5 ratings PG-13 223
