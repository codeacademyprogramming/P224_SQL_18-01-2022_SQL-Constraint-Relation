Create Database P224Reletions

Use P224Reletions

Create Table Students
(
	Id int primary key identity,
	Name nvarchar(20),
	IdentityCardId int references IdentityCards(Id)
)

Create Table IdentityCards
(
	Id int primary key identity,
	PIN nvarchar(7),
	Seria nvarchar(3),
	Number int
)

Create Table Educations
(
	Id int primary key identity,
	Name nvarchar(30),
	StudentId int references Students(Id)
)

Create Table Groups(
	Id int primary key identity,
	Name nvarchar(20),
	Size int
)

Create Table StudentsGroups
(
	Id int primary key identity,
	StudentId int references Students(Id),
	GroupId int references Groups(Id)
)

Select * From StudentsGroups Where GroupId = 1