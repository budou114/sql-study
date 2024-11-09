-- ランキング算出：ウィンドウ関数の利用
SELECT
    name,
    price,
    RANK() OVER (ORDER BY price DESC) AS rank_1,
    DENSE_RANK() OVER (ORDER BY price DESC) AS rank_2
FROM Products;
