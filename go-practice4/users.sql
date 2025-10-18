CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    balance DECIMAL(10,2) DEFAULT 0.00
);

INSERT INTO users (name, email, balance) VALUES
('Alice Johnson', 'alice@example.com', 1000.00),
('Bob Smith', 'bob@example.com', 500.00),
('Charlie Brown', 'charlie@example.com', 750.00),
('Diana Prince', 'diana@example.com', 1200.00)
ON CONFLICT (email) DO NOTHING;