SELECT menu.pizza_name AS pizza_name, price, pizzeria.name AS pizzeria_name
FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE menu.id NOT IN (SELECT person_order.menu_id FROM person_order)
ORDER BY  pizza_name ASC, price ASC;