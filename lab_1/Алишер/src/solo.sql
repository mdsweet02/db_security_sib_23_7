USE db;
GO
CREATE ROLE Role_ReadOnly;
GRANT SELECT
ON dbo.Example TO Role_ReadOnly;

CREATE ROLE Role_Editor;
GRANT INSERT, UPDATE, DELETE
ON dbo.Example
TO Role_Editor;

CREATE ROLE Role_Limited;
GRANT SELECT (FirstName)
ON dbo.Example
TO Role_Limited;

exec sp_addlogin 'TempUser1', ''
exec sp_adduser 'TempUser1', 'User1'
exec sp_addrolemember Role_ReadOnly, 'User1'

exec sp_addlogin 'TempUser2', ''
exec sp_adduser 'TempUser2', 'User2'
exec sp_addrolemember Role_Editor, 'User2'

exec sp_addlogin 'TempUser3', ''
exec sp_adduser 'TempUser3', 'User3'
exec sp_addrolemember Role_Limited, 'User3'


exec sp_helpuser 
EXEC sp_helprolemember 'Role_ReadOnly';
EXEC sp_helprolemember 'Role_Editor';
EXEC sp_helprolemember 'Role_Limited';
