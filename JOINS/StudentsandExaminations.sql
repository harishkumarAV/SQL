# Write your MySQL query statement below
select s.student_id , s.student_name,u.subject_name ,count(e.subject_name) as attended_exams from Students s
cross join Subjects u 
left join Examinations e on s.student_id = e.student_id and u.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, u.subject_name
ORDER BY s.student_id, u.subject_name;
