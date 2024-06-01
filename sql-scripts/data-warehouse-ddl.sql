create database gravity_books_dwh;
create table if not exists customer (
    customer_id integer,
    customer_sk serial,
    name varchar(1000),
    country varchar(100),
    city varchar(100),
    street_name varchar(500),
    street_number varchar(100),
    primary key (customer_id, street_name, street_number)
);

create table if not exists time (
    time_id integer primary key,
    time_sk timestamp(0),
    year integer,
    month integer,
    day integer,
    hour integer,
    minute integer,
    second integer
);

create table if not exists shipping_method (
    method_id integer primary key,
    method_sk serial,
    method_name varchar(100),
    cost real
);

create table if not exists book (
    book_id integer primary key,
    book_sk serial,
    title varchar(500),
    author varchar(1000),
    publisher varchar(500),
    language varchar(100),
    publication_date date,
    pages integer
);

CREATE TABLE time (
    time_id INT PRIMARY KEY,
    time_sk SERIAL UNIQUE,  
    year INT,
    month INT,
    day INT,
    hour INT,
    minute INT,
    second INT
);

CREATE TABLE book_sales_facts (
    book_sales_facts_id SERIAL PRIMARY KEY,
    time_sk BIGINT UNSIGNED,         
    customer_sk BIGINT UNSIGNED,
    method_sk BIGINT UNSIGNED,
    book_sk BIGINT UNSIGNED,
    revenue_book_sales DECIMAL(10, 2),
    CONSTRAINT time_fk FOREIGN KEY (time_sk) REFERENCES time (time_sk), 
    CONSTRAINT customer_fk FOREIGN KEY (customer_sk) REFERENCES customer (customer_sk),
    CONSTRAINT method_fk FOREIGN KEY (method_sk) REFERENCES shipping_method (method_sk),
    CONSTRAINT book_fk FOREIGN KEY (book_sk) REFERENCES book (book_sk)
);