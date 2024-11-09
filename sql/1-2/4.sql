-- 修正前
SELECT
    sample_date AS cur_date,
    load_val AS cur_load,
    MIN(sample_date) OVER (ORDER BY sample_date ASC ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_date,
    MIN(load_val) OVER (ORDER BY sample_date ASC ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_load
FROM LoadSample;

-- 修正後
SELECT
    sample_date AS cur_date,
    load_val AS cur_load,
    MIN(sample_date) OVER W AS latest_date,
    MIN(load_val) OVER W AS latest_load
FROM LoadSample
WINDOW W AS (ORDER BY sample_date ASC ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING);

--これでも結果はMINと同じ
SELECT
    sample_date AS cur_date,
    load_val AS cur_load,
    MAX(sample_date) OVER W AS latest_date,
    MAX(load_val) OVER W AS latest_load
FROM LoadSample
WINDOW W AS (ORDER BY sample_date ASC ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING);

-- 行ではなく、「1日前」でずらす
SELECT
    sample_date AS cur_date,
    load_val AS cur_load,
    MIN(sample_date) OVER (ORDER BY sample_date ASC RANGE BETWEEN interval '1' day PRECEDING AND interval '1' day PRECEDING) AS day1_before,
    MIN(load_val) OVER (ORDER BY sample_date ASC RANGE BETWEEN interval '1' day PRECEDING AND interval '1' day PRECEDING) AS load_day1_before
FROM LoadSample;