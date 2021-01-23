-- 1.	Create a table with the following parameters: 
-- •	CustomerID
-- •	CustomerName
-- •	Address
-- •	City
-- •	PostalCode
-- •	Country
-- •	Email

CREATE TABLE public.test_table
(
    customer_id integer NOT NULL,
    CustomerName character varying(45) COLLATE pg_catalog."default" NOT NULL,
    Address character varying(255) COLLATE pg_catalog."default" NOT NULL,
	City character varying(255) COLLATE pg_catalog."default" NOT NULL,
	PostalCode character varying(10) COLLATE pg_catalog."default" NOT NULL,
	Country character varying(45) COLLATE pg_catalog."default" NOT NULL,
	Email character varying(45) COLLATE pg_catalog."default" NOT NULL,

    CONSTRAINT customer_id_pk PRIMARY KEY (customer_id)
)
-- 2.	Insert 3 rows of data into these columns using INSERT.  The data you insert should make sense for the column.

INSERT INTO public.test_table VALUES (001, 'Avijit Roy', '1295 Greene Ave', 'Broonlyn', '11237', 'USA', 'mail@avijitroy.com');
INSERT INTO public.test_table VALUES (002, 'John Smith', '392 Broome Street', 'New York', '10013', 'USA', 'jon@smith.com');
INSERT INTO public.test_table VALUES (003, 'Jane Doe', '1001 Lexington Ave', 'New York', '10011', 'USA', 'hello@coding.com');

SELECT * FROM TEST_TABLE

-- 3.	Use an UPDATE to modify any portion of the data

UPDATE TEST_TABLE
SET EMAIL = 'UPDATED@EMAIL.COM'
WHERE CUSTOMER_ID = '003';
SELECT * FROM TEST_TABLE

-- 4.	Finally, write a statement to delete one row of data.

DELETE FROM TEST_TABLE
WHERE UPPER(CUSTOMERNAME) = 'JOHN SMITH';
SELECT * FROM TEST_TABLE

