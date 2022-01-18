Create database Company 

use Company 

Create table Employees 
	(
	Id int, 
	Name nvarchar(30), 
	SurName nvarchar(30), 
	Salary money
	)

Alter table Employees add Email nvarchar(30)

Insert into Employees(Id, Name, SurName, Salary,Email)
 values(1,'Sexavet','Eliyev',350,'sexavet@gmail.com'),
		(2,'Serxan','Aliyev',450,'sarxan@gmail.com'),
		(3,'David','Qayibov',500,'david@mail.ru'),
		(4,'Metin','Agayev',200,'metin@mail.ru'),
		(5,'Altan','Ibrahimov',600,'altan@mail.ru'),
		(6,'Amil','Nuriyev',300,'amil@list.ru')

select Id, (Name+' '+ SurName) 'Fulname',Salary from Employees

SELECT * FROM Employees WHERE Salary = 300 OR Salary = 400 OR Salary = 500 OR Salary = 600
select * from Employees where Salary > 100 and Salary < 500
select *from Employees WHERE LEN(Name) >=5

SELECT * FROM Employees Where LEN((Name) + (SurName)) > 10
select avg(salary) from Employees
select * from Employees where salary>(select avg(salary) from Employees)
select * from Employees where Email like '%gmail.com'
