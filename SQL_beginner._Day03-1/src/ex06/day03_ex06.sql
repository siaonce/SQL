WITH a AS (SELECT pizzeria.name, menu.pizza_name, menu.price
	   FROM menu
	   JOIN pizzeria ON menu.pizzeria_id = pizzeria.id),
	 b AS (SELECT pizzeria.name, menu.pizza_name, menu.price
	   FROM menu
	   JOIN pizzeria ON menu.pizzeria_id = pizzeria.id)
SELECT a.pizza_name AS pizza_name, a.name AS pizzeria_name_1, b.name AS pizzeria_name_2, a.price
FROM a
JOIN b ON a.pizza_name = b.pizza_name AND a.price = b.price
WHERE a.name != b.name AND a.name < b.name
ORDER BY pizza_name;