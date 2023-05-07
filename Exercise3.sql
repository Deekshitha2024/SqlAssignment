-- cerating a database --
CREATE DATABASE Exercise3;
drop table customer;
-- CREATING A CUSTOMER TABLE --

CREATE TABLE customer(customer_id INT PRIMARY KEY NOT NULL,cust_name VARCHAR(30) NOT NULL,city VARCHAR(30) NOT NULL,grade INT,salesman_id INT NOT NULL);

-- INSERTING VALUES INTO CUSTOMER TABLE --

INSERT INTO customer VALUES (3002,"NICK Rimando","New York",100,5001),(3007,"Brad Davis","New York",200,5001),(3005,"Graha Zusi","Californis",200,5002),(3008,"Julian Green","London",300,5002),(3004,"Fabian Johnson","Paris",300,5006),(3009,"Geoff Cameron","Berlin",100,5003),(3003,"Jozy Altidor","Moscow",200,5007),(3001,"Brad Guzan","London",NULL,5005);

SELECT * FROM customer;

-- CREATING SALESMAN TABLE --
CREATE TABLE salesman(salesman_id INT PRIMARY KEY NOT NULL,name VARCHAR(30) NOT NULL,city VARCHAR(40) NOT NULL,commision FLOAT NOT NULL);

-- INSERTING VALUES INTO CUSTOMER TABLE --

INSERT INTO salesman VALUES (5001,"James Hoog","New York",0.15),(5002,"Nail Knite","Paris",0.13),(5005,"Pit Alex","London",0.11),(5006,"Mc Lyon","Paris",0.14),(5007,"Paul Adam","Rome",0.13),(5003,"Lauson Hen","San Jose",0.12);

SELECT * FROM salesman;

-- QUERY FOR GIVEN QUESTION --

SELECT customer.cust_name,customer.city,customer.grade,salesman.name AS Salesman,salesman.city FROM customer LEFT JOIN salesman ON customer.salesman_id = salesman.salesman_id WHERE grade < 100 ORDER BY customer_id ASC ;