USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spOrder_Update]    Script Date: 10/13/2022 2:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spOrder_Update]
	-- Add the parameters for the stored procedure here
	@ORDERID INT,
	@CREATED_BY NVARCHAR(9),
	@CREATED_AT DATETIME ,
	@UPDATED_AT DATETIME ,
	@ORDER_TYPE SMALLINT = 0, -- 0 RETAIL ORDERS -1 - CUSTOMERS ORDER  1 - NEW STOCK PURCHARGE 
	@PAYMENT_METHOD SMALLINT = 0, -- 0 CASH -  1 CREDIT
	@TOTAL FLOAT ,
	@GRAND_TOTAL FLOAT ,
	@STATUS SMALLINT = 0, -- NEW -- Paid  -- Delivering
	@COMMENTS NVARCHAR(MAX) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE DBO.ORDERS
		SET CREATED_BY = @CREATED_BY,
		CREATED_AT=@CREATED_AT,
		UPDATED_AT=GETDATE(),
		ORDER_TYPE=@ORDER_TYPE,
		PAYMENT_METHOD=@PAYMENT_METHOD,
		TOTAL=@TOTAL,
		GRAND_TOTAL=@GRAND_TOTAL,
		STATUS= @STATUS,
		COMMENTS= @COMMENTS
	WHERE ORDERID = @ORDERID;
		
END
