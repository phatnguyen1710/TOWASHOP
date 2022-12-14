USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spStockOrder_GetByValue]    Script Date: 10/30/2022 11:05:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spStockOrder_GetByValue]
	@VALUE NVARCHAR(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	SELECT SO_ID, SO_SLID, O.*   FROM SUPPLY_STOCKS
		JOIN ORDERS O ON SO_OID = ORDERID
		JOIN SUPPLIERS S ON S.SUPPLIERID =SO_SLID
			WHERE STR(SO_ID)  LIKE @VALUE 
			   OR SO_SLID LIKE @VALUE
			   OR STR(ORDERID) LIKE @VALUE
			   OR STR(TOTAL) LIKE @VALUE
			   OR STR(GRAND_TOTAL) LIKE @VALUE
			   OR CREATED_BY LIKE @VALUE
			   OR COMMENTS LIKE @VALUE
			   OR SUPPLIERID LIKE @VALUE
			   OR SUPPLIER_NAME LIKE @VALUE
			   OR CONTACT_NAME LIKE @VALUE
			   OR CONTACT_PHONE LIKE @VALUE
			   OR SL_ADDRESS LIKE @VALUE
			   OR CITY LIKE @VALUE
			   OR COUNTRY  LIKE @VALUE;
END
