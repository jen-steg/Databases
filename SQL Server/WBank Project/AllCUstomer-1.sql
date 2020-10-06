USE [WBankOfAmerica]
GO

/****** Object:  View [dbo].[v_AllCUstomer]    Script Date: 4/5/2020 12:47:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--One view will get the customers’ name, address and phone number with deposit over $1000.00.
CREATE VIEW [dbo].[CIS435_AllCUstomer_DeVore] AS
SELECT FirstName, LastName, Address, PhoneNumber
FROM Customers C
JOIN Deposits D ON 
C.CustomerID = D.CustomerID
WHERE DepositAmount > 1000;
-- Jennifer DeVore
GO


