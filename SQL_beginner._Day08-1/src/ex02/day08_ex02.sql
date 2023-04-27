BEGIN; --Session 1
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ; --level isolation
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --before coomit, rating 3.6
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut'; --update session 1 on 4
COMMIT WORK; --download update
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --after commit, rating 4

BEGIN; --Session 2
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ; --level isolation
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --before coomit, rating 3.6
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut'; --update session 2 on 3.6
COMMIT WORK; --download update
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --after commit, rating 4