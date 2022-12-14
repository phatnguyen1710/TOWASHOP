USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spCustomerOrder_GetByValue]    Script Date: 10/30/2022 9:38:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spCustomerOrder_GetByValue]
	@VALUE NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT CO_ID, CO_CTID, O.* FROM CUSTOMER_ORDERS  
		JOIN ORDERS O ON ORDERID = CO_OID
		JOIN  CUSTOMERS C ON C.CUSTOMERID = CO_CTID
			WHERE STR(CO_ID ) = @VALUE 
			   OR CO_CTID = @VALUE
			   OR STR(ORDERID) = @VALUE
			   OR CREATED_BY = @VALUE
			   OR CID  = @VALUE
			   OR (FIRST_NAME +' '+ LAST_NAME) LIKE '%'+@VALUE+'%'
			   OR SL_ADDRESS LIKE @VALUE
			   OR CITY LIKE @VALUE
			   OR COUNTRY LIKE @VALUE
			   OR CONTACT_PHONE LIKE @VALUE
			   OR COMMENTS = @VALUE;
END
