

--Create a database NIKHIL ANALYTICS
create database NIKHIL_ANALYTICS;

--1.Create STUDENT_INFO table with following columns
create table STUDENT_INFO
(
STUDENT_ID varchar(10) Primary key,
NAME varchar(20),
ADDRESS varchar(90),
PHONE_NO int not null check (PHONE_NO between 0 and 9999999999),
EMAIL_ID varchar(30),
QUALIFICATION1 varchar(50),
QUALIFICATION2 varchar(50),
EXPERIENCE float,
COMPANY_NAME varchar(50),
COURSE_OPTED1 varchar(50) NOT NULL CHECK ([COURSE_OPTED1] IN ('REPORTING ANALYSIS POWER PACK','BUSINESS ANALYTICS POWER PACK','DATA ANALYTICS POWER PACK','DATA SCIENCE MODELLING & MACHINE LEARNING')),
COURSE_OPTED2 varchar(50) NOT NULL CHECK ([COURSE_OPTED2] IN ('REPORTING ANALYSIS POWER PACK','BUSINESS ANALYTICS POWER PACK','DATA ANALYTICS POWER PACK','DATA SCIENCE MODELLING & MACHINE LEARNING')),
COURSE_OPTED3 varchar(50) NOT NULL CHECK ([COURSE_OPTED3] IN ('REPORTING ANALYSIS POWER PACK','BUSINESS ANALYTICS POWER PACK','DATA ANALYTICS POWER PACK','DATA SCIENCE MODELLING & MACHINE LEARNING')),
ADMISSION_DATE Date not null,
EXPECTED_End_date 
As CASE 

WHEN course_opted1='REPORTING ANALYSIS POWER PACK' THEN dateadd(month,3,ADMISSION_DATE)
WHEN course_opted1='BUSINESS ANALYTICS POWER PACK' THEN dateadd(month,6,ADMISSION_DATE)
WHEN course_opted1='DATA ANALYTICS POWER PACK' THEN dateadd(month,7,ADMISSION_DATE)
WHEN course_opted1='DATA SCIENCE MODELLING & MACHINE LEARNING' THEN dateadd(month,8,ADMISSION_DATE)
WHEN course_opted2='REPORTING ANALYSIS POWER PACK' THEN dateadd(month,3,ADMISSION_DATE)
WHEN course_opted2='BUSINESS ANALYTICS POWER PACK' THEN dateadd(month,6,ADMISSION_DATE)
WHEN course_opted2='DATA ANALYTICS POWER PACK' THEN dateadd(month,7,ADMISSION_DATE)
WHEN course_opted2='DATA SCIENCE MODELLING & MACHINE LEARNING' THEN dateadd(month,8,ADMISSION_DATE)
WHEN course_opted3='REPORTING ANALYSIS POWER PACK' THEN dateadd(month,3,ADMISSION_DATE)
WHEN course_opted3='BUSINESS ANALYTICS POWER PACK' THEN dateadd(month,6,ADMISSION_DATE)
WHEN course_opted3='DATA ANALYTICS POWER PACK' THEN dateadd(month,7,ADMISSION_DATE)
WHEN course_opted3='DATA SCIENCE MODELLING & MACHINE LEARNING' THEN dateadd(month,8,ADMISSION_DATE)
End
)

select * from STUDENT_INFOS;


--2.Create R_marks_info table with following columns

create table R_marks_info
(
Student_ID varchar(10) not null foreign key references student_info,
Class_start_Date date,
Class_End_Date date,
Faculty varchar(50) not null,
Test_1 float,
Test_2 float,
Test_3 float,
Retest1 float,
Retest2 float,
Retest3 float)


--3..Create SAS_marks_info table

create table SAS_marks_info
(
Student_ID varchar(10) not null foreign key references student_info,
Class_start_Date date,
Class_End_Date date,
Faculty varchar(30),
MT_1 float,
MT_2 float,
Data_step_test float,
MT_3 float,
Proc_Test float,
Base_SAS_Test float,
Retest1 float,
Retest2 float,
Retest3 float)

--4 Create SQL_marks_info table 

create table SQL_marks_info
(
Student_ID varchar(10),
Class_start_Date date,
Class_End_Date date,
Faculty varchar(20),
SQL_test1 float,
SQL_test2 float,
Retest1 float,
Retest2 float)


--5. Create EXCEL_marks_info table 

create table EXCEL_marks_info
(
Student_ID varchar(10) not null foreign key references student_info,
Class_start_Date date,
Class_End_Date date,
Faculty varchar(20),
Basic_excel_test float,
MT1 float,
Excel_test1 float,
Retest float)


--6. Create VBA_marks_info table
create table VBA_marks_info
(
Student_ID varchar(10) not null foreign key references student_info,
Class_start_Date date,
Class_End_Date date,
Faculty varchar(20),
Function_excel_Test float,
Function_vba_test float,
Final_test float,
Retest1 float)


--7.Create TABLEAU_marks_info table
create table  TABLEAU_marks_info
(
Student_ID varchar(10) not null foreign key references student_info,
Class_start_Date date,
Class_End_Date date,
Faculty varchar(20),
MT1 float,
Test1 float,
Retest1 float)



--8.Create PYTHON_marks_info table
create table  PYTHON_marks_info
(
Student_ID varchar(10) not null foreign key references student_info,
Class_start_Date date,
Class_End_Date date,
Faculty varchar(20),
Test1 float,
Test2 float,
Retest1 float,
Retest2 float)



--9.Create ML_marks_info table 
create table  ML_marks_info

(
Student_ID varchar(10) not null foreign key references student_info,
Class_start_Date date,
Class_End_Date date,
Faculty varchar(20),
Test1 float,
Test2 float,
Retest float)


--10.Create ASAS_marks_info table

create table ASAS_marks_info
(
Student_ID varchar(10) not null foreign key references student_info,
Class_start_Date date,
Class_End_Date date,
Faculty varchar(20),
Test1 float,
Test2 float,
Final_test float,
Retest float)

--11.Create FULL_LENGTH_marks_info table

create table FULL_LENGTH_marks_info
(
Student_ID varchar(10) not null foreign key references student_info,
Class_start_Date date,
Class_End_Date date,
Faculty varchar(20),
R_test float,
SAS_test float,
SQL_test float,
Excel_test float,
VBA_test float,
Python_test float,
Tableau_test float)


--12..Create Placement_Activity table
create table Placement_Activity
(
Student_ID varchar(10) not null foreign key references student_info,
Mock_interview1 varchar(50),
Mock_interview2 varchar(50),
Mock_interview3 varchar(50),
Resume Finalised varchar(50),
Profile_Building varchar(50),
Certificate_Issued yes_no BIT,
Actual_course_enddate date)



























