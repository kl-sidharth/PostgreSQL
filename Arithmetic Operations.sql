-- Addition, subtraction, multiplication and division
SELECT first_name, salary,
       salary + 5000 AS added_salary,
       salary - 2000 AS reduced_salary,
       salary * 12 AS annual_salary,
       salary / 2 AS half_salary
FROM employee2;

-- Bonus and increment
SELECT first_name, salary,
       salary * 0.10 AS bonus,
       salary * 0.05 AS increment,
       salary * 1.05 AS new_salary
  -- we can also write ( salary + salary * 0.05 ) AS new_salary
FROM employee2;

-- Modulus
SELECT first_name, salary,
       salary % 1000 AS remainder
FROM employee2;
