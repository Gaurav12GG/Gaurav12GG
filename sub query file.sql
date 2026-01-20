CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    mode VARCHAR(20) NOT NULL,
    payment_date DATE NOT NULL
);
CREATE TABLE PAYER (
customer_id INT ,
firstname char(20),
lastname char(20)
);
INSERT INTO PAYER VALUES (1 , 'GAURAV','TAHKUR'),(6,'SIRI','TIWARI'),(4,'SAURABH','SHUKLA');
DROP TABLE PAYER;
SELECT * FROM PAYER;
INSERT INTO customer (amount, mode, payment_date)
VALUES
(1500.00, 'UPI', '2021-01-05'),
(2300.50, 'Cash', '2025-01-06'),
(899.99, 'Card', '2024-01-07'),
(909.99, 'Card', '2023-01-07');
drop table customer;
select * from customer;

select avg(amount) from customer ;
select * from customer 
where amount > (select avg(amount) from customer);

select firstname, lastname from PAYER P 
Where exists (select customer_id , amount
from customer c 
where c.customer_id = P.customer_id
AND   amount > 1000);


-- this is a subauery to learn from two tables





                       