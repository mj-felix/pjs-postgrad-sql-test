
/*
Zadanie 6: Podzapytania [12 pkt]
Wykonaj poniższe polecenia:
--------------------------------------
a) z relacji Students wybierz imiona i nazwiska oraz daty urodzenia studentów młodszych niż średnia
wieku studentów, studiujących na Wydziale Informatyki (DepartmentId = 1);
*/
SELECT 
    s.FirstName,
    s.LastName,
    s.DateOfBirth
FROM Students s
WHERE julianday(s.DateOfBirth) > (
    SELECT AVG(julianday(s2.DateOfBirth))
    FROM Students s2
    JOIN Programs p ON s2.ProgramId = p.ProgramId
    WHERE p.DepartmentId = 1
)
ORDER BY s.DateOfBirth DESC;
/* RESULTS:
FirstName	LastName	DateOfBirth
Robert	Briggs	2005-06-18
Tara	Rodgers	2005-06-17
Robert	Kim	2005-05-25
Julia	Gray	2005-05-20
Edward	Frye	2005-05-19
Bryan	Phelps	2005-05-15
Debra	Wood	2005-05-08
Melissa	Williams	2005-04-25
Tyrone	Ryan	2005-04-23
Willie	Duran	2005-04-16
Catherine	Jones	2005-04-12
Brian	Fields	2005-03-30
Timothy	Austin	2005-03-29
Michael	Mccarty	2005-03-28
Jesse	Schmidt	2005-03-22
Kenneth	Robinson	2005-03-05
Kyle	Tucker	2005-02-11
James	Lowery	2005-02-07
Theresa	Rodgers	2005-02-06
Jeffrey	Ochoa	2005-01-12
Nicholas	Gonzalez	2005-01-01
Lori	Espinoza	2004-12-31
Ruth	Garcia	2004-12-24
John	Meadows	2004-11-26
Amy	Griffin	2004-11-21
Diana	Frazier	2004-11-11
Frank	Hall	2004-10-27
Thomas	Meadows	2004-10-27
Kayla	Moody	2004-09-30
Abigail	Howard	2004-09-08
Nicholas	Davis	2004-09-03
Kimberly	Wilson	2004-08-30
Jennifer	Huffman	2004-08-29
Katelyn	Woods	2004-08-23
Preston	Floyd	2004-08-22
Kimberly	Solomon	2004-08-12
Benjamin	Jones	2004-07-14
Anthony	Larson	2004-07-10
Duane	Gonzalez	2004-05-21
Elizabeth	Jennings	2004-05-17
Gary	Castro	2004-04-27
Alison	Hughes	2004-04-18
Ronald	Peters	2004-04-16
Joshua	Contreras	2004-04-16
Samuel	Donaldson	2004-04-02
Kimberly	Blake	2004-03-24
Robyn	Bullock	2004-03-24
Patrick	Houston	2004-03-16
Rachel	Anderson	2004-02-28
Tracy	Johns	2004-02-23
Kimberly	Hale	2004-02-18
Charles	Anderson	2004-01-03
Dennis	Gonzales	2003-12-06
Tracy	Powell	2003-11-29
Allison	Garrison	2003-11-10
Courtney	Robinson	2003-11-10
Andrea	Powers	2003-11-07
Ralph	Lowery	2003-11-04
Erica	Norton	2003-10-23
Joseph	Lynn	2003-10-14
Mary	Rose	2003-10-13
Dennis	Cantrell	2003-10-08
Janet	Miranda	2003-09-24
Erin	Thomas	2003-09-20
Jonathan	Hill	2003-09-16
Erin	Bowen	2003-09-14
Jodi	Reynolds	2003-09-07
Daniel	Mason	2003-08-19
William	Castillo	2003-08-09
Kimberly	Rodriguez	2003-07-21
Arthur	Webster	2003-07-16
Nancy	Kim	2003-06-08
Richard	Parsons	2003-06-02
Alexis	Mcdaniel	2003-06-01
Catherine	Morales	2003-05-23
Robert	Davidson	2003-05-21
John	Farmer	2003-04-21
Thomas	Ballard	2003-04-20
Gregory	Allen	2003-04-19
Kimberly	Smith	2003-04-15
Susan	Long	2003-03-29
Claire	Wong	2003-03-26
Stephanie	Walsh	2003-03-20
Wesley	Romero	2003-03-13
Susan	Potter	2003-03-11
Todd	Lee	2003-02-24
Deborah	Cain	2003-02-18
Kimberly	Marquez	2003-02-13
Mary	Parker	2003-01-28
Adam	Bray	2003-01-21
Elizabeth	Torres	2002-12-31
Lauren	Chandler	2002-12-17
James	Marks	2002-12-01
Tammy	Morgan	2002-11-28
David	Sullivan	2002-11-25
Gabrielle	Decker	2002-11-08
Darren	Wolfe	2002-10-09
Eric	Perez	2002-10-05
Andrea	Johnson	2002-09-18
Karen	Brown	2002-09-01
Gabrielle	Brennan	2002-07-25
Mark	Maldonado	2002-07-14
Natalie	Gonzalez	2002-07-10
Felicia	Johnson	2002-06-30
Nicole	Mckay	2002-05-30
Darren	Lewis	2002-05-08
John	Smith	2002-04-06
Kaitlyn	Cunningham	2002-03-17
Brandi	Leonard	2002-03-13
Phillip	Anderson	2002-02-14
Michael	Young	2002-02-05
Anne	Ruiz	2002-01-24
Ashley	Floyd	2002-01-21
Jacqueline	Day	2002-01-17
Lance	Morales	2002-01-01
Eric	Oneill	2002-01-01
Thomas	Blair	2001-12-31
Philip	Williams	2001-12-22
Trevor	Watson	2001-12-14
John	Moore	2001-12-11
Christine	Ayala	2001-12-08
Adam	Holloway	2001-12-02
Victor	Burton	2001-11-27
Alicia	White	2001-11-05
Douglas	Smith	2001-10-31
Christopher	Jones	2001-10-27
Kendra	May	2001-09-26
Whitney	Diaz	2001-09-24
Wendy	Rios	2001-09-16
Amy	Gardner	2001-09-07
Robert	Henry	2001-07-27
Lauren	Cole	2001-07-16
James	Lozano	2001-07-04
Margaret	Simmons	2001-05-22
Deborah	Jacobs	2001-05-14
Erin	Orozco	2001-05-10
Victoria	Rodgers	2001-05-09
Leslie	Watson	2001-04-26
Kathleen	Perkins	2001-04-12
Brandon	Ford	2001-04-11
Jennifer	Reynolds	2001-04-09
Lauren	Cooke	2001-03-30
William	Roberts	2001-03-24
Megan	Williams	2001-03-21
Stefanie	Lawson	2001-03-21
Jimmy	Smith	2001-03-16
Christopher	Valdez	2001-03-11
Abigail	Romero	2001-02-25
Gregg	Harris	2001-02-23
Cameron	Fuller	2001-02-21
Laura	Hunt	2001-02-11
Corey	Bennett	2001-02-04
Kimberly	Cowan	2001-01-21
Perry	Hanson	2000-12-24
Juan	Barnes	2000-12-23
Luis	Davenport	2000-11-29
Amy	Henson	2000-11-25
Devon	Douglas	2000-11-24
Margaret	Reeves	2000-11-14
Richard	Tran	2000-11-07
Stephanie	Lopez	2000-10-22
Jennifer	Smith	2000-10-16
Vicki	Mitchell	2000-10-04
Denise	Peterson	2000-10-01
Judy	Cunningham	2000-09-27
Amanda	Oneal	2000-09-07
Kendra	Molina	2000-09-06
James	Torres	2000-08-25
Kayla	Smith	2000-08-21
Kyle	Jones	2000-07-20
Kristin	Gray	2000-07-17
Angela	Smith	2000-06-18
*/

