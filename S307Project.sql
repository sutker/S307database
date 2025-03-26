-- Creating Department Table
CREATE TABLE Department_T (
    Department_ID 	Numeric(1,0) 	NOT NULL,
    Manager			VARCHAR2(64) 	NOT NULL,
    Phone_Number 	CHAR(14) 		NOT NULL,
    Email 			VARCHAR2(64),
    Location 		VARCHAR2(256) 	NOT NULL,
    Department_Type VARCHAR2(64) 	CHECK(Department_Type IN ('Manufacturing', 'Sales', 'Purchasing')) NOT NULL,
    CONSTRAINT Department_PK PRIMARY KEY (Department_ID)
    );

-- Inserting Dummy Data into Department_T Table
INSERT INTO Department_T (Department_ID, Manager, Phone_Number, Email, Location, Department_Type) VALUES (1, 'John Doe', '123-456-7890', 'john.doe@example.com', '1010 Industrial Park', 'Manufacturing');
INSERT INTO Department_T (Department_ID, Manager, Phone_Number, Email, Location, Department_Type) VALUES (2, 'Jane Smith', '234-567-8901', 'jane.smith@example.com', '2020 Commerce Blvd', 'Sales');
INSERT INTO Department_T (Department_ID, Manager, Phone_Number, Email, Location, Department_Type) VALUES (3, 'Alice Johnson', '345-678-9012', 'alice.johnson@example.com', '3030 Procurement Dr', 'Purchasing');

-- Creating Employee Table
CREATE TABLE Employee_T (
	Employee_ID 	NUMERIC(5,0) 	NOT NULL,
    Department_ID 	NUMBER(1,0) 	NOT NULL,
    Name 			VARCHAR2(64) 	NOT NULL,
    EmployeeSalary 	VARCHAR2(9) 	NOT NULL,
    Contact 		VARCHAR2(64) 	NOT NULL,
    CONSTRAINT Employee_PK PRIMARY KEY (Employee_ID),
    CONSTRAINT Employee_FK FOREIGN KEY (Department_ID) REFERENCES Department_T(Department_ID)
	);

-- Inserting Dummy Data into Employee_T Table
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1001, 1, 'John Doe', '50000', '555-0101');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1002, 2, 'Jane Smith', '52000', '555-0102');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1003, 3, 'Alice Johnson', '54000', '555-0103');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1004, 1, 'Bob Brown', '56000', '555-0104');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1005, 2, 'Carol White', '58000', '555-0105');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1006, 3, 'Dave Black', '60000', '555-0106');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1007, 1, 'Eve Green', '62000', '555-0107');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1008, 2, 'Frank Cyan', '64000', '555-0108');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1009, 3, 'Gina Red', '66000', '555-0109');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1010, 1, 'Hank Teal', '68000', '555-0110');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1011, 2, 'Ivy Gold', '70000', '555-0111');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1012, 3, 'Jake Silver', '72000', '555-0112');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1013, 1, 'Karen Purple', '74000', '555-0113');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1014, 2, 'Leo Orange', '76000', '555-0114');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1015, 3, 'Mia Blue', '78000', '555-0115');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1016, 1, 'Nick Gray', '80000', '555-0116');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1017, 2, 'Olive Black', '82000', '555-0117');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1018, 3, 'Pete White', '84000', '555-0118');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1019, 1, 'Quinn Yellow', '86000', '555-0119');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1020, 2, 'Ruth Lime', '88000', '555-0120');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1021, 3, 'Sam Maroon', '90000', '555-0121');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1022, 1, 'Tina Aqua', '92000', '555-0122');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1023, 2, 'Uma Navy', '94000', '555-0123');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1024, 3, 'Vic Olive', '96000', '555-0124');
INSERT INTO Employee_T (Employee_ID, Department_ID, Name, EmployeeSalary, Contact) VALUES (1025, 1, 'Walt Khaki', '98000', '555-0125');


-- Creating Sales Department Table
CREATE TABLE Sales_Department_T (
	Department_ID 	NUMBER(1,0) 	CHECK(Department_ID IN (1)) 	NOT NULL,
    Sales_Target 	NUMBER(4,0),
	CONSTRAINT Sales_Department_PK PRIMARY KEY (Department_ID),
    CONSTRAINT Sales_Department_FK FOREIGN KEY (Department_ID) REFERENCES Department_T (Department_ID)
    );

