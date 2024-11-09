SELECT
	shohin_id,
    shohin_mei,
    hanbai_tanka,
    AVG(hanbai_tanka)   OVER W AS moving_avg,
    SUM(hanbai_tanka)   OVER W AS moving_sum,
    COUNT(hanbai_tanka) OVER W AS moving_count,
    MAX(hanbai_tanka)   OVER W AS moving_max
FROM Shohin
WINDOW W AS (ORDER BY shohin_id ROWS BETWEEN 2 PRECEDING AND CURRENT ROW);
