CREATE TABLE clients (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	contact_number INT UNIQUE,
	address VARCHAR(50)
);

CREATE TABLE providers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	provider_name VARCHAR(50)
);

CREATE TABLE items (
	id INT PRIMARY KEY AUTO_INCREMENT,
	item_name VARCHAR(50) UNIQUE,
	price_per_unit FLOAT CHECK(price_per_unit > 0),
	provider_id INT,
	FOREIGN KEY(provider_id) REFERENCES providers(id)
);

CREATE TABLE pedidos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	pedido_request TIMESTAMP,
	pedido_arrival TIMESTAMP,
	item_id INT,
	FOREIGN KEY(item_id) REFERENCES items(id)
);

CREATE TABLE inventary (
	id INT PRIMARY KEY AUTO_INCREMENT,
	pedido_id INT,
	FOREIGN KEY(pedido_id) REFERENCES pedidos(id)
);

CREATE TABLE services (
	id INT PRIMARY KEY AUTO_INCREMENT,
	service_name VARCHAR(50),
	price FLOAT
);

CREATE TABLE purchases (
	id INT PRIMARY KEY AUTO_INCREMENT,
	purchase_date TIMESTAMP,
	id_client INT,
	inventary_id INT,
	service_id INT,
	total_cost FLOAT CHECK(total_cost > 0),
	FOREIGN KEY(id_client) REFERENCES clients(id),
	FOREIGN KEY(inventary_id) REFERENCES inventary(id),
	FOREIGN KEY(service_id) REFERENCES services(id)
);
