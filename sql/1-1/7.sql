-- テーブルのマッチング：EXISTS述語の利用
SELECT CM.course_name,
    CASE
        WHEN EXISTS (SELECT course_id FROM OpenCourses OC WHERE month = 201806 AND OC.course_id = CM.course_id) THEN '○'
        ELSE '×'
    END AS "6 月",
    CASE
        WHEN EXISTS (SELECT course_id FROM OpenCourses OC WHERE month = 201807 AND OC.course_id = CM.course_id) THEN '○'
        ELSE '×'
    END AS "7 月",
    CASE
        WHEN EXISTS (SELECT course_id FROM OpenCourses OC WHERE month = 201808 AND OC.course_id = CM.course_id) THEN '○'
        ELSE '×'
    END AS "8 月"
FROM CourseMaster CM;