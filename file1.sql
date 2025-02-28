-- to run specific section select and run
-- if you have database then only can use it else will give error
CREATE DATABASE NewCafe;
USE NewCafe;
--creating table into db
CREATE TABLE categories (
    CategoryID INT NOT NULL PRIMARY KEY, 
    CategoryName NVARCHAR(50) NOT NULL,
    ItemDescription NVARCHAR(50) NOT NULL
);
--adding data into table
INSERT INTO categories (CategoryID, CategoryName, ItemDescription)
VALUES
(1, 'Beverages', 'Soft Drinks'),
(2, 'Condiments', 'Sweet and Savory Sauces'), 
(3, 'Confections', 'Sweet Breads');
--selecting all data of table
SELECT * FROM categories;

--think before using, it will permananetly delete table and data from db
--drop database NewCafe;
--DROP TABLE categories;

--used to delete only rows, can retrive data
begin transaction;
delete from categories where CategoryName='Condiments' and ItemDescription='Sweet Breads';
rollback;
--delete from categories

-- truncate will just delete all data from table but structure will be there

--exec categories;
--show database;

--alter table categories change column CategoryName to CategoryNames
--alter table categories rename to Categories;
alter table categories add ExtraColumn int;
--ALTER TABLE categories MODIFY COLUMN ExtraColumn varchar;

--to copy one table to another, read its limitations also
--limitations like coping with as keyword does not copy constraints like primary key,...
--https://www.geeksforgeeks.org/sql-query-to-copy-duplicate-or-backup-table/?ref=lbp

--Temporary tables are automatically deleted when the session or transaction that created them ends, making them perfect for temporary or intermediate data storage. They are particularly useful in situations where you need to perform calculations or data transformations without changing the permanent database structure.

--select * from sys.databases;