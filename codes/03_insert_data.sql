-- Insert Students
INSERT INTO students (student_id, first_name, last_name, email, enrollment_date, graduation_year, major) VALUES
(1001, 'Alex', 'Thompson', 'alex.thompson@university.edu', '2022-09-01', 2026, 'Computer Science'),
(1002, 'Maria', 'Rodriguez', 'maria.rodriguez@university.edu', '2022-09-01', 2026, 'Mathematics'),
(1003, 'James', 'Wilson', 'james.wilson@university.edu', '2021-09-01', 2025, 'Physics'),
(1004, 'Emily', 'Chen', 'emily.chen@university.edu', '2023-09-01', 2027, 'Computer Science'),
(1005, 'Robert', 'Johnson', 'robert.johnson@university.edu', '2022-09-01', 2026, 'Chemistry'),
(1006, 'Sarah', 'Davis', 'sarah.davis@university.edu', '2021-09-01', 2025, 'Biology'),
(1007, 'David', 'Kim', 'david.kim@university.edu', '2024-09-01', 2028, NULL);

-- Insert Professors
INSERT INTO professors (professor_id, first_name, last_name, email, department, hire_date) VALUES
(101, 'Dr. John', 'Smith', 'john.smith@university.edu', 'Computer Science', '2018-08-15'),
(102, 'Dr. Lisa', 'Anderson', 'lisa.anderson@university.edu', 'Mathematics', '2019-09-01'),
(103, 'Dr. Michael', 'Brown', 'michael.brown@university.edu', 'Physics', '2020-01-10'),
(104, 'Dr. Jennifer', 'White', 'jennifer.white@university.edu', 'Chemistry', '2017-08-20');

-- Insert Courses
INSERT INTO courses (course_id, course_name, credits, department, professor_id) VALUES
('CS101', 'Introduction to Programming', 3, 'Computer Science', 101),
('CS201', 'Data Structures', 4, 'Computer Science', 101),
('MATH101', 'Calculus I', 4, 'Mathematics', 102),
('MATH201', 'Linear Algebra', 3, 'Mathematics', 102),
('PHYS101', 'General Physics I', 4, 'Physics', 103),
('CHEM101', 'General Chemistry', 4, 'Chemistry', 104);

-- Insert Enrollments
INSERT INTO enrollments (enrollment_id, student_id, course_id, semester, year, grade) VALUES
(1, 1001, 'CS101', 'Fall', 2022, 'A'),
(2, 1001, 'MATH101', 'Fall', 2022, 'B+'),
(3, 1002, 'MATH101', 'Fall', 2022, 'A'),
(4, 1002, 'MATH201', 'Spring', 2023, 'A-'),
(5, 1003, 'PHYS101', 'Fall', 2021, 'B'),
(6, 1003, 'MATH101', 'Fall', 2021, 'A'),
(7, 1004, 'CS101', 'Fall', 2023, 'A-'),
(8, 1005, 'CHEM101', 'Fall', 2022, 'B+'),
(9, 1006, 'CHEM101', 'Fall', 2021, 'A'),
(10, 1001, 'CS201', 'Spring', 2023, 'A');