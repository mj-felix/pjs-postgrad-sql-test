/*
Zadanie 4: Złączenia relacji [14 pkt]
Wykonaj poniższe polecenia:
--------------------------------------
a) korzystając z relacji Professors i Departments wybierz imiona i nazwiska nauczycieli oraz nazwy
wydziałów, na których pracują;
*/
SELECT 
    p.FirstName,
    p.LastName,
    d.DepartmentName
FROM Professors p
LEFT JOIN Departments d ON p.DepartmentId = d.DepartmentId;
/* RESULTS:
FirstName	LastName	DepartmentName
William	Alvarez	Physics
Randy	Woodward	Mathematics
Kirk	King	Psychology
Amanda	Mcconnell	Biology
Susan	Lowe	Economics
Lisa	Carey	Psychology
Walter	Lee	Mathematics
Jennifer	Davis	Computer Science
Frederick	Richardson	Psychology
Jay	Leblanc	Computer Science
Jeremy	Olson	Physics
Daniel	Jones	Mathematics
Jacqueline	Cervantes	English
Amanda	Rose	Mathematics
Lisa	Williams	Biology
Louis	Schroeder	Chemistry
Edwin	Smith	History
Brandon	Davila	Chemistry
Cynthia	Carter	English
Cynthia	Suarez	History
Cheryl	Barr	Physics
Daniel	Ward	Mathematics
Paula	Burgess	Physics
Stephen	Clay	Mathematics
Kara	Kim	Sociology
Austin	Jackson	History
Charles	Saunders	Psychology
Scott	Davis	Chemistry
Steven	Harris	Psychology
Paul	Patel	Chemistry
*/

/*
--------------------------------------
b) korzystając z relacji Students, Enrollments i Courses wybierz imiona i nazwiska studentów, zapisa-
nych na kursy oferowane przez wydziały biologii (DepartmentId = 6) lub chemii (DepartmentId = 7),
wraz z nazwami tych kursów, datami zapisów i uzyskanymi ocenami;
*/
SELECT 
    s.FirstName,
    s.LastName,
    c.CourseName,
    e.EnrollmentDate,
    e.Grade
FROM Students s
JOIN Enrollments e ON s.StudentId = e.StudentId
JOIN Courses c ON e.CourseId = c.CourseId
WHERE c.DepartmentId IN (6, 7);
/* RESULTS:
FirstName	LastName	CourseName	EnrollmentDate	Grade
Angela	Gonzales	Inorganic Chemistry	2022-09-04	89
Christopher	Spencer	Cell Biology	2023-04-19	87
Vicki	Mitchell	Cell Biology	2023-01-16	83
Kenneth	Wells	Inorganic Chemistry	2023-03-13	77
Amy	Henson	Cell Biology	2022-07-19	16
Angela	Smith	Genetics	2023-05-16	69
Abigail	Romero	Cell Biology	2023-02-19	67
Laurie	Rogers	Inorganic Chemistry	2023-06-12	31
Jodi	Reynolds	Organic Chemistry	2023-06-04	35
Bridget	Hunter	Cell Biology	2022-09-11	6
Tina	Swanson	Organic Chemistry	2022-09-11	67
Kimberly	Cowan	Inorganic Chemistry	2022-06-30	94
Felicia	Johnson	Organic Chemistry	2022-12-29	95
Adam	Holloway	Cell Biology	2023-04-24	65
Robert	Henry	Inorganic Chemistry	2023-06-07	94
Robert	Henry	Inorganic Chemistry	2022-11-09	80
Samuel	Donaldson	Genetics	2023-03-08	36
Michael	Woods	Organic Chemistry	2022-09-03	57
Mary	Rose	Cell Biology	2022-08-31	28
Mary	Rose	Genetics	2023-06-09	46
Tracy	Johns	Genetics	2022-11-30	73
Carrie	Sanchez	Genetics	2022-07-02	67
Christopher	Valdez	Inorganic Chemistry	2023-04-24	56
Jonathan	Hill	Genetics	2023-03-13	6
Richard	Trujillo	Inorganic Chemistry	2022-11-08	77
Toni	Harris	Organic Chemistry	2023-01-27	85
Jennifer	Reynolds	Organic Chemistry	2022-08-25	57
Robert	Briggs	Inorganic Chemistry	2022-11-17	7
Eric	Perez	Inorganic Chemistry	2023-02-09	28
Eric	Perez	Inorganic Chemistry	2022-09-21	66
Joanna	Paul	Inorganic Chemistry	2022-06-29	4
Corey	Bennett	Inorganic Chemistry	2022-11-29	67
Erica	Mccall	Genetics	2022-06-25	26
James	Lozano	Organic Chemistry	2023-02-07	47
Phillip	Anderson	Organic Chemistry	2022-10-05	16
Michael	Jones	Organic Chemistry	2023-04-22	79
Gregory	Pierce	Cell Biology	2022-08-18	80
Margaret	Reeves	Organic Chemistry	2022-07-25	100
Gavin	Fisher	Cell Biology	2022-12-04	90
Karen	Brown	Organic Chemistry	2023-03-28	52
Perry	Hanson	Genetics	2022-10-21	20
Stephen	Harrington	Genetics	2023-03-26	14
Patrick	Jensen	Cell Biology	2023-03-26	19
Kendra	May	Genetics	2023-03-18	37
Timothy	Wong	Organic Chemistry	2022-07-24	98
Susan	Potter	Genetics	2023-05-02	97
Vincent	Graham	Genetics	2023-03-24	81
Mark	Maldonado	Organic Chemistry	2022-12-10	25
Andrea	Johnson	Organic Chemistry	2023-03-22	86
Ronald	Alexander	Organic Chemistry	2022-11-27	
Lisa	Contreras	Cell Biology	2022-12-27	87
Luis	Davenport	Cell Biology	2023-05-12	35
Morgan	Gomez	Cell Biology	2023-05-28	49
Adam	Carlson	Organic Chemistry	2023-04-13	58
Kurt	Whitney	Organic Chemistry	2022-12-31	88
Rebecca	Matthews	Inorganic Chemistry	2023-02-27	96
Ashley	Floyd	Genetics	2022-12-26	15
*/

