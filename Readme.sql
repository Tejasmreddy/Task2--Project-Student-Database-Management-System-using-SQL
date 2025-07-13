

1.Database Setup
Create a database named "student_database."
Create a table called " student_table " with the following columns: Student_id (integer),
Stu_name (text), Department (text), email_id (text ),Phone_no (numeric), Address (text),
Date_of_birth (date), Gender (text), Major (text), GPA (numeric),Grade (text) should be A,B,C
etc.

CREATE TABLE student_table (
    Student_id INTEGER PRIMARY KEY,
    Stu_name TEXT NOT NULL,
    Department TEXT,
    email_id VARCHAR(100) UNIQUE,
    Phone_no NUMERIC(10),
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT CHECK (Gender IN ('Male', 'Female')),
    Major TEXT,
    GPA NUMERIC(3,2),
    Grade TEXT CHECK (Grade IN ('A', 'B', 'C'))

2.Data Entry
Insert 10 sample records into the "student_table" using INSERT command.

INSERT INTO student_table 
(Student_id, Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade) 
VALUES
(1, 'John Smith', 'Computer Science', 'john.s@email.com', 1234567890, '123 Oak Street', '2000-05-15', 'Male', 'Software Engineering', 8.5, 'A'),
(2, 'Sarah Johnson', 'Electronics', 'sarah.j@email.com', 2345678901, '456 Pine Ave', '2001-07-22', 'Female', 'Digital Systems', 9.2, 'A'),
(3, 'Michael Brown', 'Mechanical', 'michael.b@email.com', 3456789012, '789 Maple Dr', '2000-03-10', 'Male', 'Thermodynamics', 7.5, 'B'),
(4, 'Emily Davis', 'Computer Science', 'emily.d@email.com', 4567890123, '321 Elm Road', '2001-11-30', 'Female', 'Data Science', 8.8, 'A'),
(5, 'James Wilson', 'Electronics', 'james.w@email.com', 5678901234, '654 Cedar Lane', '2000-09-25', 'Male', 'Communications', 5.5, 'C'),
(6, 'Emma Taylor', 'Mechanical', 'emma.t@email.com', 6789012345, '987 Birch Blvd', '2001-04-18', 'Female', 'Robotics', 7.8, 'B'),
(7, 'David Martinez', 'Computer Science', 'david.m@email.com', 7890123456, '147 Spruce St', '2000-12-05', 'Male', 'Cybersecurity', 9.5, 'A'),
(8, 'Sophia Lee', 'Electronics', 'sophia.l@email.com', 8901234567, '258 Willow Way', '2001-02-14', 'Female', 'Microelectronics', 7.2, 'B'),
(9, 'William Clark', 'Mechanical', 'william.c@email.com', 9012345678, '369 Ash Ave', '2000-08-20', 'Male', 'Automotive', 5.8, 'C'),
(10, 'Olivia White', 'Computer Science', 'olivia.w@email.com', 9876543210, '741 Palm St', '2001-06-08', 'Female', 'AI', 9.8, 'A');


3.Student Information Retrieval
Develop a query to retrieve all students' information from the "student_table" and sort them in
descending order by their grade.

Select *
from student_table 
order by grade desc


4.Query for Male Students:
.Implement a query to retrieve information about all male students from the "student_table."

INSERT INTO student_table 
(Student_id, Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade) 
VALUES
(1, 'James Wilson', 'Electronics', 'james.w@email.com', 5678901234, '654 Cedar Lane', '2000-09-25', 'Male', 'Communications', 4.5, 'C'),
(2, 'William Clark', 'Mechanical', 'william.c@email.com', 9012345678, '369 Ash Ave', '2000-08-20', 'Male', 'Automotive', 3.8, 'C');

select *
from student_table
where gpa < 5.0



5.Query for Students with GPA less than 5.0
Create a query to fetch the details of students who have a GPA less than 5.0 from the
"student_table."


INSERT INTO student_table 
(Student_id, Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade) 
VALUES
(1, 'James Wilson', 'Electronics', 'james.w@email.com', 5678901234, '654 Cedar Lane', '2000-09-25', 'Male', 'Communications', 4.5, 'C'),
(2, 'William Clark', 'Mechanical', 'william.c@email.com', 9012345678, '369 Ash Ave', '2000-08-20', 'Male', 'Automotive', 3.8, 'C');

select *
from student_table
where gpa < 5.0


6.Update Student Email and Grade
Write an update statement to modify the email and grade of a student with a specific ID in the
"student_table."



select stu_name, date_of_birth,grade,
timestampdiff(year, date_of_birth, curdate()) as age
from student_table
where grade = 'b'


7.Query for Students with Grade "B"
Develop a query to retrieve the names and ages of all students who have a grade of "B" from
the "student_table."

select stu_name, date_of_birth,grade,
timestampdiff(year, date_of_birth, curdate()) as age
from student_table
where grade = 'b'


8.Grouping and Calculation
Create a query to group the "student_table" by the "Department" and "Gender" columns and
calculate the average GPA for each combination.


select department, gender, count(gender) as totalgender, round(avg(gpa),2) as averagegpa
from student_table
group by department, gender
order by department, gender


9.Table Renaming
Rename the "student_table" to "student_info" using the appropriate SQL statement.


Alter table student_table
rename to student_info

10.Retrieve Student with Highest GPA
Write a query to retrieve the name of the student with the highest GPA from the
"student_info" table

select*
from student_info
order by gpa desc
limit 1 ;
	