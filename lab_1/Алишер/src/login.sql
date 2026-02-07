sp_addlogin fa 
EXEC sp_helplogins;
exec sp_addsrvrolemember 'fa', 'securityadmin'
