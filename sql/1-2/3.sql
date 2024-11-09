SELECT
    sample_date AS cur_date,
    MIN(sample_date) OVER (ORDER BY sample_date ASC ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_date
FROM LoadSample;
