USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spSupplier_GetByValue]    Script Date: 10/11/2022 11:16:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spSupplier_GetByValue]
	-- Add the parameters for the stored procedure here
	@SEARCHVALUE nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--DECLARE @VALUE NVARCHAR(52)= '%'+@SEARCHVALUE+'%';
    -- Insert statements for procedure here
	SELECT DISTINCT SL.* FROM DBO.SUPPLIERS SL
	LEFT JOIN DBO.PRODUCT_SUPPLIERS PS ON SL.SUPPLIERID = PS.PS_SLID
	LEFT JOIN DBO.PRODUCTS P ON P.PRODUCTID = PS_SLID
	WHERE SL.SUPPLIER_NAME LIKE @SEARCHVALUE 
	   OR SL.SUPPLIERID LIKE  @SEARCHVALUE 
	   OR SL.CONTACT_NAME LIKE @SEARCHVALUE 
	   OR SL.CONTACT_PHONE LIKE @SEARCHVALUE 
	   OR SL.SL_ADDRESS LIKE @SEARCHVALUE
	   OR P.PRODUCTID LIKE @SEARCHVALUE 
	   OR P.PRODUCTNAME LIKE @SEARCHVALUE 
	ORDER BY SL.SUPPLIERID;



END
