-- Cloning a table in SQL means making a duplicate copy of an existing table. 
  It's like making a backup so that we can experiment or work with the data without affecting the original table. 
  This saves our the time and effort of creating a completely new table and re-entering all the same data. 
  Cloning can be done with or without data:
  
With Data: The clone table includes the structure and rows of the original table.
Without Data: Only the structure of the original table is copied.

-- 1. Simple Cloning
In this method, the clone table creates a copy of the original table’s structure and data, 
but constraints like primary keys, unique keys, and auto-increment properties are not preserved.

Syntax:
CREATE TABLE clone_table SELECT * FROM original_table;

Example:
CREATE TABLE STUDENT_COPY  SELECT * FROM STUDENT;
SELECT * FROM STUDENT_COPY;


-- 2. Shallow Cloning
Shallow cloning is the method in which the clone table gets the same structure as the original table, 
  but it does not inherits or copy the data from the original table. 
  In other words, we will have the empty table including indices such as primary key, unique key, and auto_increment. 
  It also preserves constraints like primary keys and unique keys.

Syntax:
CREATE TABLE clone_table  LIKE original_table;

Example:
CREATE TABLE STUDENT_SHALLOW_CLONE LIKE STUDENT;
SELECT * FROM STUDENT_SHALLOW_CLONE;

-- 3. Deep Cloning
This method is widely used for creating the clone tables in SQL 
  as it inherits all the properties of the original table including indices such as primary key, unique, and auto_increment 
  as well as inherits the existing data from the original table.

Syntax:

CREATE TABLE clone_table LIKE original_table;
INSERT INTO clone_table SELECT * FROM original_table;

Example:

CREATE TABLE STUDENT_DEEP_CLONE LIKE STUDENT;
INSERT INTO STUDENT_DEEP_CLONE SELECT * FROM STUDENT;
SELECT * FROM STUDENT_DEEP_CLONE;
































