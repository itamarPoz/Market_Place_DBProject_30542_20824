CREATE TABLE Suppliers (
  suppliers_id INT NOT NULL,
  suppliers_name VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  address VARCHAR(200) NOT NULL,
  PRIMARY KEY (suppliers_id)
);

CREATE TABLE Departments (
  departments_id INT NOT NULL,
  departments_name VARCHAR(35) NOT NULL,
  information VARCHAR(50) NOT NULL,
  PRIMARY KEY (departments_id)
);

CREATE TABLE Customers (
  customer_id INT NOT NULL,
  customer_name VARCHAR(200) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  address VARCHAR(200) NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE Items (
  Items_id INT NOT NULL,
  Items_name VARCHAR(200) NOT NULL,
  status VARCHAR(20) NOT NULL,
  price numeric(10,2) NOT NULL,
  stock INT NOT NULL,
  available_date DATE NOT NULL,
  departments_id INT NOT NULL,
  PRIMARY KEY (Items_id),
  FOREIGN KEY (departments_id) REFERENCES Departments(departments_id)
);

CREATE TABLE Orders (
  order_id INT NOT NULL,
  order_date DATE NOT NULL,
  customer_id INT NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Feedbacks (
  feedbacks_id INT NOT NULL,
  rating numeric(10,1) NOT NULL,
  comment_text VARCHAR(2000) NOT NULL,
  feedbacks_date DATE NOT NULL,
  Items_id INT NOT NULL,
  customer_id INT NOT NULL,
  PRIMARY KEY (feedbacks_id),
  FOREIGN KEY (Items_id) REFERENCES Items(Items_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE sell (
  Items_id INT NOT NULL,
  suppliers_id INT NOT NULL,
  PRIMARY KEY (Items_id, suppliers_id),
  FOREIGN KEY (Items_id) REFERENCES Items(Items_id),
  FOREIGN KEY (suppliers_id) REFERENCES Suppliers(suppliers_id)
);

CREATE TABLE OrderItems (
  order_id INT NOT NULL,
  Items_id INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (order_id, Items_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (Items_id) REFERENCES Items(Items_id)
);

CREATE TABLE OrderDetails (
  order_id INT NOT NULL,
  delivery_method VARCHAR(20) NOT NULL,
  tracking_number VARCHAR(20) NOT NULL,
  order_status VARCHAR(20) NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
