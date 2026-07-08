-- Create the table
CREATE TABLE IF NOT EXISTS employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    salary NUMERIC(10,2),
    created_at TIMESTAMP DEFAULT NOW()
);

-- Insert sample data so the demo has something visible to show
INSERT INTO employees (name, department, salary) VALUES
    ('Ali Raza', 'Engineering', 95000),
    ('Sara Khan', 'Marketing', 72000),
    ('Bilal Ahmed', 'Engineering', 88000),
    ('Ayesha Malik', 'Finance', 79000),
    ('Usman Tariq', 'Sales', 68000),
    ('Fahad Nasir', 'Finance', 82000)
ON CONFLICT DO NOTHING;