-- CHECK constraint for the Items table: Ensures price is positive and within a reasonable range
ALTER TABLE Items
ADD CONSTRAINT chk_price_positive
CHECK (price > 0 AND price <= 10000);

-- CHECK constraint for the OrderDetails table: Ensures order_status is one of the allowed values
ALTER TABLE OrderDetails
ADD CONSTRAINT chk_order_status_valid
CHECK (order_status IN ('pending', 'delivered', 'cancelled', 'shipped'));

-- UNIQUE constraint for the Suppliers table: Ensures the combination of supplier name and address is unique
ALTER TABLE Suppliers
ADD CONSTRAINT unique_supplier_name_address
UNIQUE (supplier_name, address);