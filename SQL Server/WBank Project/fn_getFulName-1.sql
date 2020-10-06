USE [WBankOfAmerica]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_getFulName]    Script Date: 4/3/2020 11:45:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Name the function fn_getFulName with 2 input parameters (first name and last name)
--The function will return a full name based on the available data stored in Customers table.
ALTER FUNCTION [dbo].[fn_getFulName]( @firstname nchar(50), @lastname nchar(50))
RETURNS nchar(100) 
AS
BEGIN
    Declare @fullname nchar(100);
    SELECT @fullname = FirstName + ' ' + LastName FROM Customers 
    RETURN  @fullname
END
-- Jennifer DeVore