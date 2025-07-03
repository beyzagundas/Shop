
CREATE TABLE Customer (
    id int primary key not null ,
    name varchar(20) not null

);


CREATE TABLE Address (
    id int primary key not null,
    customer_id int not null,
    type varchar(15) not null,
    FOREIGN KEY (customer_id) REFERENCES Customer(id)
);



CREATE TABLE Employee (
    id int primary key not null,
    name varchar(20) not null,
    position varchar(20) not null,
    manager_id int ,
    FOREIGN KEY (manager_id) REFERENCES Employee(id)
);


CREATE TABLE _Order (
    id int primary key not null,
    customer_id int not null,
	name text not null,
    handled_by int not null,
    FOREIGN KEY (customer_id) REFERENCES Customer(id),
    FOREIGN KEY (handled_by) REFERENCES Employee(id)
);


CREATE TABLE Category (
    id int primary key not null,
    name varchar(20) not null,
    parent_id int,
    FOREIGN KEY (parent_id) REFERENCES Category(id)
);


CREATE TABLE Product (
    id int primary key not null,
	category_id int not null,
    name varchar(20) not null,
    FOREIGN KEY (category_id) REFERENCES Category(id)
);


CREATE TABLE OrderItem (
    id int primary key not null,
    order_id int not null,
    product_id int not null,	
    FOREIGN KEY (order_id) REFERENCES _Order(id),
    FOREIGN KEY (product_id) REFERENCES Product(id)
);


CREATE TABLE Review (
    id int primary key not null,
    customer_id int not null,
    product_id int not null,
    point int CHECK (point BETWEEN 1 AND 5) not null,
    comment text,
    UNIQUE (customer_id, product_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(id),
    FOREIGN KEY (product_id) REFERENCES Product(id)
);
