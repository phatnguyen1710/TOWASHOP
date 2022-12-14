USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spOrder_Update]    Script Date: 10/28/2022 10:41:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCustomerOrder_Update]
	-- Add the parameters for the stored procedure here
	@CO_ID INT,
	@CO_CTID NVARCHAR(8),
	@CO_OID INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE DBO.CUSTOMER_ORDERS
		SET CO_OID = @CO_OID,
			CO_CTID = @CO_CTID
	WHERE CO_ID = @CO_ID;
		
END
