USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spStockOrder_GetAll]    Script Date: 10/28/2022 10:55:27 AM ******/
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
	@SO_SLID NVARCHAR (8),
	@SO_OID INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO SUPPLY_STOCKS (SO_SLID, SO_OID)
		VALUES (@SO_SLID,@SO_OID);
END
