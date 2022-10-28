USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spStockOrder_GetAll]    Script Date: 10/28/2022 12:30:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spStockOrder_GetByValue]
	@VALUE NVARCHAR(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT SO_ID, SO_SLID, O.*  FROM SUPPLY_STOCKS
		JOIN ORDERS O ON SO_OID = ORDERID
			WHERE SO_ID  = @VALUE 
			   OR SO_SLID = @VALUE
			   OR ORDERID = @VALUE
			   OR CREATED_BY = @VALUE
			   OR ORDER_TYPE = @VALUE
			   OR PAYMENT_METHOD =@VALUE
			   OR STATUS =@VALUE
			   OR COMMENTS = @VALUE;
END
