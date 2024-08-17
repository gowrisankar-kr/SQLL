-- Active: 1720334999306@@127.0.0.1@3306@amma_hotel
SHOW TABLES;

CREATE table menu(
    id INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(30) NOT NULL,
    price FLOAT NOT NULL,
    availability VARCHAR(30),
    food_type VARCHAR(10),
    CREATED_ON DATETIME DEFAULT CURRENT_TIMESTAMP,
    CREATED_BY INT,
    UPDATED_ON DATETIME DEFAULT NULL,
    UPDATED_BY INT,
    IS_DELETED INT DEFAULT 0
);

fbbbjbjjbbjjbbjbjbjjbjbbjbjjb



SELECT * from menu m 
WHERE m.price = (SELECT max(m1.price) from menu m1);


SELECT * from menu
ORDER BY price DESC;































































































EATfbbbjbjjbbjjbbjbjbjjbjbbjbjjb



















































































 TABLE employee(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    age INT DEFAULT nullfbbbjbjjbbjjbbjbjbjjbjbbjbjjb




















































































    contact_number VARCHAR(20),
    address VARCHAR(100),
    created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    updated_on DATETIME DEFAULT null,
    updated_by INT,
    is_deleted INT DEFAULT 0
)fbbbjbjjbbjjbbjbjbjjbjbbjbjjb





















































































CREATE Table order_table(
    id INT PRIMARY KEY AUTO_INCREMENT,
    table_id INT DEFAULT NULL,
    total_price float DEFAULT null,
    created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    updated_on DATETIME DEFAULT null,
    updated_by INT,
    is_deleted INT DEFAULT 0
);

drop table order_table;



create Table order_food_mapping(
    id INT PRIMARY KEY AUTO_INCREMENT,
    food_id INT NOT NULL,
    order_id INT NOT NULL,
    qty INT DEFAULT 1,
    FOREIGN KEY (food_id) REFERENCES menu(id),
    FOREIGN KEY (order_id) REFERENCES order_table(id)
);

drop table order_food_mapping;


insert INTO menu(food_name,price,availability,food_type,created_by)
    VALUES ('pongal',20.0,'morning','veg',1),
           ('idly',10.0,'morning','veg',1),
           ('dosa',25.0,'morning','veg',1),
           ('chappathi',30.0,'morning','veg',1),
           ('coffee',15.0,'morning','veg',1),
           ('bread-omelet',20.0,'morning','non-veg',1);


INSERT INTO order_table(table_id) 
VALUES 
    (4),
    (2),
    (8),
    (33);

INSERT INTO order_food_mapping(food_id, order_id, qty) 
VALUES 
    (1, 4, 2), 
    (2, 3, 1), 
    (3, 2, 4), 
    (4, 1, 7), 
    (2, 1, 2), 
    (3, 4, 3), 
    (1, 2, 5), 
    (6, 2, 9);



select m.food_name,sum(ofm.qty) from order_food_mapping ofm
join menu m on m.id = ofm.food_id
GROUP BY m.food_name
ORDER BY sum(ofm.qty) desc;

SELECT m.food_name as food,m.price,
    ofm.qty ,ot.table_id,
    m.price*ofm.qty as total_price
from order_table OT
JOIN order_food_mapping ofm on ot.id = ofm.order_id
join menu m on ofm.food_id = m.i









