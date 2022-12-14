USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spCustomerOrder_Update]    Script Date: 10/30/2022 2:16:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spStockOrder_Update]
	-- Add the parameters for the stored procedure here
	@SO_ID INT,
	@SO_SLID NVARCHAR(8),
	@SO_OID INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE DBO.SUPPLY_STOCKS
		SET SO_OID = @SO_OID,
			SO_SLID = @SO_SLID
	WHERE SO_ID = @SO_ID;
		
END
