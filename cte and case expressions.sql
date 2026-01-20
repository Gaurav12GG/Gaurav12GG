CREATE TABLE sales (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    mode VARCHAR(20) NOT NULL,
    payment_date DATE NOT NULL
);
INSERT INTO sales  (amount, mode, payment_date)
VALUES
(1500.00, 'UPI', '2021-01-05'),
(2300.50, 'Cash', '2025-01-06'),
(899.99, 'Card', '2024-01-07'),
(909.99, 'Card', '2023-01-07');
select * from sales;

select amount , customer_id ,
case 
WHEN amount > 2000.50 THEN "expensive product"
WHEN amount =  1500.00 THEN "Cheaper product"
ELSE "Inexpensive product"
END AS ProductStatus
from sales;  -- this is the expression for case statement

select customer_id ,
case amount -- this is differnce between case statemnet and case expression
WHEN 2300.50 THEN "PRIME CUSTOMER"
WHEN 1500.00 THEN "PLUS CUSTOMER"
ELSE "NORMAL CUSTOMER"
END AS CustomerStatus
from sales; -- this is the  example for case expression here we diircetly pass the value not the condition 
