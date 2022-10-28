USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spOrder_GetAll]    Script Date: 10/28/2022 10:20:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spOrder_GetByValue]
	@VALUE NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM DBO.ORDERS
		  WHERE ORDERID = @VALUE
			   OR CREATED_BY = @VALUE
			   OR ORDER_TYPE = @VALUE
			   OR PAYMENT_METHOD =@VALUE
			   OR STATUS =@VALUE
			   OR COMMENTS = @VALUE;
END
