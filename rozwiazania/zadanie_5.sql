/*
Zadanie 5: Grupowanie i agregacja [12 pkt]
Wykonaj poniższe polecenia:
--------------------------------------
a) korzystając z relacji Professors wybierz (stosując odpowiednie aliasy nazw kolumn) minimalne,
maksymalne oraz zaokrąglone do dwóch miejsc po przecinku średnie miesięczne zarobki nauczy-
cieli, a także sumę miesięcznych zarobków oraz całkowitą liczbę zatrudnionych nauczycieli;
*/
SELECT 
    MIN(Payment) AS min_salary,
    MAX(Payment) AS max_salary,
    ROUND(AVG(Payment), 2) AS avg_salary,
    SUM(Payment) AS total_salary,
    COUNT(*) AS total_professors
FROM Professors;
/* RESULTS:
min_salary	max_salary	avg_salary	total_salary	total_professors
5000	7900	6676.67	200300	30
*/

/*
--------------------------------------
b) pogrupuj studentów z relacji Students po roku ich urodzenia oraz wybierz (stosując odpowiednie
aliasy nazw kolumn) liczbę studentów urodzonych w danym roku oraz sam rok urodzenia;
*/
SELECT 
    strftime('%Y', DateOfBirth) AS birth_year,
    COUNT(*) AS number_of_students
FROM Students
GROUP BY birth_year
ORDER BY birth_year;
/* RESULTS:
birth_year	number_of_students
1997	24
1998	37
1999	48
2000	38
2001	37
2002	26
2003	38
2004	31
2005	21
*/

/*
--------------------------------------
c) korzystając z relacji Students i Programs wybierz (stosując odpowiednie aliasy nazw kolumn) sumę
czesnego, jaką studenci zapłacą za poszczególne kierunki studiów przez 3 lata nauki – podaj
ponadto identyfikator kierunku studiów (atrybut ProgramId) i jego nazwę;
*/
SELECT 
    p.ProgramId AS program_id,
    p.ProgramName AS program_name,
    SUM(s.Tuition) * 6 AS three_year_tuition_total,
    COUNT(s.StudentId) AS number_of_students
FROM Students s
JOIN Programs p ON s.ProgramId = p.ProgramId
GROUP BY p.ProgramId, p.ProgramName
ORDER BY p.ProgramId;
/* RESULTS:
program_id	program_name	three_year_tuition_total	number_of_students
1	Computer Science	169200	11
2	Mathematics	210000	15
3	Physics	300000	20
4	English	217200	15
5	History	174600	12
6	Biology	209400	14
7	Chemistry	277200	19
8	Economics	207600	14
9	Psychology	177000	12
10	Sociology	344400	23
11	Business Administration	292800	19
12	Political Science	178200	13
13	Environmental Science	260400	18
14	Art History	206400	14
15	Anthropology	258600	17
16	Music	170400	11
17	Philosophy	193800	14
18	Theater Studies	123000	8
19	Film and Media Studies	225000	16
20	Health Sciences	221400	15
*/

/*
--------------------------------------
d) korzystając z relacji Professors i Departments wybierz (stosując odpowiednie aliasy nazw kolumn)
nazwy wydziałów oraz średnie miesięczne zarobki nauczycieli na tych wydziałach, gdzie średnie
miesięczne wynagrodzenie jest większe niż 3000;
*/
SELECT 
    d.DepartmentName AS department_name,
    CASE 
        WHEN AVG(p.Payment) IS NULL THEN 0 -- to show departments with no professors if such exist
        ELSE ROUND(AVG(p.Payment), 2)
    END AS average_monthly_salary
FROM Departments d
LEFT JOIN Professors p ON d.DepartmentId = p.DepartmentId
GROUP BY d.DepartmentId, d.DepartmentName
HAVING average_monthly_salary > 3000
ORDER BY average_monthly_salary DESC;
/* RESULTS:
department_name	average_monthly_salary
Sociology	7600
Biology	7400
Physics	6850
History	6800
English	6700
Psychology	6660
Computer Science	6600
Mathematics	6600
Economics	6200
Chemistry	6100
*/