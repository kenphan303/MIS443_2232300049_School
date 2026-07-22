/*
Doan Phan Minh Vu
2232300049
*/
-- Q1: Return the complete student roster from the students table.
SELECT * FROM students;

-- Q2: Return students who are majoring in Computer Science.
SELECT 
    first_name, 
    last_name, 
    graduation_year
FROM 
    students
WHERE 
    major = 'Computer Science';
	
-- Q3: Return all courses ordered by credit hours from highest to lowest.
SELECT course_name, credits
FROM courses
ORDER BY credits DESC;

-- Q4: Return students who are expected to graduate in 2026.
SELECT first_name, last_name, major
FROM students
WHERE graduation_year = 2026;

-- Q5: Count the total number of courses available.
SELECT COUNT(*) AS total_courses
FROM courses;

-- Q6: Calculate the average number of credits per course.
SELECT AVG(credits) AS average_credits
FROM courses;

-- Q7: Return students who enrolled after December 31, 2022.
SELECT 
    first_name, 
    last_name, 
    enrollment_date
FROM 
    students
WHERE 
    enrollment_date > '2022-12-31';

-- Q8: Return professors who work in the Computer Science department.
SELECT first_name, last_name, hire_date
FROM professors
WHERE department = 'Computer Science';

-- Q9: Return students whose email addresses contain the university.edu domain.
SELECT 
    first_name, 
    last_name, 
    email, 
    major 
FROM 
    students 
WHERE 
    email LIKE '%university.edu%'
ORDER BY 
    last_name;

-- Q10: A department administrator wants to see which professors are teaching which courses. Show each professor's name, department, and the courses they are responsible for. Order by professor last name, then course name.
SELECT 
    p.first_name,
    p.last_name,
    p.department,
    c.course_name,
    c.credits
FROM 
    professors p
JOIN 
    courses c ON p.professor_id = c.professor_id
ORDER BY 
    p.last_name ASC,
    c.course_name ASC;


