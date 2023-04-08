CREATE DATABASE midterm_test;

USE midterm_test;

CREATE TABLE category (
    category_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE orders (
    id INT NOT NULL AUTO_INCREMENT,
    total_selling_price INT,
    PRIMARY KEY (id)
);

CREATE TABLE order_product (
    order_id INT NOT NULL,
    product_id INT NOT NULL
);

CREATE TABLE product (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    image_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    weight DOUBLE NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    password VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE user_role (
    user_id INT NOT NULL,
    role_id INT NOT NULL
);

INSERT INTO category (category_id, name) VALUES
(NULL, 'Bánh mì'),
(NULL, 'Bánh gato');

INSERT INTO product (`id`, `name`, `image_name`, `description`, `price`, `weight`, `category_id`) VALUES
(NULL, 'Bánh mì không', 'banhmi1.jpg', 'Bánh mì không', '1', '30', '1'),
(NULL, 'Bánh mì thịt', 'banhmi2.jpg', 'Bánh mì thịt', '5', '100', '1'),
(NULL, 'Bánh sinh nhật 1', '16714-birthday-cake-600x600.jpg', 'Bánh sinh nhật 1', '20', '1000', '2'),
(NULL, 'Bánh sinh nhật 2', 'clinkers-cake-173208-2.jpg', 'Bánh sinh nhật 2', '50', '2000', '2');

INSERT INTO roles (id, name) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

INSERT INTO users (id, email, password, first_Name, last_Name) VALUES
(1, 'admin@gmail.com', '$2a$10$moTjfAVBJzNS32q7NPPVh.iAGDbZSkjZJBkdxT5ZLKQ3R1Vh/y9Fi', 'Thanh', 'Nguyen');

insert into user_role(user_id, role_id) values
(1,1),
(1,2);
