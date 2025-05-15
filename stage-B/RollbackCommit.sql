--ROLLBACK--
UPDATE Items i
SET price = price * 1.5
WHERE item_id % 2 = 0;

SELECT * FROM Items i
ORDER BY item_id ASC; 

ROLLBACK;

SELECT * FROM Items i
ORDER BY item_id ASC;

--COMMIT--
UPDATE Items i
SET price = price * 1.5
WHERE item_id % 2 = 0;

SELECT * FROM Items i
ORDER BY item_id ASC; 

COMMIT;

SELECT * FROM Items i
ORDER BY item_id ASC; 