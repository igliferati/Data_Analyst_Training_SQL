/* Put your data in here and query it! */

CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 80, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 60, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 82, 0.9045);
    INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 82, 0.9045);
    INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 78, 0.890);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 91, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 65, 0.7514);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 82, 0.9045);


select * from student_grades;

SELECT * FROM student_grades WHERE name = "Winnefer" OR name = "Winster" OR name = "Winsteen" OR name = "Wincifer";

SELECT name FROM student_grades GROUP BY fraction_completed HAVING COUNT(*) < 0.7;


    
    SELECT name, number_grade,
    CASE 
        WHEN number_grade > 90 THEN "above max"
        WHEN number_grade > 80 THEN "above target"
        WHEN number_grade > 70 THEN "within target"
        ELSE "below target"
    END as "target_zone"
FROM student_grades;

SELECT COUNT(*) FROM student_grades WHERE
    number_grade >= ROUND(0.50 * (220-50));
    
    select name, number_grade, Round(number_grade*100) as percent_completed from student_grades;
    
    select * from student_grades; 
    
    SELECT name, SUM(number_grade) AS total_points  FROM student_grades GROUP BY name;
    
    SELECT name, SUM(number_grade) AS total_grade FROM student_grades
    GROUP BY name
    HAVING total_grade > 100 ;

   SELECT name, min(number_grade) AS total_grade FROM student_grades
    GROUP BY name
    HAVING total_grade >500 ;   
    


/* OR */
SELECT * FROM student_grades WHERE number_grade >= 90 OR fraction_completed > 0.9
group by name;

    /* AND */
SELECT * FROM student_grades WHERE number_grade  > 70 AND fraction_completed < 0.8
group by name;

   select max(number_grade) from student_grades; 
