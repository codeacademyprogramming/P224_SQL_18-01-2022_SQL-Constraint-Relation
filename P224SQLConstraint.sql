Create Database P224Constraint

Use P224Constraint

drop Table Students

Create Table Students
(
	Id int primary key identity,
	Name nvarchar(20) CONSTRAINT CK_NAME Check(Len(Name) >= 3),
	Age int CONSTRAINT CK_AGE Check(Age > 16),
	Email nvarchar(100)
)

Alter Table Students
ADD CONSTRAINT UQ_EMAIL unique(Email)

Alter Table Students
DROP CONSTRAINT UQ_EMAIL unique(Email)

Alter Table Students
Add Id int

