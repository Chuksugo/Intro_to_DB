-- Select the alx_book_store database
USE alx_book_store;

-- Query the INFORMATION_SCHEMA to get the full description of the 'books' table
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE, COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'books'
AND TABLE_SCHEMA = 'alx_book_store';