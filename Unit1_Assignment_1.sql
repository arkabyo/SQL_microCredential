-- Write a select statement to return all columns and rows from the customer table.
SELECT * FROM CUSTOMER

-- Write a query to select first name, last name, and email from the customer table.
SELECT FIRST_NAME, LAST_NAME, EMAIL
FROM CUSTOMER

-- Write a query to return all rows and columns from the film table
SELECT * FROM FILM

-- Write a query to return unique rows from the release_year column in the film table.
SELECT  DISTINCT FILM.RELEASE_YEAR
FROM FILM

-- Write a query to return unique rows from the rental_rate column in the film table
SELECT DISTINCT RENTAL_RATE FROM FILM

-- A customer left us some feedback about our store.  Write a query to find her email address – for Nancy Thomas.

-- SELECT * FROM CUSTOMER 
SELECT C.FIRST_NAME, C.LAST_NAME, C.EMAIL
FROM CUSTOMER C
WHERE UPPER(C.FIRST_NAME) = 'NANCY' AND UPPER(C.LAST_NAME) = 'THOMAS'

-- We’re trying to find a customer located at a certain address ‘259 Ipoh Drive’ – can you find their phone number? 
-- SELECT A.Phone, A.ADDRESS, C.FIRST_NAME
SELECT C.First_Name, C.Last_Name, A.Phone
FROM ADDRESS A
INNER JOIN CUSTOMER C
ON A.ADDRESS_ID = C.ADDRESS_ID
WHERE UPPER(A.ADDRESS) = '259 IPOH DRIVE'

-- Write a query from the customer table, where store id is 1 and address id is greater than 150.
SELECT * FROM CUSTOMER
WHERE STORE_ID = '1' AND ADDRESS_ID > '150'

-- Write a query from the payment table where the amount is either 4.99 or 1.99.
SELECT * FROM PAYMENT
WHERE AMOUNT = '4.99' OR AMOUNT = '1.99'

-- Write a query to return a list of transitions from the payment table where the amount is greater than 5.
SELECT * FROM PAYMENT
WHERE AMOUNT > '4.99'
