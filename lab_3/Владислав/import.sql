BULK INSERT Production.Import
FROM 'C:\temp\production.csv'
WITH
(
 FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n',
 FIRSTROW = 2
);
GO