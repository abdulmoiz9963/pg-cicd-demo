-- Function 1: total employee count
CREATE OR REPLACE FUNCTION get_employee_count()
RETURNS INTEGER AS $$
DECLARE
    total INTEGER;
BEGIN
    SELECT COUNT(*) INTO total FROM employees;
    RETURN total;
END;
$$ LANGUAGE plpgsql;

-- Function 2: average salary by department (more visual, better demo value)
CREATE OR REPLACE FUNCTION avg_salary_by_department(dept VARCHAR)
RETURNS NUMERIC AS $$
DECLARE
    avg_sal NUMERIC;
BEGIN
    SELECT AVG(salary) INTO avg_sal FROM employees WHERE department = dept;
    RETURN avg_sal;
END;
$$ LANGUAGE plpgsql;