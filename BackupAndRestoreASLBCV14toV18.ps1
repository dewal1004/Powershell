BACKUP DATABASE [Atlantic ASL V14toV18] 
  TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.ASLHO2016\MSSQL\Backup\Atlantic ASL V14toV18.bak' 
  WITH NOFORMAT, NOINIT,  NAME = N'Atlantic ASL V14toV18-Full Database Backup', 
  SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

USE [master]
ALTER DATABASE [Atlantic ASL V18fromV14] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

USE [master]
RESTORE DATABASE [Atlantic ASL V18fromV14] 
  FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.ASLHO2016\MSSQL\Backup\Atlantic ASL V14toV18.bak' 
  WITH  FILE = 3,  
  MOVE N'Demo Database NAV (9-0)_Data' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.ASLHO2016\MSSQL\DATA\Atlantic ASL V18fromV14 new.mdf',  
  MOVE N'Demo Database NAV (9-0)_Log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.ASLHO2016\MSSQL\DATA\Atlantic ASL V18fromV14 new_1.ldf',  
  NOUNLOAD,  STATS = 5
GO


