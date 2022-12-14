USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spOrder_GetByValue]    Script Date: 10/30/2022 10:46:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spOrder_GetByValue]
	@VALUE NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM DBO.ORDERS
		  WHERE STR(ORDERID) LIKE @VALUE
			   OR CREATED_BY LIKE @VALUE
			   OR COMMENTS LIKE @VALUE
			   OR STR(TOTAL) LIKE @VALUE
			   OR STR(GRAND_TOTAL)LIKE @VALUE;
			   
END
