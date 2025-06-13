CREATE TABLE book(book_id serial primary key,
title varchar(255) not null,
description text,
published_year int);

INSERT INTO book (title, description, published_year)
VALUES ('The Avengers: End Game', 'American Marvel Comic Movie', 2019),
    ('The Great Gatsby', 'A novel by F. Scott Fitzgerald', 1925),
    ('To Kill a Mockingbird', 'A novel by Harper Lee', 1960),
    ('1984', 'A novel by George Orwell', 1949),
	('The starnger', 'A novel by Albert Camus', 1942);

ALTER TABLE book
ADD COLUMN author varchar (255);

ALTER TABLE book
DROP COLUMN author;

SELECT * FROM book

SELECT title, published_year FROM book

SELECT published_year FROM book WHERE published_year>2000

--rename the title of these two columns
SELECT title AS book_title, description AS book_description FROM book

ALTER TABLE book
RENAME COLUMN description TO book_description;

ALTER TABLE book
RENAME TO book_sales

ALTER TABLE book
ADD CONSTRAINT book_pkey PRIMARYKEY (book_id);

UPDATE book
SET published_year= 1999
WHERE title='The stranger'

DELETE FROM book
WHERE title='The stranger'

DROP TABLE IF EXISTS book;