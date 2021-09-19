DROP TABLE IF EXISTS clients CASCADE;
DROP TABLE IF EXISTS dishes CASCADE;
DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE clients (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  phone_number INTEGER NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  post_code VARCHAR(255) NOT NULL,
  province VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE dishes (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  cooking_time INTEGER,
  price INTEGER,
  img_url VARCHAR
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY NOT NULL,
  quantity INTEGER NOT NULL,
  dish_id INTEGER REFERENCES dishes(id) ON DELETE CASCADE,
  clients_id INTEGER REFERENCES clients(id) ON DELETE CASCADE,
  order_type VARCHAR(255)
);
