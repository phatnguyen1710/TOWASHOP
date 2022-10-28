USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spOrder_Insert]    Script Date: 10/28/2022 10:34:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCustomerOrder_Insert]
	-- Add the parameters for the stored procedure here
	@CO_CTID NVARCHAR(8),
	@CO_OID INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO DBO.CUSTOMER_ORDERS(CO_CTID,CO_OID)
		VALUES (@CO_CTID,@CO_OID);
END