-- Creating Manufacturing Department Table
CREATE TABLE Manufacturing_Department_T (
	Department_ID 		NUMBER(1,0) 	CHECK(Department_ID IN (2)) 	NOT NULL,
    Maitenance_Schedule DATE,
    Production_Schedule DATE,
	CONSTRAINT Manufacturing_Department_PK PRIMARY KEY (Department_ID),
    CONSTRAINT Manufacturing_Department_FK FOREIGN KEY (Department_ID) REFERENCES Department_T (Department_ID)
    );

-- Creating Purchasing Department Table
CREATE TABLE Purchasing_Department_T (
	Department_ID 		NUMBER(1,0) 	CHECK(Department_ID IN (3)) 	NOT NULL,
	Payment_Terms 		VARCHAR2(256) 	NOT NULL,
	CONSTRAINT Purchasing_Department_PK PRIMARY KEY (Department_ID),
    CONSTRAINT Purchasing_Department_FK FOREIGN KEY (Department_ID) REFERENCES Department_T (Department_ID)
    );

-- Creating Item Table
CREATE TABLE Item_T (
	Item_ID 		NUMBER(9,0) 	NOT NULL,
    Employee_ID 	NUMBER(5,0) 	NOT NULL,
    Description 	VARCHAR2(256) 	NOT NULL,
    Unit_Cost 		NUMBER(4,0) 	NOT NULL,
    Unit_Price 		NUMBER(4,0) 	NOT NULL,
    Bin_Code 		VARCHAR2(5) 	NOT NULL,
    Material_Type 	VARCHAR2(5) 	CHECK(Material_Type IN ('Raw', 'Final')) NOT NULL,
    CONSTRAINT Item_PK PRIMARY KEY (Item_ID),    
    CONSTRAINT Item_FK FOREIGN KEY (Employee_ID) REFERENCES Employee_T(Employee_ID)
    );

