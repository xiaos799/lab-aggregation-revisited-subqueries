use sakila;

# 1.Select the first name, last name, and email address of all the customers who have rented a movie.
select * from rental; #rental_id, customer_id,inventory_id
select * from customer;

select distinct first_name, last_name, email from customer
right join rental using (customer_id);

# 2.What is the average payment made by each customer (display the customer id, customer name (concatenated), and the average payment made).
select * from payment;
select p.customer_id, concat(c.first_name," ",c.last_name) as name, avg(p.amount) from payment p
join customer c using (customer_id)
group by customer_id;

# 3.Select the name and email address of all the customers who have rented the "Action" movies.
# Write the query using multiple join statements
# Write the query using sub queries with multiple WHERE clause and IN condition
# Verify if the above two queries produce the same results or not

select * from rental; #rental_id, customer_id,inventory_id
select * from inventory; #inventory_id, film_id
select * from film_category; #film_id, category_id
select * from category; #category_id, name

select distinct first_name, last_name, email from customer
join rental using(customer_id)
join inventory using (inventory_id)
join film_category using (film_id)
join category c using (category_id)
where c.name = 'Action';

select c.first_name, c.last_name, c.email from customer c 
where customer_id in (select customer_id from rental where inventory_id in (select inventory_id from inventory 
where film_id in (select film_id from film_category where category_id in (select category_id from category where name = 'Action'))));
# "in" clause could prevent duplicates if the most outer layer has no repeats

# 4.Use the case statement to create a new column classifying existing columns as either or high value transactions based on the amount of payment. 
# If the amount is between 0 and 2, label should be low and if the amount is between 2 and 4, the label should be medium, and if it is more than 4, 
# then it should be high.
select * from payment;

select *,
case
when 0 <= amount < 2 then 'low'
when 2 <= amount < 4 then 'medium'
when amount >= 4 then 'high' 
end as label
from payment; 



