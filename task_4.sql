-- task_4.sql
-- Script to print the full description of the 'books' table in the database

SELECT COLUMN_NAME AS 'Column',
       COLUMN_TYPE AS 'Type',
       IS_NULLABLE AS 'Nullable',
       COLUMN_KEY AS 'Key',
       COLUMN_DEFAULT AS 'Default',
       EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'  -- Database name
  AND TABLE_NAME = 'books'
ORDER BY ORDINAL_POSITION;
