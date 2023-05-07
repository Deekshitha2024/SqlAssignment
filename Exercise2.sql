CREATE DATABASE excercise2;

-- creating a contact table --

CREATE TABLE CONTACT(Id INT PRIMARY KEY,Email VARCHAR(50) NOT NULL,fname VARCHAR(30) NOT NULL,lname VARCHAR(40) NOT NULL,company varchar(30) not null,Active_flag INT,opt_out INT); 

-- inserting values into table --

INSERT INTO CONTACT VALUES(123,"a@a.com","Klan","Seth","ABC",1,1),(133,"b@a.com","Neha","Seth","ABC",1,0),(234,"c@c.com","Puru","Malik","CDF",0,0),(342,"d@d.com","Sid","Maan","TEG",1,0);
-- displaying table data --

SELECT * FROM CONTACT;

-- QUESTION 1 --

SELECT * FROM CONTACT WHERE Active_flag = 1;

-- QUESTION 2 --
 
 UPDATE  CONTACT SET Active_flag = 0 WHERE opt_out = 1; 
 
 -- QUESTION 3--
 
 DELETE FROM CONTACT WHERE company = "ABC";
 
 -- QUESTION 4 --
 
 INSERT INTO CONTACT VALUES(658,"mili@gmail.com","mili","Sekh","DGH",1,1);
 
 -- question 5 --
 
 SELECT DISTINCT company FROM CONTACT;
 
 -- QUESTION 6 --
 
 UPDATE CONTACT SET fname = "niti" WHERE Id = 658;
 
 
 
 
 


