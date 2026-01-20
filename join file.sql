CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT, FirstName VARCHAR(50) NOT NULL,LastName VARCHAR(50) NOT NULL,Phone VARCHAR(20),State CHAR(20),
  Purchase_date DATE
);
CREATE TABLE PAYMENT (PaymentID INT PRIMARY KEY AUTO_INCREMENT, CustomerID INT NOT NULL,Amount  int(100)  NOT NULL CHECK (Amount > 0),Status VARCHAR(20) NOT NULL, 
    
    -- Foreign Key Constraint
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID)
        ON DELETE CASCADE -- Optional: Deletes payments if the customer record is deleted
        ON UPDATE CASCADE -- Optional: Updates customer ID in payment table if customer ID is changed
);
INSERT INTO PAYMENT (CustomerID, Amount, Status)
VALUES(1, 1200, 'Completed'),
        (1, 800, 'Pending'),
          (2, 1500, 'Completed'),
         (3, 500, 'Failed'),
           (4, 2000, 'Completed');

select * from PAYMENT;

insert into Customer (Firstname, Lastname, Phone,State, Purchase_date)values ( 'Gaurav','thakur', 82821932,'DELHI','2020-09-09'),
                              ( 'saurabh','thakur', 8939739,'mumbai', '2022-08-29'),
						      ( 'sneha','tiwari', 943453655,'haryana', '2024-07-19'),
                              ( 'aarush','bhola', 86445364,'Dehradun', '2022-12-08'),
                              ( 'shivansh','shukla' , 89924242,'bhopal',' 2021-01-01');
select * from Customer;
drop table Customer;

select Phone, Firstname, LastName, State from  Customer
inner join  Payment 
on Customer.CustomerID = Payment.CustomerID ;