/*
--------------------------------------
b) z relacji Professors i Departments wybierz imiona oraz nazwiska nauczycieli, których miesięczne
wynagrodzenie jest mniejsze niż średnie miesięczne wynagrodzenie na wydziale, na którym pra-
cują, podając ich wynagrodzenie i nazwę wydziału oraz sortując wynik alfabetycznie po nazwisku
i imieniu;
*/
WITH dept_avg_salary AS (
    SELECT 
        d.DepartmentId,
        AVG(p.Payment) AS avg_dept_salary
    FROM Departments d
    JOIN Professors p ON d.DepartmentId = p.DepartmentId
    GROUP BY d.DepartmentId
)
SELECT 
    p.FirstName,    
    p.LastName,
    p.Payment AS Salary,
    d.DepartmentName
FROM Professors p
JOIN Departments d ON p.DepartmentId = d.DepartmentId
JOIN dept_avg_salary das ON d.DepartmentId = das.DepartmentId
WHERE p.Payment < das.avg_dept_salary
ORDER BY p.LastName, p.FirstName;
/* RESULTS:
FirstName	LastName	Salary	DepartmentName
Cheryl	Barr	5600	Physics
Jacqueline	Cervantes	6000	English
Steven	Harris	5000	Psychology
Austin	Jackson	6000	History
Kirk	King	6500	Psychology
Jay	Leblanc	5500	Computer Science
Walter	Lee	5400	Mathematics
Amanda	Mcconnell	7200	Biology
Jeremy	Olson	6700	Physics
Paul	Patel	5100	Chemistry
Frederick	Richardson	6100	Psychology
Amanda	Rose	5500	Mathematics
Louis	Schroeder	5500	Chemistry
*/

