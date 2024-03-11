USE lab_mysql;
DROP TABLE IF EXISTS ccarsars;

-- Create the Cars table
CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20)
);

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20)
);

-- Create the Salespersons table
CREATE TABLE Salespersons (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    store VARCHAR(100)
);

-- Create the Invoices table
CREATE TABLE Invoices (
    invoice_number INT PRIMARY KEY AUTO_INCREMENT,
    invoice_date DATE,
    car_vin VARCHAR(17),
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (car_vin) REFERENCES Cars(VIN),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES Salespersons(staff_id)
);
