SET enable_indexscan = ON;
SET enable_seqscan = FALSE;
EXPLAIN ANALYZE
SELECT menu.pizza_name, pizzeria.name AS pizzeria_name
FROM menu AS m
LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id;