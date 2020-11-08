![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Advanced SQL and Pivot tables


In this lab, you will be using the **movie database (sakila)**. 

### Instructions

Write the SQL queries to answer the following questions:

  - Select the first name, last name, and email address of all the customers who have rented a movie.
  - What is the average payment made by each customer (display the *customer id*, *customer name* (concatenated), and the *average payment made*).
  - Select the *name* and *email* address of all the customers who have rented the "Action" movies.

    - Write the query using multiple join statements
    - Write the query using sub queries with multiple WHERE clause and `IN` condition
    - Verify if the above two queries produce the same results or not

  - Use the case statement to create a new column classifying existing columns as either or high value transactions based on the amount of payment. If the amount is between 0 and 2, label should be `low` and if the amount is between 2 and 4, the label should be `medium`, and if it is more than 4, then it should be `high`.