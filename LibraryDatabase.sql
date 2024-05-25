CREATE DATABASE library;
use library;
CREATE TABLE student_registration (
    StudentId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(255),
   Course VARCHAR(255),
   Branch VARCHAR(255),
  Semester VARCHAR(255)
);

SELECT *FROM student_registration;
DROP TABLE add_books;
create table add_books(
 BookId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   BookName VARCHAR(255),
    Publisher VARCHAR(255),
       Price  Int,
    Year INT
);
select *from add_books;


CREATE TABLE issue_book (
    IssueID INT NOT NULL AUTO_INCREMENT,
   StudentID INT NOT NULL,
  BookID INT NOT NULL,
    IssueDate DATETIME NULL,
    ReturnDate DATETIME NULL,
    PRIMARY KEY (IssueID),
    FOREIGN KEY (BookID) REFERENCES add_books(BookId),
    FOREIGN KEY (StudentID) REFERENCES student_registration(StudentId)
);
select*from issue_book;

    CREATE TABLE return_book (
    ReturnID INT NOT NULL AUTO_INCREMENT,
  StudentID INT NOT NULL,
   BookID INT NOT NULL,
    ReturnDate DATETIME NULL,
     DayElap INT, 
    Fine DECIMAL(10, 2),
   PRIMARY KEY (ReturnID),
   FOREIGN KEY (BookID) REFERENCES add_books(BookId),
    FOREIGN KEY (StudentID) REFERENCES student_registration(StudentId)
    );
    select*from return_book;
   



