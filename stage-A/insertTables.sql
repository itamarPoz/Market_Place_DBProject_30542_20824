-- Insert into Suppliers
INSERT INTO Suppliers VALUES (1, 'Supplier One', '123-456-7890', '1 Supplier St');
INSERT INTO Suppliers VALUES (2, 'Supplier Two', '987-654-3210', '2 Supplier Ave');
INSERT INTO Suppliers VALUES (3, 'Supplier Three', '555-123-4567', '3 Supplier Blvd');

-- Insert into Departments
INSERT INTO Departments VALUES (1, 'Electronics', 'Electronic gadgets');
INSERT INTO Departments VALUES (2, 'Books', 'Printed and e-books');
INSERT INTO Departments VALUES (3, 'Furniture', 'Home and office');

-- Insert into Customers
INSERT INTO Customers VALUES ('Customer A', 'a@example.com', '111-222-3333', '1 Main St', 1);
INSERT INTO Customers VALUES ('Customer B', 'b@example.com', '444-555-6666', '2 Oak Rd', 2);
INSERT INTO Customers VALUES ('Customer C', 'c@example.com', '777-888-9999', '3 Pine Ln', 3);

-- Insert into Items
INSERT INTO Items VALUES (1, 'Laptop', 'Available', 999.99, 10, '2024-01-01', 1);
INSERT INTO Items VALUES (2, 'Novel', 'Available', 25.50, 50, '2024-01-10', 2);
INSERT INTO Items VALUES (3, 'Desk', 'In stock', 199.90, 5, '2024-01-15', 3);

-- Insert into Orders
INSERT INTO Orders VALUES ('2024-01-05', 1, 1);
INSERT INTO Orders VALUES ('2024-01-06', 2, 2);
INSERT INTO Orders VALUES ('2024-01-07', 3, 3);

-- Insert into Feedbacks
INSERT INTO Feedbacks VALUES (4.5, 1, '2024-01-10', 'Great laptop!', 1, 1);
INSERT INTO Feedbacks VALUES (3.0, 2, '2024-01-12', 'Nice but pricey', 2, 2);
INSERT INTO Feedbacks VALUES (5.0, 3, '2024-01-15', 'Perfect desk', 3, 3);

-- Insert into sell
INSERT INTO sell VALUES (1, 1);
INSERT INTO sell VALUES (2, 1);
INSERT INTO sell VALUES (3, 2);

-- Insert into OrderItems
INSERT INTO OrderItems VALUES (1, 1, 1);
INSERT INTO OrderItems VALUES (2, 2, 2);
INSERT INTO OrderItems VALUES (1, 3, 3);

-- Insert into OrderDetails
INSERT INTO OrderDetails VALUES ('TRK123', 'Shipped', 'Standard', 1);
INSERT INTO OrderDetails VALUES ('TRK456', 'Processing', 'Express', 2);
INSERT INTO OrderDetails VALUES ('TRK789', 'Delivered', 'Standard', 3);