/*
--------------------------------------
c) korzystając z relacji Departments, Professors, Students i Programs, dla każdego z wydziałów podaj:
liczbę studentów, realizujących programy na danym wydziale, sumę wpłat ich czesnego, liczbę
nauczycieli, zatrudnionych na danym wydziale, sumę ich pensji, przychód wydziału jako różnicę
wpłat i pensji (ogranicz się do wydziałów z dodatnim przychodem, na których pracuje więcej niż
jeden nauczyciel).
*/
WITH professor_stats AS (
    SELECT 
        d.DepartmentId,
        d.DepartmentName,
        COUNT(DISTINCT p.ProfessorId) AS professor_count,
        SUM(p.Payment) AS total_salaries
    FROM Departments d
    LEFT JOIN Professors p ON d.DepartmentId = p.DepartmentId
    GROUP BY d.DepartmentId, d.DepartmentName
),
student_stats AS (
    SELECT 
        d.DepartmentId,
        d.DepartmentName,
        COUNT(DISTINCT s.StudentId) AS student_count,
        SUM(s.Tuition) AS total_tuition
    FROM Departments d
    LEFT JOIN Programs prog ON d.DepartmentId = prog.DepartmentId
    LEFT JOIN Students s ON prog.ProgramId = s.ProgramId
    GROUP BY d.DepartmentId, d.DepartmentName
)
SELECT 
    DepartmentId AS department_id,
    DepartmentName AS department_name,
    student_count AS total_students,
    total_tuition AS tuition_revenue,
    professor_count AS total_professors,
    total_salaries AS salary_expenses,
    total_tuition - total_salaries AS net_income
FROM professor_stats natural join student_stats
WHERE 
    professor_count > 1 
    AND net_income > 0
ORDER BY net_income DESC;
/* RESULTS:
department_id	department_name	total_students	tuition_revenue	total_professors	salary_expenses	net_income
4	English	50	122600	2	13400	109200
6	Biology	47	115200	2	14800	100400
5	History	39	93200	3	20400	72800
7	Chemistry	33	78500	4	24400	54100
3	Physics	20	50000	4	27400	22600
1	Computer Science	11	28200	2	13200	15000
*/