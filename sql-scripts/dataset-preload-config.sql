alter database gravity_books
    CHARACTER SET = 'utf8mb4'
    COLLATE = 'utf8mb4_general_ci';

alter table author convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table author;

alter table publisher convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table publisher;

alter table book_language convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table book_language;

alter table book convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table book;

alter table address convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table address;

alter table customer convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table customer;

alter table customer_address convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table customer_address;

alter table cust_order convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table cust_order;

alter table order_line convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table order_line;

alter table order_history convert to character set utf8mb4 collate utf8mb4_unicode_ci;
show create table order_history;