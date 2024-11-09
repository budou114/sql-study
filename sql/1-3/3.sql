-- 同じ家族だけど、住所が違うレコードを検索する SQL
SELECT DISTINCT A1.name, A1.address
FROM Addresses A1
INNER JOIN Addresses A2
    ON A1.family_id = A2.family_id
    AND A1.address <> A2.address ;