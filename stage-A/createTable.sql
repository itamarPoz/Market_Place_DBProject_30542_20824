CREATE TABLE Suppliers (
  supplier_id INT NOT NULL,
  supplier_name VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  address VARCHAR(200) NOT NULL,
  PRIMARY KEY (supplier_id)
);

CREATE TABLE Departments (
  department_id INT NOT NULL,
  department_name VARCHAR(35) NOT NULL,
  information VARCHAR(50) NOT NULL,
  PRIMARY KEY (department_id)
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
  Item_id INT NOT NULL,
  Item_name VARCHAR(200) NOT NULL,
  status VARCHAR(20) NOT NULL,
  price numeric(10,2) NOT NULL,
  stock INT NOT NULL,
  available_date DATE NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (Item_id),
  FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Orders (
  order_id INT NOT NULL,
  order_date DATE NOT NULL,
  customer_id INT NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Feedbacks (
  feedback_id INT NOT NULL,
  rating numeric(10,1) NOT NULL,
  comment_text VARCHAR(2000) NOT NULL,
  feedback_date DATE NOT NULL,
  Item_id INT NOT NULL,
  customer_id INT NOT NULL,
  PRIMARY KEY (feedback_id),
  FOREIGN KEY (Item_id) REFERENCES Items(Item_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE sell (
  Item_id INT NOT NULL,
  supplier_id INT NOT NULL,
  PRIMARY KEY (Item_id, supplier_id),
  FOREIGN KEY (Item_id) REFERENCES Items(Item_id),
  FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE OrderItems (
  order_id INT NOT NULL,
  Item_id INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (order_id, Item_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (Item_id) REFERENCES Items(Item_id)
);

CREATE TABLE OrderDetails (
  order_id INT NOT NULL,
  delivery_method VARCHAR(20) NOT NULL,
  tracking_number VARCHAR(20) NOT NULL,
  order_status VARCHAR(20) NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
