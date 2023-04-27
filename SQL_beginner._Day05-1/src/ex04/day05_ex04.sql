CREATE UNIQUE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);

SET enable_seqscan = FALSE;

EXPLAIN ANALYZE
SELECT menu.pizzeria_id, menu.pizza_name
FROM menu;