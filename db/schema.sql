-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;
-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE Category(
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    category_name VARCHAR(30) NOT NULL
);
CREATE TABLE Product(
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_name VARCHAR(30) NOT NULL
    -- figure out how to valudate value as decimal
    price DECIMAL NOT NULL,
    -- figure out how to validate value as numeric
    stock INTEGER NOT NULL DEFAULT 10,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES Category(id) ON DELETE SET NULL
);
CREATE TABLE Tag(
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tag_name VARCHAR(30)
);
CREATE TABLE ProductTag(
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_id INTEGER
    FOREIGN KEY (product_id) REFERENCES Product(id) ON DELETE SET NULL,
    tag_id INTEGER
    FOREIGN KEY (tag_id) REFERENCES Tag(id) ON DELETE SET NULL
);

