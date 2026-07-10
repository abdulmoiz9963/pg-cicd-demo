-- Create the table
-- CREATE TABLE IF NOT EXISTS employees (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL UNIQUE,
--     department VARCHAR(100),
--     salary NUMERIC(10,2),
--     created_at TIMESTAMP DEFAULT NOW()
-- );

-- Insert sample data (safe to re-run, won't duplicate)
INSERT INTO employees (name1, department, salary) VALUES
    -- ('Ali Raza', 'Engineering', 95000),
    -- ('Sara Khan', 'Marketing', 72000),
    -- ('Bilal Ahmed', 'Engineering', 88000),
    -- ('Ayesha Malik', 'Finance', 79000),
    -- ('Usman Tariq', 'Sales', 68000),
    -- ('Hassan Iqbal', 'Engineering', 91000),
    -- ('Zara Sheikh', 'Marketing', 75000),
    -- ('Fahad Nasir', 'Finance', 82000) ,
    -- ('Abdul Moiz', 'devops', 94000),
    -- ('Fouzan', 'aws devops', 94000),
    -- ('Awais', 'Software engineer', 194000),
    ('Fahad1', 'Software', 194000)

ON CONFLICT (name) DO NOTHING;