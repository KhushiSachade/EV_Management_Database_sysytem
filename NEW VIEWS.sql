--view 1
CREATE VIEW StationUsageHistory AS
SELECT cs.*, s.location
FROM ChargingSession cs
JOIN ChargingStation s ON cs.station_id = s.station_id
WHERE s.location = 'desired_location';

--view 2
CREATE VIEW MaintenanceNeeded AS
SELECT v.*, mr.maintenance_type, mr.maintenance_date, mr.description
FROM Vehicle v
JOIN MaintenanceRecord mr ON v.vehicle_id = mr.vehicle_id
WHERE mr.maintenance_date <= GETDATE() AND mr.maintenance_type = 'Routine';

--view 3
CREATE VIEW PremiumUserPayments AS
SELECT p.*, u.username
FROM Payment p
JOIN  [User] u ON p.user_id = u.user_id
WHERE u.membership = 'premium';

