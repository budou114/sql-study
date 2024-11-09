-- 重複順列を得る SQL
SELECT P1.name AS name_1, P2.name AS name_2
FROM Products P1
CROSS JOIN Products P2;

-- 意図しない結合のため避けるべき書き方
SELECT P1.name AS name_1, P2.name AS name_2
FROM Products P1, Products P2;