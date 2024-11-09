-- フレームを後ろに移動させる方法(FOLLOWING)
SELECT
    sample_date AS cur_date,
    load_val AS cur_load,
    MIN(sample_date) OVER W AS next_date,
    MIN(load_val) OVER W AS next_load
FROM LoadSample
WINDOW W AS (ORDER BY sample_date ASC ROWS BETWEEN 1 FOLLOWING AND 1 FOLLOWING);