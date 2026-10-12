Drop table if exists Student;
Create table if not exists Student(
    ROLL_NO TEXT PRIMARY KEY,
    NAME TEXT NOT NULL,
    ADDRESS TEXT,
    PHONE TEXT,
    AGE INTEGER,
);

--Insert sample data into the STUDENT table
INSERT INTO Student(ROLL_NO, NAME, ADDRESS, PHONE,AGE)VALUES
('1','Sara','New York','******',18),
('2','Redwan','Riyadh','******',18),
('3','Ramesh','Gurgaon','******',19),
('4','Tebi','Cyprus','******',20);

--Select all records from the Student table to verify insertion
SELECT * FROM Student;
--Query students who are 18 years old and live in New York
SELECT * FROM Student WHERE AGE = 18 AND ADDRESS = 'New York';
--Query students who are 18 years old and named Sara
SELECT * FROM Student WHERE AGE = 18 AND NAME = 'Sara';
--Query students named Sara or Ramesh
SELECT * FROM Student WHERE NAME = 'Sara' OR 'Ramesh';

--Query students named Sara or aged 20
SELECT * FROM Student WHERE NAME = 'Sara' OR AGE = 20;

--Query students ages 18 and named sara or redwan
SELECT * FROM Student WHERE AGE = 18 AND (NAME = 'Sara' OR NAME = 'Redwan');


