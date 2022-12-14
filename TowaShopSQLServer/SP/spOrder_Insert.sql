USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spOrder_Insert]    Script Date: 11/18/2022 12:52:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spOrder_Insert]
	-- Add the parameters for the stored procedure here
	@CREATED_BY NVARCHAR(9),
	@CREATED_AT DATETIME ,
	@UPDATED_AT DATETIME ,
	@ORDER_TYPE SMALLINT = 0, -- 0 RETAIL ORDERS -1 - CUSTOMERS ORDER  1 - NEW STOCK PURCHARGE 
	@PAYMENT_METHOD SMALLINT = 0, -- 0 CASH -  1 CREDIT
	@TOTAL FLOAT ,
	@GRAND_TOTAL FLOAT ,
	@STATUS SMALLINT = 0, -- NEW -- Paid  -- Delivering
	@COMMENTS NVARCHAR(MAX) = NULL,
	@OID INT OUT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO DBO.ORDERS(CREATED_BY,CREATED_AT,UPDATED_AT,ORDER_TYPE,PAYMENT_METHOD,TOTAL,GRAND_TOTAL,"STATUS",COMMENTS)
		VALUES (@CREATED_BY,@CREATED_AT,@UPDATED_AT,@ORDER_TYPE,@PAYMENT_METHOD,@TOTAL,@GRAND_TOTAL,@STATUS,@COMMENTS)
	SELECT @OID = SCOPE_IDENTITY();
END
