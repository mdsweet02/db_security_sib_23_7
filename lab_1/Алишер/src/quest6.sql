CREATE LOGIN Andy WITH PASSWORD = '';
CREATE USER ga FOR LOGIN Andy;
exec sp_addrolemember 'db_datareader', 'ga';
GRANT select, update ON dbo.WorkOrder TO MyFirstUser;
GRANT select ON dbo.Product (Name, ListPrice) TO ga;
exec sp_helpuser;
