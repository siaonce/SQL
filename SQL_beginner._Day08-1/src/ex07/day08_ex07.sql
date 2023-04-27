BEGIN TRANSACTION; --Session 1
UPDATE pizzeria SET rating = 3 WHERE id = 1; --update 1
UPDATE pizzeria SET rating = 3 WHERE id = 2; --update 3
COMMIT WORK; --commit

BEGIN TRANSACTION; --Session 2
UPDATE pizzeria SET rating = 3 WHERE id = 2; --update 2
UPDATE pizzeria SET rating = 3 WHERE id = 1; --update 4
COMMIT WORK; --commit