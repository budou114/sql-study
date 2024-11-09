--同じ値段だけど、商品名が違うレコードを検索する SQL
SELECT DISTINCT P1.name, P1.price
FROM Products P1
INNER JOIN Products P2
    ON P1.price = P2.price
    AND P1.name <> P2.name
ORDER BY P1.price;