/*
--------------------------------------
c) korzystając z relacji Students, Departments i Programs wybierz imiona i nazwiska studentów,
urodzonych po roku 2000, studiujących na kierunkach oferowanych przez wydział historii, wraz
z wysokością ich czesnego i nazwą studiowanego kierunku;
*/
SELECT 
    s.FirstName,
    s.LastName,
    s.Tuition,
    p.ProgramName
FROM Students s
JOIN Programs p ON s.ProgramId = p.ProgramId
JOIN Departments d ON p.DepartmentId = d.DepartmentId
WHERE d.DepartmentId = 5 
AND s.DateOfBirth > '2000-12-31';
/* RESULTS:
FirstName	LastName	Tuition	ProgramName
Michael	Young	2700	History
John	Farmer	2800	Art History
Leslie	Watson	2200	Art History
Dennis	Cantrell	2100	Political Science
Gregg	Harris	2600	Art History
Robert	Davidson	2700	History
Theresa	Rodgers	2500	History
Jennifer	Huffman	2700	History
Kaitlyn	Cunningham	2900	History
David	Sullivan	2400	Political Science
Kimberly	Cowan	2300	History
Benjamin	Jones	2200	Art History
Gabrielle	Decker	2000	Political Science
Kenneth	Robinson	2200	Political Science
Deborah	Cain	2200	Art History
Dennis	Gonzales	2600	Art History
Lori	Espinoza	2100	Political Science
*/

/*
--------------------------------------
d) dla każdego wydziału (relacja Departments) wybierz jego nazwę oraz nazwiska i imiona wszystkich
studentów (relacja Students), studiujących na kierunkach (relacja Programs), oferowanych przez
ten wydział – wynik ogranicz do 80 krotek i posortuj po nazwie wydziału oraz nazwisku i imieniu
studenta;
*/
SELECT 
    d.DepartmentName,
    s.LastName,
    s.FirstName
FROM Departments d
JOIN Programs p ON d.DepartmentId = p.DepartmentId
JOIN Students s ON p.ProgramId = s.ProgramId
ORDER BY 
    d.DepartmentName ASC,
    s.LastName ASC,
    s.FirstName ASC
