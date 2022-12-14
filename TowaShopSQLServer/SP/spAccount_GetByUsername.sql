USE [TOWASHOP]
GO
/****** Object:  StoredProcedure [dbo].[spAccount_GetByUsername]    Script Date: 10/4/2022 1:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spAccount_GetByUsername]
	-- Add the parameters for the stored procedure here
	@USERNAME nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF EXISTS(SELECT 1 FROM DBO.ACCOUNTS A WHERE A.USERNAME = @USERNAME)
		BEGIN
			-- UPDATE THE THE LOGIN TIME BY THE CURREN TIME
			UPDATE DBO.ACCOUNTS 
			SET 
				LAST_LOGIN = GETDATE()
			WHERE USERNAME = @USERNAME;
			
			-- TAKE WHOLE MODEL INCLUDING USER ROLES
			SELECT A.*,R.* FROM DBO.ACCOUNTS A
				LEFT JOIN DBO.ACCOUNT_ROLEVIEWS  ON AR_UID = A.USERID
				LEFT JOIN DBO.ROLEVIEWS R ON R.RID = AR_RID
			WHERE A.USERNAME = @USERNAME ;
		END
END
