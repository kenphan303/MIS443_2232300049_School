DROP TABLE IF EXISTS enrollments CASCADE;
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS professors CASCADE;
DROP TABLE IF EXISTS students CASCADE;

-- 1. Students Table
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE NOT NULL,
    graduation_year INTEGER,
    major VARCHAR(100)
);

-- 2. Professors Table
CREATE TABLE professors (
    professor_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL
);

-- 3. Courses Table
CREATE TABLE courses (
    course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INTEGER CHECK (credits > 0),
    department VARCHAR(100) NOT NULL,
    professor_id INTEGER REFERENCES professors(professor_id) ON DELETE SET NULL
);

-- 4. Enrollments Table
CREATE TABLE enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER REFERENCES students(student_id) ON DELETE CASCADE,
    course_id VARCHAR(10) REFERENCES courses(course_id) ON DELETE CASCADE,
    semester VARCHAR(20) NOT NULL,
    year INTEGER NOT NULL,
    grade VARCHAR(2)
);
