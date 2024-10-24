-- Select the alx_book_store database
USE alx_book_store;

-- Query the INFORMATION_SCHEMA to get the full description of the 'Books' table
SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Books'
AND TABLE_SCHEMA = 'alx_book_store';
