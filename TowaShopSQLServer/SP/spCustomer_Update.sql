USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spCustomer_Insert]    Script Date: 11/21/2022 2:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCustomer_Update]
	-- Add the parameters for the stored procedure here
	@CUSTOMERID NVARCHAR(8),
	@CID NVARCHAR(11)=NULL ,
	@FIRST_NAME NVARCHAR(15) ,
	@LAST_NAME NVARCHAR(15) ,
	@CONTACT_PHONE VARCHAR(20) ,
	@SL_ADDRESS NVARCHAR(50) = NULL,
	@CITY NVARCHAR(20) = NULL,
	@COUNTRY NVARCHAR(20)=NULL,
	@CONTENT NVARCHAR(255)=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	    -- Insert statements for procedure here
	UPDATE  DBO.CUSTOMERS 
	SET FIRST_NAME = @FIRST_NAME, 
		LAST_NAME = @LAST_NAME,
		CID = @CID,
		CONTACT_PHONE = @CONTACT_PHONE,
		SL_ADDRESS= @SL_ADDRESS,
		CITY = @CITY, 
		COUNTRY = @COUNTRY,
		CONTENT = @CONTENT
	WHERE CUSTOMERID =@CUSTOMERID;
END
