-- 「直近の前」、「さらにその前」を取得する方法
SELECT
    sample_date AS cur_date,
    MIN(sample_date) OVER (ORDER BY sample_date ASC ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_1,
    MIN(sample_date) OVER (ORDER BY sample_date ASC ROWS BETWEEN 2 PRECEDING AND 2 PRECEDING) AS latest_2,
    MIN(sample_date) OVER (ORDER BY sample_date ASC ROWS BETWEEN 3 PRECEDING AND 3 PRECEDING) AS latest_3
FROM LoadSample;