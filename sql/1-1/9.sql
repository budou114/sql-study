-- 条件2：クラブをかけ持ちしている学生を選択
SELECT std_id, club_id AS main_club
FROM StudentClub
WHERE main_club_flg = 'Y';