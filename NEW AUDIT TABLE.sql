--Khushi Sachade(1230662552)
-- Hetvi Patel (1230385431)
--Final Project
-- EV mangemnet system
--24 april 2024
--Group_107

--creating audit table

-- Create ManufacturerAudit table
	CREATE TABLE ManufacturerAudit (
    audit_id INT IDENTITY(1,1) PRIMARY KEY,
    manufacturer_id INT,
    name VARCHAR(100),
    country VARCHAR(50),
    action VARCHAR(10),
    change_date DATETIME
);

-- Create trigger for INSERT operation
CREATE TRIGGER ManufacturerInsertTrigger
ON Manufacturer
AFTER INSERT
AS
BEGIN
    INSERT INTO ManufacturerAudit (manufacturer_id, name, country, action, change_date)
    SELECT manufacturer_id, name, country, 'INSERT', GETDATE()
    FROM inserted;
END;
GO

-- Create trigger for UPDATE operation
CREATE TRIGGER ManufacturerUpdateTrigger
ON Manufacturer
AFTER UPDATE
AS
BEGIN
    INSERT INTO ManufacturerAudit (manufacturer_id, name, country, action, change_date)
    SELECT manufacturer_id, name, country, 'UPDATE', GETDATE()
    FROM deleted;
END;
GO

-- Create trigger for DELETE operation
CREATE TRIGGER ManufacturerDeleteTrigger
ON Manufacturer
AFTER DELETE
AS
BEGIN
    INSERT INTO ManufacturerAudit (manufacturer_id, name, country, action, change_date)
    SELECT manufacturer_id, name, country, 'DELETE', GETDATE()
    FROM deleted;
END;
GO


--testing all the operations

-- Insert a new manufacturer
INSERT INTO Manufacturer (name, country) VALUES ('Tesla', 'USA');

-- Update an existing manufacturer
UPDATE Manufacturer SET country = 'Canada' WHERE name = 'Tesla';

-- Delete a manufacturer
DELETE FROM Manufacturer WHERE name = 'Tesla';

-- Select data from ManufacturerAudit to see the changes
SELECT * FROM ManufacturerAudit;

