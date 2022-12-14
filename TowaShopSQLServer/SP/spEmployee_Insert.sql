USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spCustomer_Insert]    Script Date: 11/22/2022 7:07:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spEmployee_Insert]
	-- Add the parameters for the stored procedure here
	--EMPLOYEEID NVARCHAR(8), --EL0001
	@CID NVARCHAR(11) NULL,
	@FIRST_NAME NVARCHAR(15) ,
	@LAST_NAME NVARCHAR(15) ,
	@BIRTHDATE DATETIME NULL,
	@SEX SMALLINT= 0,
	@TITLE NVARCHAR(25)=  NULL,
	@HIDE_DATE DATETIME ,
	@ADDRESS NVARCHAR(50) ,
	@CITY NVARCHAR(20) ,
	@COUNTRY NVARCHAR (25) ,
	@PHONE VARCHAR(20) ,
	@UPDATE_AT DATETIME ,
	@CONTENT NVARCHAR(255) = NULL 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	-- DEFAULT VALUE
	DECLARE @NEWSLID nvarchar(8) = 'EL1000';
	-- CHECK TABLE IS CONTAIN ROWS
	IF EXISTS (SELECT 1 FROM DBO.EMPLOYEES)
	BEGIN
		-- TAKE THE LARGEST VALUE OF ID  AND PLUS ONE IN FORMAT
		DECLARE @CURRENTSLID nvarchar(8) = (Select Max(EMPLOYEEID) from dbo.EMPLOYEES C);
		DECLARE @NEWID INT = (SELECT Cast(SUBSTRING(@CURRENTSLID,3,LEN(@CURRENTSLID)) AS INT)+1) ;
		SELECT @NEWSLID  =  'EL'+CAST(@NEWID as nvarchar(6));
    END;
	
	-- Insert statements for procedure here
	INSERT INTO DBO.EMPLOYEES(EMPLOYEEID,CID,FIRST_NAME, LAST_NAME,BIRTHDATE,TITLE,HIDE_DATE, PHONE, "ADDRESS" ,CITY, COUNTRY ,UPDATE_AT, CONTENT,SEX)
	VALUES (@NEWSLID,@CID,@FIRST_NAME, @LAST_NAME,@BIRTHDATE,@TITLE,@HIDE_DATE, @PHONE, @ADDRESS ,@CITY, @COUNTRY ,@UPDATE_AT, @CONTENT,@SEX);
END

	