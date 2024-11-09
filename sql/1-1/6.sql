-- テーブルのマッチング：IN述語の利用
SELECT course_name,
    CASE
        WHEN course_id IN
            (SELECT course_id FROM OpenCourses WHERE month = 201806) THEN '○'
        ELSE '×'
    END AS "6 月",
    CASE
        WHEN course_id IN
            (SELECT course_id FROM OpenCourses WHERE month = 201807) THEN '○'
        ELSE '×'
    END AS "7 月",
    CASE
        WHEN course_id IN
            (SELECT course_id FROM OpenCourses WHERE month = 201808) THEN '○'
        ELSE '×'
    END AS "8 月"
FROM CourseMaster;
