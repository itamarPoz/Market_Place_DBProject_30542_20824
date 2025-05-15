-- Insert into Suppliers
INSERT INTO Suppliers VALUES (1, 'Supplier One', '123-456-7890', '1 Supplier St');
INSERT INTO Suppliers VALUES (2, 'Supplier Two', '987-654-3210', '2 Supplier Ave');
INSERT INTO Suppliers VALUES (3, 'Supplier Three', '555-123-4567', '3 Supplier Blvd');

-- Insert into Departments
INSERT INTO Departments VALUES (1, 'Electronics', 'Electronic gadgets');
INSERT INTO Departments VALUES (2, 'Books', 'Printed and e-books');
INSERT INTO Departments VALUES (3, 'Furniture', 'Home and office');

-- Insert into Customers
INSERT INTO Customers VALUES (1, 'Customer A', 'a@example.com', '111-222-3333', '1 Main St');
INSERT INTO Customers VALUES (2, 'Customer B', 'b@example.com', '444-555-6666', '2 Oak Rd');
INSERT INTO Customers VALUES (3, 'Customer C', 'c@example.com', '777-888-9999', '3 Pine Ln');

-- Insert into Items
INSERT INTO Items VALUES (1, 'Laptop', 'Available', 999.99, 10, '2024-01-01', 1);
INSERT INTO Items VALUES (2, 'Novel', 'Available', 25.50, 50, '2024-01-10', 2);
INSERT INTO Items VALUES (3, 'Desk', 'In stock', 199.90, 5, '2024-01-15', 3);

-- Insert into Orders
INSERT INTO Orders VALUES (1, '2024-01-05', 1);
INSERT INTO Orders VALUES (2, '2024-01-06', 2);
INSERT INTO Orders VALUES (3, '2024-01-07', 3);

-- Insert into Feedbacks
INSERT INTO Feedbacks VALUES (1, 4.5, 'Great laptop!', '2024-01-10', 1, 1);
INSERT INTO Feedbacks VALUES (2, 3.0, 'Nice but pricey', '2024-01-12', 2, 2);
INSERT INTO Feedbacks VALUES (3, 5.0, 'Perfect desk', '2024-01-15', 3, 3);

-- Insert into sell
INSERT INTO sell VALUES (1, 1);
INSERT INTO sell VALUES (2, 1);
INSERT INTO sell VALUES (3, 2);

-- Insert into OrderItems
INSERT INTO OrderItems VALUES (1, 1, 1);
INSERT INTO OrderItems VALUES (2, 2, 2);
INSERT INTO OrderItems VALUES (3, 3, 1);

-- Insert into OrderDetails
INSERT INTO OrderDetails VALUES (1, 'TRK123', 'Shipped', 'Standard');
INSERT INTO OrderDetails VALUES (2, 'TRK456', 'Processing', 'Express');
INSERT INTO OrderDetails VALUES (3, 'TRK789', 'Delivered', 'Standard');
