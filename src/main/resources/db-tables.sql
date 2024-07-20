CREATE SCHEMA SCHEMA;

CREATE TABLE IF NOT EXISTS SCHEMA.CUSTOMERS (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(255),
                           surname VARCHAR(255),
                           age INT,
                           phone_number VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS SCHEMA.ORDERS (
                        id SERIAL PRIMARY KEY,
                        date VARCHAR(255),
                        customer_id INT NOT NULL,
                        product_name VARCHAR(255),
                        amount INT,
                        FOREIGN KEY (customer_id) REFERENCES SCHEMA.CUSTOMERS (id)
);

insert into SCHEMA.CUSTOMERS
values (1, 'IVAN', 'KOSULIN',40,'+70001111111'),
       (2, 'DMITRY', 'KAZMERCHUK', 41, '+7002222222'),
       (3, 'SERGEY', 'IVANOV', 39, '+70003333333'),
       (4, 'alexey', 'SIDOROV', 38, '+70004444444'),
       (5, 'alexey', 'SENKIN', 45, '+70005555555');

insert into SCHEMA.ORDERS
values (1, '01.01.2024', 1, 'молоко', 100),
       (2, '02.01.2024', 2, 'хлеб', 50),
       (3, '03.01.2024', 3, 'фрукты', 500),
       (4, '04.01.2024', 4, 'мясо', 800),
       (5, '05.01.2024', 5, 'овощи', 350);
