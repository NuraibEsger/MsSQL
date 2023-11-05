USE master
CREATE DATABASE [Academy]
USE Academy

CREATE TABLE Student(
	[ID] INT PRIMARY KEY IDENTITY(1,1),
	[Name] NVARCHAR(50),
	[Surname] NVARCHAR(50),
	[Age] INT CHECK (Age>18),
	[Salary] DECIMAL(10,2),
	[Country] NVARCHAR(50)
)


INSERT INTO Student (Name, Surname, Age, Salary, Country)
VALUES('Inis', 'Ehmodev', 24, 10000.00, 'France')

SELECT * FROM Student

--6th task
SELECT TOP 1*
FROM Student
ORDER BY Age DESC;

--7th task

SELECT *
FROM Student
WHERE Surname LIKE 'E%' OR Surname LIKE 'T%'

--8th task
SELECT *
FROM Student
WHERE Country NOT LIKE '%T%'

--9th task
SELECT SUM(Age) AS TotalAge
FROM Student;

--10th task
SELECT * FROM Student ORDER BY Age DESC
SELECT * FROM Student ORDER BY Age ASC

--11th task
SELECT GETDATE() AS CurrentDate;

--12th task
SELECT Name, Country FROM Student WHERE Country LIKE 'FRANCE'

--13th task
SELECT SUM(Salary) FROM Student  WHERE AGE>=30;

--14th task
SELECT SUM(Salary) FROM Student  WHERE AGE<=25;

--15th task
SELECT DISTINCT Country FROM Student

--16th task
SELECT *
FROM Student
WHERE SUBSTRING([Name], 3, 1) = 'i';



