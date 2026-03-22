CREATE database UniversityDB;

CREATE SCHEMA university;

Set search_path TO university;

CREATE TABLE Students(
	student_id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	birth_day date,
	email varchar unique not null 
);

CREATE TABLE Courses(
	course_id serial primary key,
	course_name varchar(100) not null,
	credits int
);

CREATE TABLE Enrollments(
	enrollment_id serial primary key,
	student_id serial references Students(student_id),
	course_id serial references Courses(course_id),
	enroll_date date
);

Select datname from pg_database;

select schema_name from information_schema.schemata;

select * from Students;

select * from courses;

select * from Enrollments;