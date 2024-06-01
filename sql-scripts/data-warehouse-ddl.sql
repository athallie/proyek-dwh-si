CREATE DATABASE gravity_books_dwh;
ALTER DATABASE gravity_books_dwh
    CHARACTER SET = 'utf8mb4'
    COLLATE = 'utf8mb4_general_ci';

CREATE TABLE IF NOT EXISTS customer (
    customer_id INT,
    customer_sk SERIAL,
    name VARCHAR(1000),
    country VARCHAR(100),
    city VARCHAR(100),
    street_name VARCHAR(500),
    street_number VARCHAR(100),
    PRIMARY KEY (customer_id, street_name, street_number)
);

CREATE TABLE IF NOT EXISTS time (
    time_id INT PRIMARY KEY,
    time_sk SERIAL UNIQUE,
    year INT,
    month INT,
    day INT,
    hour INT,
    minute INT,
    second INT
);

CREATE TABLE IF NOT EXISTS shipping_method (
    method_id INT PRIMARY KEY,
    method_sk SERIAL,
    method_name VARCHAR(100),
    cost DECIMAL
);

CREATE TABLE IF NOT EXISTS book (
    book_id INT PRIMARY KEY,
    book_sk SERIAL,
    title VARCHAR(500),
    author VARCHAR(1000),
    publisher VARCHAR(500),
    language VARCHAR(100),
    publication_date DATE,
    pages INT
);

CREATE TABLE IF NOT EXISTS book_sales_facts (
    book_sales_facts_id SERIAL PRIMARY KEY,
    time_sk BIGINT UNSIGNED,
    customer_sk BIGINT UNSIGNED,
    method_sk BIGINT UNSIGNED,
    book_sk BIGINT UNSIGNED,
    revenue_book_sales DECIMAL(10, 2),
    CONSTRAINT time_fk FOREIGN KEY (time_sk) REFERENCES time (time_sk),
    CONSTRAINT customer_fk FOREIGN KEY (customer_sk) REFERENCES customer (customer_sk),
    CONSTRAINT method_fk FOREIGN KEY (method_sk) REFERENCES shipping_method (method_sk),
    CONSTRAINT book_fk FOREIGN KEY (book_sk) REFERENCES book(book_sk)
);

/*Delete All*/

/*delete from customer;
drop table customer;

delete from time;
drop table time;

delete from shipping_method;
drop table shipping_method;

delete from book;
drop table book;

delete from book_sales_facts;
drop table book_sales_facts;*/