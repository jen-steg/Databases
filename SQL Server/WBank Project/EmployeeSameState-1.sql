USE [WBankOfAmerica]
GO

/****** Object:  View [dbo].[CIS435_EmployeeSameState_DeVore]    Script Date: 4/5/2020 12:50:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--Another view will be an Employee view, in this view you will need to get all the information 
--about those employees who work in the same state, such as state of Virginia (VA).
CREATE VIEW [dbo].[CIS435_EmployeeSameState_DeVore] AS
SELECT * FROM Employees 
WHERE State = 'CA';--Picked a State that had actual locations
--Jennifer DeVore

GO


