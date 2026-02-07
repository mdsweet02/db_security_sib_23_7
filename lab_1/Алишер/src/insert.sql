sp_adduser 'fa', 'MyFirstUser'
exec sp_addrolemember 'db_datareader', 'MyFirstUser'
exec sp_helpuser 
