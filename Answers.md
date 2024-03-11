1-->The relationship between the "Product" and "Product_Category" entities is typically a one-to-many relationship, where one product belongs to one specific category, 
    but a category can have many products associated with it.
    In a relational database model, this relationship is often implemented using foreign keys. In the "Product" table, there would be a column (let's call it category_id)
    that references the primary key (usually id) of the "Product_Category" table. This category_id column serves as a foreign key,establishing the relationship between the two tables.

    
2-->To ensure that each product in the "Product" table has a valid category assigned to it, you can enforce referential integrity using foreign key constraints. 
    Foreign key constraints ensure that values in a column (in this case, category_id in the "Product" table) match values in another table (the "Product_Category" table). 
    This means that every category_id in the "Product" table must exist in the "Product_Category" table.
    this is how we can create a foreign key in products table- 
    
    CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10,2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id));
