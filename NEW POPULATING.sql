--Khushi Sachade(1230662552)
-- Hetvi Patel (1230385431)
--Final Project
-- EV management system
--Group 107


INSERT INTO Vehicle (make, model, year, battery_capacity) VALUES
('Volkswagen', 'ID.4', 2022, 77),
('Mercedes-Benz', 'EQC', 2021, 80),
('Kia', 'Soul EV', 2020, 64),
('Volvo', 'XC40 Recharge', 2023, 78),
('Mini', 'Cooper SE', 2022, 32),
('Fiat', '500e', 2021, 24),
('Polestar', '2', 2020, 78),
('Lucid', 'Air', 2023, 113),
('Rivian', 'R1S', 2023, 135),
('Audi', 'Q4 e-tron', 2022, 82),
('NIO', 'ES8', 2021, 100),
('Tesla', 'Model 3', 2020, 60),
('Ford', 'F-150 Lightning', 2023, 98),
('Chevrolet', 'Volt', 2022, 18),
('BMW', 'iX3', 2021, 74),
('Tesla', 'Model S', 2022, 100),
('Nissan', 'Leaf', 2021, 40),
('Chevrolet', 'Bolt EV', 2020, 60),
('BMW', 'i3', 2023, 42),
('Ford', 'Mustang Mach-E', 2022, 75),
('Audi', 'e-tron', 2021, 95),
('Hyundai', 'Kona Electric', 2020, 64),
('Jaguar', 'I-PACE', 2023, 90),
('Porsche', 'Taycan', 2022, 93),
('Rivian', 'R1T', 2023, 135);


-- Inserting data into ChargingStation table
INSERT INTO ChargingStation (location, capacity, cost_per_kwh) VALUES
('123 Main St, City A', 10, 0.15),
('456 Oak Ave, City B', 8, 0.20),
('789 Elm St, City C', 12, 0.18),
('321 Maple Ave, City D', 6, 0.22),
('654 Pine St, City E', 15, 0.17),
('987 Cedar St, City F', 10, 0.16),
('654 Birch Ave, City G', 8, 0.21),
('321 Oak St, City H', 12, 0.19),
('789 Walnut Ave, City I', 6, 0.23),
('543 Pine St, City J', 15, 0.18),
('876 Maple Ave, City K', 10, 0.17),
('234 Elm St, City L', 8, 0.20),
('567 Cedar Ave, City M', 12, 0.18),
('890 Oak St, City N', 6, 0.22),
('123 Birch Ave, City O', 15, 0.17),
('456 Maple St, City P', 10, 0.16),
('789 Elm Ave, City Q', 8, 0.21),
('321 Pine St, City R', 12, 0.19),
('654 Cedar Ave, City S', 6, 0.23),
('987 Oak St, City T', 15, 0.18),
('234 Elm Ave, City U', 10, 0.17),
('567 Birch St, City V', 8, 0.20),
('890 Maple Ave, City W', 12, 0.18),
('123 Elm St, City X', 6, 0.22),
('456 Cedar Ave, City Y', 15, 0.17);


-- Inserting data into User table
INSERT INTO [User] (username, email, password, membership) VALUES
('user1', 'user1@example.com', 'password1', 'premium'),
('user2', 'user2@example.com', 'password2', 'standard'),
('user3', 'user3@example.com', 'password3', 'premium'),
('user4', 'user4@example.com', 'password4', 'premium'),
('user5', 'user5@example.com', 'password5', 'standard'),
('user6', 'user6@example.com', 'password6', 'premium'),
('user7', 'user7@example.com', 'password7', 'standard'),
('user8', 'user8@example.com', 'password8', 'premium'),
('user9', 'user9@example.com', 'password9', 'standard'),
('user10', 'user10@example.com', 'password10', 'premium'),
('user11', 'user11@example.com', 'password11', 'standard'),
('user12', 'user12@example.com', 'password12', 'premium'),
('user13', 'user13@example.com', 'password13', 'standard'),
('user14', 'user14@example.com', 'password14', 'premium'),
('user15', 'user15@example.com', 'password15', 'standard'),
('user16', 'user16@example.com', 'password16', 'premium'),
('user17', 'user17@example.com', 'password17', 'standard'),
('user18', 'user18@example.com', 'password18', 'premium'),
('user19', 'user19@example.com', 'password19', 'standard'),
('user20', 'user20@example.com', 'password20', 'premium'),
('user21', 'user21@example.com', 'password21', 'standard'),
('user22', 'user22@example.com', 'password22', 'premium'),
('user23', 'user23@example.com', 'password23', 'standard'),
('user24', 'user24@example.com', 'password24', 'premium'),
('user25', 'user25@example.com', 'password25', 'standard');



