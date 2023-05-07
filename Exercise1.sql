-- CREATING DATABSE --
CREATE DATABASE Exercise1;

-- CREATING DOCTORS TABLE --
CREATE TABLE Doctor(Doctor_Id INT PRIMARY KEY,Doctor_Name VARCHAR(30) NOT NULL,specialization VARCHAR(40) NOT NULL);

 -- CREATING PATIENT TABLE --
 CREATE TABLE Patient(Patient_Id INT PRIMARY KEY NOT NULL,Patient_Name VARCHAR(30),Age INT);
 
 -- CREATING APPOINTMENTS TABLE --
 CREATE TABLE Appointment(Appointment_Id INT PRIMARY KEY,Doctor_Id INT ,Patient_Id INT,Appointment_date DATE NOT NULL,Appointment_Time TIME NOT NULL,FOREIGN KEY(Doctor_Id) REFERENCES Doctor(Doctor_ID),FOREIGN KEY(Patient_Id) REFERENCES Patient(Patient_Id));
   

-- CREATING REVIEW TABLE --
CREATE TABLE Review(Review_Id INT PRIMARY KEY NOT NULL,Doctor_Id INT,Patient_Id INT,Feedback varchar(100) NOT NULL,Rating INT NOT NULL,FOREIGN KEY(Doctor_Id) REFERENCES Doctor(Doctor_Id),FOREIGN KEY(Patient_Id)REFERENCES Patient(Patient_Id));

-- INSERTING VALUES INTO DOCTOR TABLE --
INSERT INTO Doctor VALUES(101,"Deeksha","Orthopedics"),(102,"Teju","Neurology"),(103,"Shiva","Cardiology"),(104,"Deepthi","Pathology"),(105,"shashi","Dermatology");

-- INSERTING VALUES INTO PATIENT TABLE --
INSERT INTO Patient VALUES(501,"Yasoda",45),(502,"Aruna",18),(503,"Mahitha",25),(504,"Manasa",20),(505,"Gayathri",45);

-- INSERTUNG VALUES INTO APPOINTMENT TABLE --
INSERT INTO Appointment VALUES(1001,102,501,"2023-05-4","9:00:00"),(1002,101,501,"2023-05-4","10:15:00"),(1003,103,503,"2023-05-5","10:00:00");

-- INSERTING VALUES INTO REVIEW TABLE --
INSERT INTO Review VALUES(1,102,501,"helpful",4),(2,101,501,"it was a great treatment",5),(3,103,503,"Nice treatment",4);

SELECT * FROM Doctor;
SELECT * FROM Patient;
SELECT * FROM Appointment;
SELECT * FROM Review;
