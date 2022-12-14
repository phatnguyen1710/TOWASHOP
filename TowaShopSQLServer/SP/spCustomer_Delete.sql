USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spSupplier_Delete]    Script Date: 10/29/2022 3:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCustomer_Delete]
	-- Add the parameters for the stored procedure here
	@CUSTOMERID nvarchar(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DELETE FROM  DBO.CUSTOMERS 
	WHERE CUSTOMERID  = @CUSTOMERID;
END