-- Inserting data into ChargingSession table
INSERT INTO ChargingSession (vehicle_id, station_id, start_time, end_time, energy_delivered) VALUES
(1, 1, '2024-04-10 08:00:00', '2024-04-10 09:30:00', 50),
(2, 3, '2024-04-10 10:00:00', '2024-04-10 11:00:00', 30),
(3, 2, '2024-04-11 12:00:00', '2024-04-11 14:00:00', 40),
(4, 4, '2024-04-11 15:00:00', '2024-04-11 16:30:00', 55),
(5, 5, '2024-04-12 08:00:00', '2024-04-12 10:00:00', 60),
(6, 1, '2024-04-13 09:00:00', '2024-04-13 10:30:00', 45),
(7, 3, '2024-04-14 11:00:00', '2024-04-14 12:00:00', 25),
(8, 2, '2024-04-15 12:00:00', '2024-04-15 13:30:00', 35),
(9, 4, '2024-04-16 14:00:00', '2024-04-16 15:00:00', 70),
(10, 5, '2024-04-17 08:00:00', '2024-04-17 09:30:00', 80),
(1, 2, '2024-04-18 10:00:00', '2024-04-18 11:30:00', 45),
(2, 4, '2024-04-19 12:00:00', '2024-04-19 14:00:00', 50),
(3, 5, '2024-04-20 08:00:00', '2024-04-20 09:00:00', 30),
(1, 1, '2024-04-10 08:00:00', '2024-04-10 09:30:00', 50),
(2, 3, '2024-04-10 10:00:00', '2024-04-10 11:00:00', 30),
(3, 2, '2024-04-11 12:00:00', '2024-04-11 14:00:00', 40),
(4, 4, '2024-04-11 15:00:00', '2024-04-11 16:30:00', 55),
(5, 5, '2024-04-12 08:00:00', '2024-04-12 10:00:00', 60),
(6, 1, '2024-04-13 09:00:00', '2024-04-13 10:30:00', 45),
(7, 3, '2024-04-14 11:00:00', '2024-04-14 12:00:00', 25),
(8, 2, '2024-04-15 12:00:00', '2024-04-15 13:30:00', 35),
(9, 4, '2024-04-16 14:00:00', '2024-04-16 15:00:00', 70),
(10, 5, '2024-04-17 08:00:00', '2024-04-17 09:30:00', 80),
(1, 2, '2024-04-18 10:00:00', '2024-04-18 11:30:00', 45),
(2, 4, '2024-04-19 12:00:00', '2024-04-19 14:00:00', 50),
(3, 5, '2024-04-20 08:00:00', '2024-04-20 09:00:00', 30),
(4, 1, '2024-04-21 09:00:00', '2024-04-21 10:30:00', 50),
(5, 3, '2024-04-22 11:00:00', '2024-04-22 12:30:00', 40),
(6, 2, '2024-04-23 13:00:00', '2024-04-23 14:00:00', 35),
(7, 4, '2024-04-24 15:00:00', '2024-04-24 16:30:00', 45),
(8, 5, '2024-04-25 08:00:00', '2024-04-25 10:00:00', 60),
(9, 1, '2024-04-26 09:00:00', '2024-04-26 10:30:00', 55),
(10, 3, '2024-04-27 11:00:00', '2024-04-27 12:00:00', 25),
(1, 4, '2024-04-28 12:00:00', '2024-04-28 13:30:00', 35),
(2, 5, '2024-04-29 14:00:00', '2024-04-29 15:00:00', 70),
(3, 1, '2024-04-30 08:00:00', '2024-04-30 09:30:00', 80),
(4, 3, '2024-05-01 10:00:00', '2024-05-01 11:30:00', 45),
(5, 2, '2024-05-02 12:00:00', '2024-05-02 14:00:00', 50);


