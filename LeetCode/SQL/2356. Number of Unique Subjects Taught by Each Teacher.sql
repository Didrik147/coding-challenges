DROP TABLE IF EXISTS Teacher;

CREATE TABLE IF NOT EXISTS Teacher(
    teacher_id INT,
    subject_id INT,
    dept_id INT,
    CONSTRAINT TeacherPK PRIMARY KEY (subject_id, dept_id)
);

INSERT INTO Teacher(teacher_id, subject_id, dept_id)
VALUES (1, 2, 3),
    (1, 2, 4),
    (1, 3, 3),
    (2, 1, 1),
    (2, 2, 1),
    (2, 3, 1),
    (2, 4, 1);

/* Write a solution to calculate the number of unique subjects each teacher teaches in the university. */
SELECT teacher_id, COUNT(DISTINCT subject_id) as cnt
FROM Teacher
GROUP BY teacher_id;