LIMIT 80;
/* RESULTS:
DepartmentName	LastName	FirstName
Biology	Anderson	Lori
Biology	Blake	Kimberly
Biology	Bowen	Albert
Biology	Bullock	Robyn
Biology	Cooke	Lauren
Biology	Diaz	Whitney
Biology	Duran	Willie
Biology	Floyd	Preston
Biology	Frazier	Diana
Biology	Glover	Brooke
Biology	Gonzalez	Natalie
Biology	Gordon	Jared
Biology	Graham	Hayley
Biology	Griffin	Tammie
Biology	Harris	Toni
Biology	Johnson	Lauren
Biology	Jones	Christopher
Biology	Keller	Todd
Biology	Larson	Anthony
Biology	Lewis	Darren
Biology	Lowery	Ralph
Biology	Lozano	James
Biology	Lynn	Joseph
Biology	Marquez	Kimberly
Biology	Matthews	Rebecca
Biology	Meadows	Thomas
Biology	Miranda	Janet
Biology	Orozco	Erin
Biology	Perkins	Kathleen
Biology	Peters	Ronald
Biology	Phelps	Bryan
Biology	Powell	Tracy
Biology	Reeves	Margaret
Biology	Roth	Eric
Biology	Sanchez	Carrie
Biology	Simmons	Margaret
Biology	Summers	Ryan
Biology	Thomas	Erin
Biology	Walton	Andrea
Biology	Watson	Trevor
Biology	Wells	Kenneth
Biology	White	Alicia
Biology	Williams	Philip
Biology	Wilson	Daniel
Biology	Wong	Timothy
Biology	Wood	Debra
Biology	Wood	Isaac
Chemistry	Adams	Matthew
Chemistry	Anderson	Rachel
Chemistry	Bennett	Corey
Chemistry	Brennan	Gabrielle
Chemistry	Cabrera	Deanna
Chemistry	Castillo	William
Chemistry	Cunningham	Judy
Chemistry	Davis	Brent
Chemistry	Ford	Brandon
Chemistry	Gomez	Morgan
Chemistry	Gonzalez	Gregory
Chemistry	Jennings	Elizabeth
Chemistry	Jensen	Patrick
Chemistry	Jimenez	Natalie
Chemistry	Johnson	Felicia
Chemistry	Lambert	George
Chemistry	Long	Susan
Chemistry	Mccarty	Michael
Chemistry	Ochoa	Jeffrey
Chemistry	Parker	Mary
Chemistry	Paul	Rebecca
Chemistry	Preston	Danielle
Chemistry	Reynolds	Jennifer
Chemistry	Reynolds	Jodi
Chemistry	Rodgers	Tara
Chemistry	Rogers	Laurie
Chemistry	Rose	Mary
Chemistry	Russell	Shawn
Chemistry	Smith	Jimmy
Chemistry	Spencer	Christopher
Chemistry	Torres	Elizabeth
Chemistry	Williams	Melissa
Chemistry	Willis	Ronald
*/

/*
--------------------------------------
e) korzystając z relacji Professors, Departments i Classrooms wybierz imiona i nazwiska wszystkich
nauczycieli oraz numerów sal, w których można ich znaleźć – przyjmij, że prowadzą oni zajęcia
w salach, którymi dysponuje ich wydział – gdy takich sal nie ma, jako numer sali zwróć napis
Unknown.
*/
SELECT 
    p.FirstName,
    p.LastName,
    COALESCE(c.ClassroomId, 'Unknown') AS room_number
FROM Professors p
LEFT JOIN Departments d ON p.DepartmentId = d.DepartmentId
LEFT JOIN Classrooms c ON d.DepartmentId = c.DepartmentId;
/* RESULTS:
FirstName	LastName	room_number
William	Alvarez	4
Randy	Woodward	2
Kirk	King	Unknown
Amanda	Mcconnell	Unknown
Susan	Lowe	Unknown
Lisa	Carey	Unknown
Walter	Lee	2
Jennifer	Davis	1
Jennifer	Davis	3
Frederick	Richardson	Unknown
Jay	Leblanc	1
Jay	Leblanc	3
Jeremy	Olson	4
Daniel	Jones	2
Jacqueline	Cervantes	5
Amanda	Rose	2
Lisa	Williams	Unknown
Louis	Schroeder	Unknown
Edwin	Smith	Unknown
Brandon	Davila	Unknown
Cynthia	Carter	5
Cynthia	Suarez	Unknown
Cheryl	Barr	4
Daniel	Ward	2
Paula	Burgess	4
Stephen	Clay	2
Kara	Kim	Unknown
Austin	Jackson	Unknown
Charles	Saunders	Unknown
Scott	Davis	Unknown
Steven	Harris	Unknown
Paul	Patel	Unknown
*/