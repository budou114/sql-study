-- 書籍では一括更新できるとなっているが、Mysqlでは動作しない模様
-- CASE式で主キーを入れ替える
UPDATE SomeTable
    SET p_key =
        CASE
            WHEN p_key = 'a' THEN 'b'
            WHEN p_key = 'b' THEN 'a'
            ELSE p_key
        END
WHERE p_key IN ('a', 'b');