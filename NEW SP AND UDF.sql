--Khushi Sachade(1230662552)
-- Hetvi Patel (1230385431)
--group 107
--Final Project
-- EV mangemnet system
--24 april 2024

--stored procedure and UDF

-- Create stored procedure to get the total energy delivered by a specific vehicle
CREATE PROCEDURE GetTotalEnergyDelivered
    @vehicleId INT,
    @totalEnergy DECIMAL(10, 2) OUTPUT
AS
BEGIN
    SELECT @totalEnergy = SUM(energy_delivered)
    FROM ChargingSession
    WHERE vehicle_id = @vehicleId;
END;

--User defined function UDF

-- Create UDF to calculate the average distance traveled per trip
CREATE FUNCTION CalculateAvgDistancePerTrip() 
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @avgDistance DECIMAL(10, 2);
    SELECT @avgDistance = AVG(distance) FROM Trip;
    RETURN @avgDistance;
END;



-- Test the stored procedure
DECLARE @totalEnergy DECIMAL(10, 2);
DECLARE @vehicleId INT = 1; -- Replace with the desired vehicle ID

EXEC GetTotalEnergyDelivered @vehicleId, @totalEnergy OUTPUT;

SELECT 'Total energy delivered for vehicle ' + CAST(@vehicleId AS VARCHAR) + ': ' + CAST(@totalEnergy AS VARCHAR) AS Result;



-- drop script

-- Drop stored procedure
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTotalEnergyDelivered]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetTotalEnergyDelivered];

-- Drop UDF
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CalculateAvgDistancePerTrip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[CalculateAvgDistancePerTrip];
