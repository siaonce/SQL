SELECT person.address, ROUND(MAX(person.age)::numeric - (MIN(person.age)::numeric / MAX(person.age)::numeric), 2)::real AS formula, ROUND(AVG(person.age), 2)::real AS average, 
 (ROUND(MAX(person.age)::numeric - (MIN(person.age)::numeric / MAX(person.age)::numeric), 2)::real) > (ROUND(AVG(person.age), 2)::real) AS comparison
FROM person
GROUP BY person.address
ORDER BY 1;