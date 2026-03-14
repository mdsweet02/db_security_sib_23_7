BULK INSERT products_import
FROM 'C:\temp\products.csv'
WITH
(
 FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n'
);