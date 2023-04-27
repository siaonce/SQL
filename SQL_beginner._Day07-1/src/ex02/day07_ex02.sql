WITH v AS (SELECT pizzeria.name AS name, COUNT(person_id) AS count, 'visit' AS action_type
			  FROM person_visits
			  JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
			  GROUP BY pizzeria.name
		  	  ORDER BY 3 ASC, 2 DESC LIMIT 3),

  	o AS (SELECT pizzeria.name AS name, COUNT(person_id) AS count, 'order' AS action_type
			  FROM person_order
			  JOIN menu ON person_order.menu_id = menu.id
			  JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
		 	  GROUP BY pizzeria.name
		 	  ORDER BY 3 ASC, 2 DESC LIMIT 3)
SELECT *
FROM v
UNION
SELECT *
FROM o
ORDER BY 3 ASC, 2 DESC;