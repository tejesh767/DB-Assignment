3--> schema in SQLite is as follows

  
-- Create Product_Category table
CREATE TABLE Product_Category (
    id INTEGER PRIMARY KEY,
    name varchar(250),
    desc text,
    created_at text //SQlite does not have a specific datetime type
    modified_at text,
    deleted_at text
);

-- Create Product_Inventory table
CREATE TABLE Product_Inventory (
    id INTEGER PRIMARY KEY,
    quantity integer,
    created_at text  
    modified_at text,
    deleted_at text 
);

-- Create Discount table
CREATE TABLE Discount (
    id INTEGER PRIMARY KEY,
    name varchar(250),
    discount_details TEXT,
    created_at text  
    modified_at text,
    deleted_at text
);

-- Create Product table
CREATE TABLE Product (
    id INTEGER PRIMARY KEY,
    name TEXT,
    desc TEXT,
    SKU varchar(250),
    price integer,
    category_id INTEGER,
    inventory_id INTEGER,
    discount_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id),
    FOREIGN KEY (inventory_id) REFERENCES Product_Inventory(id),
    FOREIGN KEY (discount_id) REFERENCES Discount(id)
);