INSERT INTO MaintenanceRecord (vehicle_id, maintenance_type, maintenance_date, description) VALUES
(1, 'Regular Inspection', '2024-01-10', 'Routine checkup and inspection of vehicle components.'),
(2, 'Battery Replacement', '2024-02-15', 'Replaced the old battery with a new one due to degradation.'),
(3, 'Brake Service', '2024-03-20', 'Performed brake pad replacement and brake system maintenance.'),
(4, 'Tire Rotation', '2024-04-25', 'Rotated tires to ensure even wear and improve longevity.'),
(5, 'Software Update', '2024-05-05', 'Installed the latest software update to improve vehicle performance.'),
(6, 'Regular Inspection', '2024-06-10', 'Routine checkup and inspection of vehicle components.'),
(7, 'Electrical System Check', '2024-07-15', 'Checked and tested the electrical system for any issues.'),
(8, 'Wheel Alignment', '2024-08-20', 'Adjusted wheel alignment to improve handling and tire wear.'),
(9, 'Coolant Flush', '2024-09-25', 'Flushed and replaced coolant to maintain optimal engine temperature.'),
(10, 'Air Filter Replacement', '2024-10-05', 'Replaced the air filter to ensure proper airflow to the engine.'),
(11, 'Regular Inspection', '2024-11-10', 'Routine checkup and inspection of vehicle components.'),
(12, 'Suspension Service', '2024-12-15', 'Performed suspension system maintenance and replacement of worn components.'),
(13, 'Oil Change', '2025-01-20', 'Changed engine oil and oil filter for proper lubrication and engine performance.'),
(14, 'Windshield Wiper Replacement', '2025-02-25', 'Replaced worn windshield wipers for better visibility during rain.'),
(15, 'HVAC System Check', '2025-03-05', 'Checked and tested the heating, ventilation, and air conditioning system.'),
(16, 'Regular Inspection', '2025-04-10', 'Routine checkup and inspection of vehicle components.'),
(17, 'Spark Plug Replacement', '2025-05-15', 'Replaced spark plugs to maintain engine ignition efficiency.'),
(18, 'Transmission Fluid Change', '2025-06-20', 'Drained and replaced transmission fluid to ensure smooth gear shifting.'),
(19, 'Fuel System Cleaning', '2025-07-25', 'Cleaned fuel injectors and fuel lines to improve fuel efficiency.'),
(20, 'Cabin Air Filter Replacement', '2025-08-05', 'Replaced cabin air filter for clean air inside the vehicle.'),
(21, 'Regular Inspection', '2025-09-10', 'Routine checkup and inspection of vehicle components.'),
(22, 'Headlight Bulb Replacement', '2025-10-15', 'Replaced faulty headlight bulbs for proper illumination.'),
(23, 'Exhaust System Check', '2025-11-20', 'Inspected exhaust system for leaks or damage.'),
(24, 'Battery Terminal Cleaning', '2025-12-25', 'Cleaned battery terminals to ensure proper electrical connection.'),
(25, 'Steering System Service', '2026-01-05', 'Performed maintenance on the steering system for smooth operation.');


