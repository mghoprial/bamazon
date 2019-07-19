DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products
(
  id INT NOT NULL
  AUTO_INCREMENT,
  product_name VARCHAR
  (80) NOT NULL,
   department_name VARCHAR
  (80) NOT NULL,
  price DECIMAL
  (10,2) NOT NULL,
  stock_quantity INT
  (10)  NULL,
  PRIMARY KEY
  (id)
);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)

  VALUES
    ('mp3 player', 'electronics', 6, 10),
    ('headphones', 'electronics', 50, 50),
    ('tv', 'electronics', 400, 25),
    ('shirt', 'clothing', 10, 100),
    ('pull up bar', 'exercise', 30, 45),
    ('cookies', 'food', 3.99, 200),
    ('jeans', 'clothing', 300, 100),
    ('toilet', 'bathroom', 200, 20),
    ('toenail clippers', 'bathroom', 4, 50),
    ('banana', 'food', 3, 100);


  -- INSERT INTO departments
  --   (department_name, over_head_costs)
  -- VALUES
  --   ('food', 500),
  --   ('electronics', 450),
  --   ('bathroom', 325),
  --   ('exercise', 500),
  --   ('clothing', 500)

