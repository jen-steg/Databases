USE [WBankOfAmerica]
GO

/****** Object:  StoredProcedure [dbo].[CIS435_Sp_employeePay_DeVore]    Script Date: 4/5/2020 12:53:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- The stored procedure should modify the employee table, such as employee HourlyPay increase.
CREATE PROCEDURE [dbo].[CIS435_Sp_employeePay_DeVore]
       @EmployeeID INT
  AS
    BEGIN
     UPDATE Employees 
     SET HourlySalary = HourlySalary * 1.25  -- increase hourly pay by 1.25
     WHERE EmployeeID = @EmployeeID  
    END
-- Jennifer DeVore
GO


