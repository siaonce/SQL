SHOW TRANSACTION ISOLATION LEVEL;
BEGIN; --Session 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --before coomit, rating 4
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --after coomit, rating 3.6
COMMIT WORK; --commit
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';  --after coomit, rating 3.6

SHOW TRANSACTION ISOLATION LEVEL;
BEGIN;--Session 2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut'; --update session 2 on 3.6
COMMIT WORK; --commit
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --after coomit, rating 3.6