-- Inserting Dummy Data into Item_T Table
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (101, 1001, 'Steel Rods', 100, 150, 'A001', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (102, 1002, 'Copper Wire', 80, 120, 'A002', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (103, 1003, 'Aluminum Sheets', 200, 300, 'A003', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (104, 1004, 'Plastic Tubes', 20, 30, 'A004', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (105, 1005, 'Rubber Bands', 5, 10, 'A005', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (106, 1001, 'Glass Panes', 150, 225, 'B001', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (107, 1002, 'Carbon Fiber', 300, 450, 'B002', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (108, 1003, 'Silicon Chips', 500, 750, 'B003', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (109, 1004, 'LED Bulbs', 15, 25, 'B004', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (110, 1005, 'Ceramic Plates', 60, 90, 'B005', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (111, 1001, 'Steel Nuts', 10, 15, 'C001', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (112, 1002, 'Graphite Lubricant', 250, 375, 'C002', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (113, 1003, 'Nickel Screws', 90, 135, 'C003', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (114, 1004, 'Zinc Coating Spray', 50, 75, 'C004', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (115, 1005, 'Teflon Tapes', 40, 60, 'C005', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (116, 1001, 'Brass Valves', 120, 180, 'D001', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (117, 1002, 'Titanium Bolts', 200, 300, 'D002', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (118, 1003, 'Silver Contacts', 400, 600, 'D003', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (119, 1004, 'Gold Foil', 1000, 1500, 'D004', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (120, 1005, 'Magnet Strips', 30, 45, 'D005', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (121, 1001, 'Quartz Crystals', 350, 525, 'E001', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (122, 1002, 'Epoxy Resin', 25, 37.5, 'E002', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (123, 1003, 'Fiberglass Sheets', 75, 112.5, 'E003', 'Raw');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (124, 1004, 'Polyurethane Foam', 20, 30, 'E004', 'Final');
INSERT INTO Item_T (Item_ID, Employee_ID, Description, Unit_Cost, Unit_Price, Bin_Code, Material_Type) VALUES (125, 1005, 'Silica Gel', 5, 7.5, 'E005', 'Final');


-- Creating Final Item Table
CREATE TABLE Final_Item_T (
	Item_ID 		NUMBER(9,0) 	NOT NULL,
    To_Be_Sold 		NUMBER(1,0) 	CHECK (To_Be_Sold IN (0, 1)) 	NOT NULL,
	CONSTRAINT Final_Item_PK PRIMARY KEY (Item_ID),
    CONSTRAINT Final_Item_FK FOREIGN KEY (Item_ID) REFERENCES Item_T(Item_ID)
    );

-- Creating Raw Item Table
CREATE TABLE Raw_Item_T (
    Item_ID 			NUMBER(9,0) 	NOT NULL,
    Is_Purchased 		NUMBER(1,0) 	CHECK (Is_Purchased IN (0, 1)) 			NOT NULL,
    Is_Manufactured 	NUMBER(1,0) 	CHECK (Is_Manufactured IN (0, 1)) 		NOT NULL,
    To_Be_Manufactured 	NUMBER(1,0) 	CHECK (To_Be_Manufactured IN (0, 1))	NOT NULL,
	CONSTRAINT Raw_Item_PK PRIMARY KEY (Item_ID),
    CONSTRAINT Raw_Item_FK FOREIGN KEY (Item_ID) REFERENCES Item_T(Item_ID)
	);

-- Creating Supplier Table
CREATE TABLE Supplier_T (
	Supplier_ID 	NUMBER(9,0) 	NOT NULL,
    Name 			VARCHAR2(64) 	NOT NULL,
    Address 		VARCHAR2(256),
    Contact 		VARCHAR2(64) 	NOT NULL,
    Date_Finished 	DATE 	NOT NULL,
    CONSTRAINT Supplier_PK PRIMARY KEY (Supplier_ID)
    );

-- Inserting Dummy Data into Supplier Table
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (1, 'Supplier A', '1234 Market St', '555-1234', SYSDATE);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (2, 'Supplier B', '5678 Trade Ln', '555-5678', SYSDATE - 10);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (3, 'Supplier C', '9101 Export Rd', '555-9101', SYSDATE - 20);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (4, 'Supplier D', '4321 Commerce Ave', '555-4321', SYSDATE - 30);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (5, 'Supplier E', '8765 Distribution Blvd', '555-8765', SYSDATE - 5);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (6, 'Supplier F', '1357 Business Park', '555-1357', SYSDATE - 15);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (7, 'Supplier G', '2468 Industrial Way', '555-2468', SYSDATE - 25);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (8, 'Supplier H', '3691 Production Ln', '555-3691', SYSDATE);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (9, 'Supplier I', '1593 Factory Ave', '555-1593', SYSDATE - 10);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (10, 'Supplier J', '7531 Manufacturing Ct', '555-7531', SYSDATE - 20);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (11, 'Supplier K', '9512 Industrial Dr', '555-9512', SYSDATE - 30);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (12, 'Supplier L', '8523 Corporate Blvd', '555-8523', SYSDATE - 5);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (13, 'Supplier M', '6547 Commercial St', '555-6547', SYSDATE - 15);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (14, 'Supplier N', '3579 Partnership Ln', '555-3579', SYSDATE - 25);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (15, 'Supplier O', '9517 Vendor Rd', '555-9517', SYSDATE);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (16, 'Supplier P', '7536 Supplier Ave', '555-7536', SYSDATE - 10);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (17, 'Supplier Q', '4569 Wholesaler Way', '555-4569', SYSDATE - 20);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (18, 'Supplier R', '1682 Trader Blvd', '555-1682', SYSDATE - 30);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (19, 'Supplier S', '2346 Merchant Ln', '555-2346', SYSDATE - 5);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (20, 'Supplier T', '9873 Dealer Dr', '555-9873', SYSDATE - 15);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (21, 'Supplier U', '7412 Retailer St', '555-7412', SYSDATE - 25);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (22, 'Supplier V', '8524 Distributor Ave', '555-8524', SYSDATE);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (23, 'Supplier W', '9631 Broker Way', '555-9631', SYSDATE - 10);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (24, 'Supplier X', '1473 Concessionaire Ln', '555-1473', SYSDATE - 20);
INSERT INTO Supplier_T (Supplier_ID, Name, Address, Contact, Date_Finished) VALUES (25, 'Supplier Y', '2525 Import Ave', '555-2525', SYSDATE - 30);

-- Creating Purchasing Order Table
CREATE TABLE PurchasingOrder_T (
	PO_ID 		VARCHAR2(7) 	NOT NULL,
    Item_ID 	NUMBER(9,0) 	NOT NULL,
    Order_Date 	DATE 	NOT NULL,
    Expected_Delivery_Date 	DATE,
    Quantity 	NUMBER(3,0) 	NOT NULL,
    Fee 		NUMBER(10,2),
    Payment_Term 	VARCHAR2(5) 	CHECK(Payment_Term IN ('NET30', 'NET45', 'NET60')),
    Notes 		VARCHAR2(256),
    Supplier_ID NUMBER(9,0),
    CONSTRAINT PurchasingOrder_PK PRIMARY KEY (PO_ID),
    CONSTRAINT PurchasingOrder_FK1 FOREIGN KEY (Supplier_ID) REFERENCES Supplier_T(Supplier_ID),
    CONSTRAINT PurchasingOrder_FK2 FOREIGN KEY (Item_ID) REFERENCES Item_T(Item_ID)
	);

-- Inserting Dummy Data into Purchasing Order Table
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO001', 101, SYSDATE, SYSDATE + 30, 100, 1500.00, 'NET30', 'Initial order for raw materials.', 1);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO002', 102, SYSDATE, SYSDATE + 45, 200, 2900.50, 'NET45', 'Bulk order for resupply.', 2);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO003', 103, SYSDATE, SYSDATE + 15, 150, 2250.75, 'NET60', 'Special terms agreement for project.', 3);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO004', 104, SYSDATE, SYSDATE + 10, 50, 750.00, 'NET30', 'Urgent delivery needed ASAP.', 4);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO005', 105, SYSDATE, SYSDATE + 20, 60, 900.00, 'NET45', 'Regular monthly order.', 5);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO006', 106, SYSDATE, SYSDATE + 25, 70, 1050.00, 'NET60', 'Quarterly restock for production.', 6);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO007', 107, SYSDATE, SYSDATE + 18, 80, 1200.00, 'NET30', 'Bi-monthly order for department.', 7);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO008', 108, SYSDATE, SYSDATE + 40, 90, 1350.00, 'NET45', 'New product line initial stock.', 8);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO009', 109, SYSDATE, SYSDATE + 30, 110, 1650.00, 'NET60', 'Expansion inventory purchase.', 9);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO010', 110, SYSDATE, SYSDATE + 60, 120, 1800.00, 'NET30', 'End of season bulk buy.', 10);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO011', 111, SYSDATE, SYSDATE + 15, 130, 1950.00, 'NET45', 'Special project A supplies.', 11);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO012', 112, SYSDATE, SYSDATE + 20, 140, 2100.00, 'NET60', 'Recurring standard order.', 12);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO013', 113, SYSDATE, SYSDATE + 25, 150, 2250.00, 'NET30', 'Refill for next quarter.', 13);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO014', 114, SYSDATE, SYSDATE + 10, 160, 2400.00, 'NET45', 'Product launch support materials.', 14);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO015', 115, SYSDATE, SYSDATE + 30, 170, 2550.00, 'NET60', 'Stock replenishment for Q3.', 15);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO016', 116, SYSDATE, SYSDATE + 45, 180, 2700.00, 'NET30', 'Routine order for routine maintenance.', 16);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO017', 117, SYSDATE, SYSDATE + 20, 190, 2850.00, 'NET45', 'New outlet setup supply order.', 17);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO018', 118, SYSDATE, SYSDATE + 35, 200, 3000.00, 'NET60', 'Overseas shipment for international client.', 18);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO019', 119, SYSDATE, SYSDATE + 28, 210, 3150.00, 'NET30', 'High demand period order adjustment.', 19);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO020', 120, SYSDATE, SYSDATE + 45, 220, 3300.00, 'NET45', 'Long-term project supply needs.', 20);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO021', 121, SYSDATE, SYSDATE + 60, 230, 3450.00, 'NET60', 'Year-end clearance purchase.', 21);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO022', 122, SYSDATE, SYSDATE + 25, 240, 3600.00, 'NET30', 'Inventory top-up for coming months.', 22);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO023', 123, SYSDATE, SYSDATE + 18, 250, 3750.00, 'NET45', 'New year preparation order.', 23);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO024', 124, SYSDATE, SYSDATE + 30, 260, 3900.00, 'NET60', 'Major contract fulfillment order.', 24);
INSERT INTO PurchasingOrder_T (PO_ID, Item_ID, Order_Date, Expected_Delivery_Date, Quantity, Fee, Payment_Term, Notes, Supplier_ID) VALUES ('PO025', 125, SYSDATE, SYSDATE + 15, 270, 4050.00, 'NET30', 'Special event supply order.', 25);

-- Creating Production Order Table
CREATE TABLE ProductionOrder_T (
	RPO_ID 		VARCHAR2(8) 	NOT NULL,
    Item_ID 	NUMBER(9,0) 	NOT NULL,
    Start_Date 	DATE 	NOT NULL,
    Expected_Finished_Date 		DATE 	NOT NULL,
    Quantity 	NUMBER(3,0) 	NOT NULL,
    CONSTRAINT ProductionOrder_PK PRIMARY KEY (RPO_ID),
    CONSTRAINT ProductionOrder_FK FOREIGN KEY (Item_ID) REFERENCES Item_T(Item_ID)
	);

-- Creating Equipment Table
CREATE TABLE Equipment_T (
	Equipment_ID 	NUMBER(2,0) 	NOT NULL,
    RPO_ID 			VARCHAR2(8) 	NOT NULL,
    Type 			VARCHAR2(64) 	NOT NULL,
    Cost 			NUMBER(5,0) 	NOT NULL,
    CONSTRAINT Equipment_PK PRIMARY KEY (Equipment_ID),
    CONSTRAINT Equipment_FK FOREIGN KEY (RPO_ID) REFERENCES ProductionOrder_T(RPO_ID)
    );

-- Creating Product Table
CREATE TABLE Product_T (
    Product_ID 		VARCHAR2(8) 	NOT NULL,
    Name 			VARCHAR2(64) 	NOT NULL,
    Description 	VARCHAR2(256),
    Unit_Price 		NUMBER(7,2),
    CONSTRAINT Product_PK PRIMARY KEY (Product_ID)
	);


-- Creating Sales Order Table
CREATE TABLE SalesOrder_T (
	SO_ID 		VARCHAR2(7) 	NOT NULL,
    Quantity 	NUMBER(3,0) 	NOT NULL,
    Order_Date 	DATE 	NOT NULL,
    Shipment_Date 	DATE,
    Shipping_Information 	VARCHAR2(256),
    Notes 	VARCHAR2(256),
    CONSTRAINT SalesOrder_PK PRIMARY KEY (SO_ID)
	);

-- Creating Order Line Table
CREATE TABLE OrderLine_T (
	SO_ID 		VARCHAR2(7) 	NOT NULL,
    Product_ID 	VARCHAR2(8) 	NOT NULL,
    Quantity 	NUMBER(3,0) 	NOT NULL,
	CONSTRAINT OrderLine_PK PRIMARY KEY (SO_ID, Product_ID),
	CONSTRAINT OrderLine_FK1 FOREIGN KEY (SO_ID) REFERENCES SalesOrder_T(SO_ID),
    CONSTRAINT OrderLine_FK2 FOREIGN KEY (Product_ID) REFERENCES Product_T(Product_ID)
    );

-- Creating Inventory Table
CREATE TABLE Inventory_T (
    Item_ID 	NUMBER(9,0) 	NOT NULL,
    Bin_Code 	VARCHAR2(5) 	NOT NULL,
    Product_ID 	VARCHAR2(8) 	NOT NULL,
    Quantity 	NUMBER(5,0) 	NOT NULL,
    Location 	VARCHAR2(256),
	CONSTRAINT Inventory_PK PRIMARY KEY (Item_ID, Product_ID),
    CONSTRAINT Inventory_FK1 FOREIGN KEY (Item_ID) REFERENCES Item_T(Item_ID),
    CONSTRAINT Inventory_FK2 FOREIGN KEY (Product_ID) REFERENCES Product_T(Product_ID)
	);

-- Creating Shipment Table
CREATE TABLE Shipment_T (
    Shipment_ID 	NUMBER(5,0) 	NOT NULL,
    SO_ID 			VARCHAR2(7) 	NOT NULL,
    Shipment_Date 	DATE,
    Status 			VARCHAR2(50),
    CONSTRAINT Shipment_PK PRIMARY KEY (Shipment_ID),
    CONSTRAINT Shipment_FK FOREIGN KEY (SO_ID) REFERENCES SalesOrder_T(SO_ID)
	);

-- Creating Equipment Maintenance Table
CREATE TABLE Equipment_Maintenance_T (
    Maintenance_ID 		NUMBER(5,0) 	NOT NULL,
    Equipment_ID 		NUMBER(2,0) 	NOT NULL,
    Maintenance_Date 	DATE 	NOT NULL,
    Details 			VARCHAR2(256),
    CONSTRAINT Equipment_Maintenance_PK PRIMARY KEY (Maintenance_ID),
    CONSTRAINT Equipment_Maintenance_FK FOREIGN KEY (Equipment_ID) REFERENCES Equipment_T(Equipment_ID)
	);

-- Creating Customer Orders Table
CREATE TABLE Customer_Orders_T (
    Order_ID 	VARCHAR2(8) 	NOT NULL,
    Shipment_ID NUMBER(5,0) 	NOT NULL,
    Order_Date 	DATE 	NOT NULL,
    Total_Cost 	NUMBER(10,2),
    CONSTRAINT Customer_Orders_PK PRIMARY KEY (Order_ID),
    CONSTRAINT Customer_Orders_FK FOREIGN KEY (Shipment_ID) REFERENCES Shipment_T(Shipment_ID)
	);

-- Creating Customer Table
CREATE TABLE Customer_T (
	Customer_ID 	NUMBER(2,0) 	NOT NULL,
    Order_ID 		VARCHAR2(8) 	NOT NULL,
    Name 			VARCHAR2(64) 	NOT NULL,
    Address 		VARCHAR2(64),
    Phone_Number 	CHAR(14),
    CONSTRAINT Customer_PK PRIMARY KEY (Customer_ID),
    CONSTRAINT Customer_FK FOREIGN KEY (Order_ID) REFERENCES Customer_Orders_T(Order_ID)
    );

-- Supplier information on PO_ID = PO004
SELECT s.Supplier_ID, s.Name, s.Address, s.Contact, s.Date_Finished
FROM PurchasingOrder_T po
JOIN Supplier_T s ON po.Supplier_ID = s.Supplier_ID
WHERE po.PO_ID = 'PO004';

-- Purchases orders that Supplier W, X, and Y ordered
SELECT po.PO_ID, po.Order_Date, po.Expected_Delivery_Date, po.Quantity, po.Fee, po.Payment_Term, po.Notes, s.Name AS Supplier_Name
FROM PurchasingOrder_T po
JOIN Supplier_T s ON po.Supplier_ID = s.Supplier_ID
WHERE s.Name IN ('Supplier W', 'Supplier X', 'Supplier Y');

-- Creating index for important attributes
-- Index for Order_Date from SalesOrder_T
CREATE INDEX idx_salesorder_order_date ON SalesOrder_T (Order_Date);

-- Index for Start_Date from ProductionOrder_T
CREATE INDEX idx_productionorder_start_date ON ProductionOrder_T (Start_Date);

-- Index for Name from Supplier_T
CREATE INDEX idx_supplier_name ON Supplier_T (Name);

-- Index for Supplier_ID from PurchasingOrder_T
CREATE INDEX idx_purchasingorder_supplier_id ON PurchasingOrder_T (Supplier_ID);

-- Index for Order_Date from PurchasingOrder_T
CREATE INDEX idx_purchasingorder_order_date ON PurchasingOrder_T (Order_Date);

-- Index for Name from Employee_T
CREATE INDEX idx_employee_name ON Employee_T (Name);

-- Index for Department_Type from Department_T
CREATE INDEX idx_department_type ON Department_T (Department_Type);

-- Index for Material_Type from Item_T
CREATE INDEX idx_item_material_type ON Item_T (Material_Type);

-- Index for Name and Customer_ID from Customer_T
CREATE INDEX idx_customer_name_id ON Customer_T (Name, Customer_ID);

-- Index for SO_ID from Shipment_T
CREATE INDEX idx_shipment_so_id ON Shipment_T (SO_ID);

-- Index for Equipment_ID from Equipment_Maintenance_T
CREATE INDEX idx_equipment_maintenance_equipment_id ON Equipment_Maintenance_T (Equipment_ID);
