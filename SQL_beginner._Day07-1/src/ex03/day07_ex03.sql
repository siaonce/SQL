WITH v_o AS ((SELECT pizzeria.name AS name, COUNT(person_id) AS count, 'visit' AS action_type
			  FROM person_visits
			  JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
			  GROUP BY pizzeria.name
		  	  ORDER BY 2 DESC)
				UNION ALL
  	(SELECT pizzeria.name AS name, COUNT(person_id) AS count, 'order' AS action_type
			  FROM person_order
			  JOIN menu ON person_order.menu_id = menu.id
			  JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
		 	  GROUP BY pizzeria.name
		 	  ORDER BY 2 DESC))

SELECT v_o.name, SUM(count) AS total_count
FROM v_o
GROUP BY 1
ORDER BY 2 DESC, 1 ASC;
