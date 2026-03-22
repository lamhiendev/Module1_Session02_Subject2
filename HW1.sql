CREATE DATABASE LibraryDB;

CREATE SCHEMA library;

SET search_path to library;

create table Books(
	book_id serial primary key,
	title varchar(100) not null,
	author varchar(50) not null,
	published_year int,
	price numeric(10,2)
);
-- Xem tất cả các database
select datname from pg_database;
-- Xem tất cả schema trong database
select schema_name from information_schema.schemata;
-- Xem cấu trúc bảng books
select * from books;