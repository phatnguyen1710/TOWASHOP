USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spSupplier_GetByValue]    Script Date: 10/29/2022 3:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCustomer_GetByValue]
	-- Add the parameters for the stored procedure here
	@SEARCHVALUE nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON
	SELECT DISTINCT C.* FROM DBO.CUSTOMERS C
	LEFT JOIN DBO.CUSTOMER_ORDERS CO ON C.CUSTOMERID = CO_CTID
	WHERE C.CID LIKE @SEARCHVALUE 
	   OR CO.CO_OID LIKE @SEARCHVALUE 
	   OR C.FIRST_NAME LIKE  @SEARCHVALUE 
	   OR C.LAST_NAME LIKE  @SEARCHVALUE 
	   OR C.LAST_NAME LIKE @SEARCHVALUE 
	   OR C.CONTACT_PHONE LIKE @SEARCHVALUE 
	   OR C.SL_ADDRESS LIKE @SEARCHVALUE
	   OR C.CITY LIKE @SEARCHVALUE
	   OR C.COUNTRY LIKE @SEARCHVALUE
	   OR C.CONTENT LIKE @SEARCHVALUE
	ORDER BY C.CUSTOMERID DESC;



END
