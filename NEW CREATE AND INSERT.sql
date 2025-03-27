-- EV management system

CREATE DATABASE group_107;

-- Switch to the newly created database context
USE group_107;


--Khushi Sachade(1230662552)
-- Hetvi Patel (1230385431)
--Final Project
-- EV management system
CREATE DATABASE group_107;

-- Switch to the newly created database context
USE group_107;

--Task 1 creating tables

-- Table: Vehicle
CREATE TABLE Vehicle (
    vehicle_id INT IDENTITY(1,1) PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    battery_capacity INT NOT NULL
);

-- Table: ChargingStation
CREATE TABLE ChargingStation (
    station_id INT IDENTITY(1,1) PRIMARY KEY,
    location VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    cost_per_kwh DECIMAL(10, 2) NOT NULL
);

-- Table: User
CREATE TABLE [User] (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    membership VARCHAR(50) NOT NULL
);

-- Table: ChargingSession
CREATE TABLE ChargingSession (
    session_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT NOT NULL,
    station_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    energy_delivered DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id),
    FOREIGN KEY (station_id) REFERENCES ChargingStation(station_id)
);

-- Table: MaintenanceRecord
CREATE TABLE MaintenanceRecord (
    record_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT NOT NULL,
    maintenance_type VARCHAR(100) NOT NULL,
    maintenance_date DATE NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id)
);

-- Table: Manufacturer
CREATE TABLE Manufacturer (
    manufacturer_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50) NOT NULL
);

-- Table: Payment
CREATE TABLE Payment (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    method VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES [User](user_id) -- Assuming the table name is 'User' and the column name is 'user_id'
);

-- Table: Trip
CREATE TABLE Trip (
    trip_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT NOT NULL,
    start_location VARCHAR(100) NOT NULL,
    end_location VARCHAR(100) NOT NULL,
    distance DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id)
);






