CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    signup_date DATE,
    total_spent DECIMAL(10,2)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id),
    product VARCHAR(100),
    amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO customers (name, email, signup_date, total_spent) VALUES
('Alice Johnson', 'alice@example.com', '2024-01-15', 1250.00),
('Bob Smith', 'bob@example.com', '2024-03-22', 890.50),
('Charlie Lee', 'charlie@example.com', '2024-06-01', 2100.75),
('Diana Patel', 'diana@example.com', '2024-02-10', 3400.00);

INSERT INTO orders (customer_id, product, amount, order_date) VALUES
(1, 'Laptop', 999.99, '2024-07-01'),
(1, 'Mouse', 29.99, '2024-07-05'),
(2, 'Keyboard', 79.99, '2024-08-12'),
(3, 'Monitor', 449.00, '2024-09-03'),
(3, 'Webcam', 89.99, '2024-09-10'),
(4, 'Headphones', 199.99, '2024-06-20'),
(4, 'Desk Chair', 549.00, '2024-07-15');