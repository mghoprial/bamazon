DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE ice_creamDB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(80) NOT NULL,
   department_name VARCHAR(80) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity (10) INT NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products
  (product_name, department_name, price, stock_quantity)

  VALUES
  ('transformer bot', 'toys', 6, 10)
  ('banana', 'food', 2.99, 100)
  ('headphones', 'electronics', 50, 50)
  ('tv', 'electronics', 400, 25)
  ('shirt', 'clothing', 10, 100)
  ('pull up bar', 'exercise', 30, 45)
  ('cookies', 'food', 3.99, 200)
  ('guitar', 'musical instrument', 300, 100)
  ('toilet', 'bathroom', 200, 20)
  ('toenail clippers', 'bathroom', 4, 50)
