USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spCustomer_Insert]    Script Date: 11/21/2022 2:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spCustomer_Insert]
	-- Add the parameters for the stored procedure here
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
	-- DEFAULT VALUE
	DECLARE @NEWSLID nvarchar(8) = 'CT1000';
	-- CHECK TABLE IS CONTAIN ROWS
	IF EXISTS (SELECT 1 FROM DBO.CUSTOMERS)
	BEGIN
		-- TAKE THE LARGEST VALUE OF ID  AND PLUS ONE IN FORMAT
		DECLARE @CURRENTSLID nvarchar(8) = (Select Max(CUSTOMERID) from dbo.CUSTOMERS C);
		DECLARE @NEWID INT = (SELECT Cast(SUBSTRING(@CURRENTSLID,3,LEN(@CURRENTSLID)) AS INT)+1) ;
		SELECT @NEWSLID  =  'CT'+CAST(@NEWID as nvarchar(6));
    END;
	
	-- Insert statements for procedure here
	INSERT INTO DBO.CUSTOMERS(CUSTOMERID,CID,FIRST_NAME, LAST_NAME, CONTACT_PHONE, SL_ADDRESS, CITY, COUNTRY , CONTENT)
	VALUES (@NEWSLID,@CID,@FIRST_NAME, @LAST_NAME, @CONTACT_PHONE, @SL_ADDRESS, @CITY, @COUNTRY , @CONTENT);
END
