create database gravity_books_dwh;
alter database gravity_books_dwh
    CHARACTER SET = 'utf8mb4'
    COLLATE = 'utf8mb4_general_ci';

create table if not exists customer (
    customer_id int,
    name varchar(1000),
    country varchar(100),
    city varchar(100),
    street_name varchar(500),
    street_number varchar(100),
    primary key (customer_id, street_name, street_number)
);
alter table customer add customer_sk int not null unique auto_increment;

create table if not exists time (
    time_id int primary key,
    year int,
    month int,
    day int,
    hour int,
    minute int,
    second int
);
alter table time add time_sk int not null unique auto_increment;

create table if not exists shipping_method (
    method_id int primary key,
    method_name varchar(100),
    cost decimal
);
alter table shipping_method add method_sk int not null unique auto_increment;

create table if not exists book (
    book_id int primary key,
    title varchar(500),
    author varchar(1000),
    publisher varchar(500),
    language varchar(100),
    publication_date date,
    page int
);
alter table book add book_sk int not null unique auto_increment;

create table if not exists book_sales_facts (
    book_sales_facts_id int auto_increment primary key,
    time_sk int not null unique,
    customer_sk int not null unique,
    method_sk int not null unique,
    book_sk int not null unique,
    revenue_book_sales DECIMAL(10, 2),
    CONSTRAINT time_fk FOREIGN KEY (time_sk) REFERENCES time (time_sk),
    CONSTRAINT customer_fk FOREIGN KEY (customer_sk) REFERENCES customer (customer_sk),
    CONSTRAINT method_fk FOREIGN KEY (method_sk) REFERENCES shipping_method (method_sk),
    CONSTRAINT book_fk FOREIGN KEY (book_sk) REFERENCES book (book_sk)
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