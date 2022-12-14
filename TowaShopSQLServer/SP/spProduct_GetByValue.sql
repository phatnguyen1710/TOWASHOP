USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spProduct_GetByValue]    Script Date: 11/7/2022 6:36:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spProduct_GetByValue] 
	@VALUE NVARCHAR(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DISTINCT P.*, PC_CATEID,PS_SLID FROM DBO.PRODUCTS P
		LEFT JOIN DBO.PRODUCT_SUPPLIERS  ON P.PRODUCTID = PS_PID
		LEFT JOIN DBO.PRODUCT_CATEGORIES  ON P.PRODUCTID = PC_PID
			JOIN DBO.SUPPLIERS S ON S.SUPPLIERID = PS_SLID
			JOIN DBO.CATEGORIES C ON C.CATEGORYID = PC_CATEID
			WHERE P.PRODUCTID LIKE @VALUE 
			   OR P.BARCODE = @VALUE
			   OR P.PRODUCTNAME LIKE @VALUE
			   OR P.STATUS LIKE @VALUE
			   OR P.CONTENT LIKE @VALUE
			   OR P.QUANTITY_PER_UNIT LIKE @VALUE
			   OR S.SUPPLIERID  LIKE @VALUE
			   OR S.SUPPLIER_NAME LIKE @VALUE
			   OR S.CONTACT_NAME  LIKE @VALUE
			   OR S.CONTACT_PHONE  LIKE @VALUE
			   OR S.CITY LIKE @VALUE
			   OR S.COUNTRY LIKE @VALUE
			   OR C.CATEGORYNAME LIKE @VALUE
			   OR STR(C.CATEGORYID) LIKE @VALUE;

END
