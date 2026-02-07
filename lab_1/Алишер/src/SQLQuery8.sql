exec sp_droprolemember 'db_datareader', 'MyFirstUser'
exec sp_dropuser 'MyFirstUser'
exec sp_dropsrvrolemember 'fa', 'securityadmin'
exec sp_droplogin 'fa'