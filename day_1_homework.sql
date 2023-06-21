-- Homework 

-- Question 1
-- How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name) as last_name_wahlberg
FROM actor
WHERE last_name = 'Wahlberg';
-- There are 2 actors with the last name Wahlberg

-- Question 2
-- How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount) as pay_between
FROM payment
WHERE amount between 3.99 and 5.99;
-- There are 5,607 payments between 3.99 and 5.99

-- Question 3
-- What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- Multiple films are tied at 8

-- Question 4
-- How many customers have the last name ‘William’?
SELECT COUNT(last_name) as last_name_william
FROM customer
WHERE last_name = 'William';
-- There is no one with the last name of William

-- Question 5
-- What store employee (get the id) sold the most rentals?
SELECT COUNT(staff_id)
FROM rental
WHERE staff_id = 1;

-- Question 6
-- How many different district names are there?
SELECT COUNT(city_id), district
FROM address
GROUP BY district
ORDER BY COUNT(city_id);

-- Question 7
-- What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- Question 8
-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name), store_id
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1
GROUP BY store_id;

-- Question 9
-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount), amount
FROM payment
WHERE customer_id
BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250;

-- Question 10
-- Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT COUNT(title), rating
FROM film
GROUP BY rating
ORDER BY count(title) DESC;

