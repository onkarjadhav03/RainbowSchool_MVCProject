create database RainbowSchoolDb

use RainbowSchoolDb
--Create Subjects table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(50) NOT NULL
);

-- Create Classes table
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50) NOT NULL
);



-- Create Student table
create TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    ClassID INT FOREIGN KEY REFERENCES Classes(ClassID) on delete cascade on update cascade,
    SubjectID INT FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID) on delete cascade on update cascade
)


select * from Student
select * from Classes
select * from Subjects


