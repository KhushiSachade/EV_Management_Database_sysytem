CREATE PROCEDURE DisplayUsernames
AS
BEGIN
    DECLARE @username VARCHAR(50);
    DECLARE @done BIT = 0;

    -- Declare cursor
    DECLARE cur CURSOR FOR SELECT username FROM [User];
    
    -- Open cursor
    OPEN cur;

    -- Fetch and display usernames
    FETCH NEXT FROM cur INTO @username;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT @username;
        FETCH NEXT FROM cur INTO @username;
    END;

    -- Close cursor
    CLOSE cur;
    DEALLOCATE cur;
END;
GO

-- Call the stored procedure to display usernames
EXEC DisplayUsernames;

-- Drop the stored procedure
IF OBJECT_ID('DisplayUsernames', 'P') IS NOT NULL
    DROP PROCEDURE DisplayUsernames;
