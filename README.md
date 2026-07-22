# MIS 443 School Database Project

## Project Overview

This project recreates a School database using PostgreSQL and pgAdmin 4.
The database stores information about students, professors, courses, and course enrollments.

The project includes SQL scripts for creating the database, creating tables and relationships, inserting data, and answering 10 SQL questions.

## Tools Used

- PostgreSQL
- pgAdmin 4
- SQL Practice Online
- Microsoft Word
- CSV files
- GitHub

## Database Structure

The database contains four tables:

- `students`
- `professors`
- `courses`
- `enrollments`

The `courses` table is connected to the `professors` table through `professor_id`.

The `enrollments` table connects students and courses through `student_id` and `course_id`.

## Folder Structure

```text
MIS443_StudentID_School/
│
├── codes/
│   ├── 01_create_database.sql
│   ├── 02_create_tables_relationships.sql
│   ├── 03_insert_data.sql
│   └── 04_questions_01_10.sql
│
├── data/
│   ├── students.csv
│   ├── professors.csv
│   ├── courses.csv
│   └── enrollments.csv
│
├── report/
│   └── MIS443_StudentID_School_Report.docx
│
├── Entity_Relationship_Diagram.png
└── README.md
```

## How to Run the Project

1. Open PostgreSQL and pgAdmin 4.
2. Run `codes/01_create_database.sql` while connected to the default PostgreSQL database.
3. Connect to the newly created `school_db` database.
4. Run `codes/02_create_tables_relationships.sql`.
5. Run `codes/03_insert_data.sql`.
6. Run `codes/04_questions_01_10.sql` to test the SQL question solutions.

## Data Files

The `data` folder contains one CSV file for each table:

- `students.csv`
- `professors.csv`
- `courses.csv`
- `enrollments.csv`

Each CSV file includes a header row and the complete data used in the database.

## SQL Questions

The file `04_questions_01_10.sql` contains 10 PostgreSQL-compatible SQL questions and solutions. The queries demonstrate:

- SELECT
- WHERE
- ORDER BY
- COUNT
- AVG
- Date filtering
- LIKE
- INNER JOIN

## Original Practice Link

https://www.sql-practice.online/practice/school?engine=postgresql

## Author

Student Name: Doan Phan Minh Vu
Student ID: 2232300049
