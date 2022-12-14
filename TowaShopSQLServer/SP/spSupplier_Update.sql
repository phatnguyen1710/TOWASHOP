USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spSupplier_Update]    Script Date: 9/20/2022 11:27:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSupplier_Update]
	-- Add the parameters for the stored procedure here
	@SLID NVARCHAR(15),
	@SUPPLIER_NAME NVARCHAR(30),
	@CONTACT_NAME NVARCHAR(45) = NULL,
	@CONTACT_PHONE NVARCHAR(20),
	@SL_ADDRESS NVARCHAR(50)= NULL,
	@CITY NVARCHAR(20)= NULL,
	@COUNTRY NVARCHAR(20) = NULL,
	@CONTENT NTEXT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	UPDATE  DBO.SUPPLIERS 
	SET SUPPLIER_NAME = @SUPPLIER_NAME, 
		CONTACT_NAME = @CONTACT_NAME,
		CONTACT_PHONE = @CONTACT_PHONE,
		SL_ADDRESS= @SL_ADDRESS,
		CITY = @CITY, 
		COUNTRY = @COUNTRY,
		CONTENT = @CONTENT
	WHERE SUPPLIERID =@SLID;
END
