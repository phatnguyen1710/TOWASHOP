USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spProduct_GetAll]    Script Date: 9/29/2022 11:12:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spProduct_GetAll] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT P.*, PC_CATEID,PS_SLID FROM DBO.PRODUCTS P
	LEFT JOIN DBO.PRODUCT_SUPPLIERS  ON P.PRODUCTID = PS_PID
	LEFT JOIN DBO.PRODUCT_CATEGORIES  ON P.PRODUCTID = PC_PID;
END
