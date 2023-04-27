SELECT pizzeria.name, COUNT (order_date) AS count_of_orders, ROUND(AVG(price), 2) AS average_price, MAX(price) AS max_price, MIN(price) AS min_price
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY 1
ORDER BY 1;