CREATE DATABASE If Not Exists Test;

USE Test;

CREATE TABLE Student_Info (
Student_Id int primary key not null unique,
Student_Name varchar(10) not null,
Student_Age int not null,
Student_gender ENUM ("Male","Female") not null
);

CREATE TABLE Placement (
Student_Id int not null,
Placement_Id Int primary key not null unique,
Placement_Name varchar(10) not null,
Placement_Salary Bigint not null,
FOREIGN KEY (Student_Id) REFERENCES Student_Info (Student_Id));

INSERT INTO Student_Info VALUES
(1,'Ajay',20,"Male"),
(2,'Isha',22,"Female");

INSERT INTO Placement VALUES
(1,11,'ABC',15000),
(2,22,'PQR',20000);

SELECT * FROM Student_Info;
SELECT * FROM Placement;


-- S = Student_Info
-- P = Placement
SELECT S.Student_Name, S.Student_Age,S.Student_Gender,
	   P.Placement_Name,P.Placement_salary
FROM Student_Info
JOIN Placement
ON S.Student_Id = P.Student_Id;