INSERT INTO Manufacturer (name, country) VALUES
('Tesla', 'United States'),
('Nissan', 'Japan'),
('Chevrolet', 'United States'),
('BMW', 'Germany'),
('Ford', 'United States'),
('Audi', 'Germany'),
('Hyundai', 'South Korea'),
('Jaguar', 'United Kingdom'),
('Porsche', 'Germany'),
('Rivian', 'United States'),
('Volkswagen', 'Germany'),
('Mercedes-Benz', 'Germany'),
('Kia', 'South Korea'),
('Volvo', 'Sweden'),
('Mini', 'United Kingdom'),
('Fiat', 'Italy'),
('Polestar', 'Sweden'),
('Lucid', 'United States'),
('NIO', 'China'),
('Toyota', 'Japan'),
('Honda', 'Japan'),
('Mazda', 'Japan'),
('Subaru', 'Japan'),
('Lexus', 'Japan'),
('Buick', 'United States');


INSERT INTO Payment (user_id, amount, payment_date, method) VALUES
(1, 50.00, '2024-01-05', 'Credit Card'),
(2, 25.00, '2024-01-10', 'PayPal'),
(3, 30.00, '2024-01-15', 'Credit Card'),
(4, 40.00, '2024-01-20', 'Credit Card'),
(5, 20.00, '2024-01-25', 'PayPal'),
(6, 55.00, '2024-02-05', 'Credit Card'),
(7, 15.00, '2024-02-10', 'Credit Card'),
(8, 35.00, '2024-02-15', 'PayPal'),
(9, 45.00, '2024-02-20', 'Credit Card'),
(10, 60.00, '2024-02-25', 'Credit Card'),
(11, 25.00, '2024-03-05', 'PayPal'),
(12, 30.00, '2024-03-10', 'Credit Card'),
(13, 40.00, '2024-03-15', 'Credit Card'),
(14, 50.00, '2024-03-20', 'PayPal'),
(15, 20.00, '2024-03-25', 'Credit Card'),
(16, 55.00, '2024-04-05', 'Credit Card'),
(17, 15.00, '2024-04-10', 'PayPal'),
(18, 35.00, '2024-04-15', 'Credit Card'),
(19, 45.00, '2024-04-20', 'Credit Card'),
(20, 60.00, '2024-04-25', 'PayPal'),
(21, 25.00, '2024-05-05', 'Credit Card'),
(22, 30.00, '2024-05-10', 'Credit Card'),
(23, 40.00, '2024-05-15', 'PayPal'),
(24, 50.00, '2024-05-20', 'Credit Card'),
(25, 20.00, '2024-05-25', 'Credit Card');



INSERT INTO Trip (vehicle_id, start_location, end_location, distance) VALUES
(1, 'City A', 'City B', 150.25),
(2, 'City C', 'City D', 80.75),
(3, 'City E', 'City F', 200.50),
(4, 'City G', 'City H', 120.00),
(5, 'City I', 'City J', 180.25),
(6, 'City K', 'City L', 90.50),
(7, 'City M', 'City N', 110.75),
(8, 'City O', 'City P', 130.00),
(9, 'City Q', 'City R', 170.25),
(10, 'City S', 'City T', 140.50),
(1, 'City U', 'City V', 160.75),
(2, 'City W', 'City X', 70.00),
(3, 'City Y', 'City Z', 190.25),
(4, 'City A', 'City B', 100.50),
(5, 'City C', 'City D', 150.75),
(6, 'City E', 'City F', 80.00),
(7, 'City G', 'City H', 120.25),
(8, 'City I', 'City J', 170.50),
(9, 'City K', 'City L', 110.75),
(10, 'City M', 'City N', 130.00),
(1, 'City O', 'City P', 180.25),
(2, 'City Q', 'City R', 90.50),
(3, 'City S', 'City T', 110.75),
(4, 'City U', 'City V', 140.00);





select * from vehicle;
select * from [User];
select * from Payment;
select * from Manufacturer;
select * from MaintenanceRecord;
select * from ChargingSession;
select * from ChargingStation;
select * from Trip;