USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spEmployee_GetAll]    Script Date: 11/22/2022 7:44:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spEmployee_GetAll]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT E.*, EC.EC_UID FROM DBO.EMPLOYEES E
		LEFT JOIN DBO.EMPLOYEE_ACCOUNTS EC ON E.EMPLOYEEID =EC_EID;
END
