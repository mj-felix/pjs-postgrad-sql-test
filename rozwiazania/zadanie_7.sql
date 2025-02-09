/*
Zadanie 7: Perspektywy, operatory teoriomnogościowe [14 pkt]
Wykonaj poniższe polecenia:
--------------------------------------
a) korzystając z relacji Professors i Departments utwórz perspektywę o nazwie MathProfessors, zwra-
cającą imiona oraz nazwiska nauczycieli z Wydziału Matematyki – sprawdź jej działanie, wybierając
z niej wszystkie atrybuty i krotki;
*/
CREATE VIEW MathProfessors AS
SELECT 
    p.FirstName,
    p.LastName
FROM Professors p
JOIN Departments d ON p.DepartmentId = d.DepartmentId
WHERE d.DepartmentName = 'Mathematics';

SELECT * FROM MathProfessors;
/* RESULTS:
+-----------+----------+
| FirstName | LastName |
+-----------+----------+
| Randy     | Woodward |
| Walter    | Lee      |
| Daniel    | Jones    |
| Amanda    | Rose     |
| Daniel    | Ward     |
| Stephen   | Clay     |
+-----------+----------+
*/

/*
--------------------------------------
b) korzystając z relacji Students, Enrollments i Courses utwórz perspektywę o nazwie GenZ, zwracającą
imiona, nazwiska oraz przedmioty, na jakie są zapisani studenci, urodzeni w latach 1997–2012 –
sprawdź jej działanie, wybierając z niej wszystkie atrybuty i krotki;
*/
CREATE VIEW GenZ AS
SELECT 
    s.FirstName,
    s.LastName,
    c.CourseName
FROM Students s
JOIN Enrollments e ON s.StudentId = e.StudentId
JOIN Courses c ON e.CourseId = c.CourseId
WHERE strftime('%Y', s.DateOfBirth) BETWEEN '1997' AND '2012';

SELECT * FROM GenZ;
/* RESULTS:
+-------------+------------+--------------------------------+
| FirstName   | LastName   | CourseName                     |
+-------------+------------+--------------------------------+
| Brooke      | Glover     | American Literature            |
| Michael     | Young      | Algorithms                     |
| Michael     | Young      | Introduction to Programming    |
| Michael     | Young      | Linear Algebra                 |
| Megan       | Williams   | American Poetry                |
| Megan       | Williams   | European History               |
| Megan       | Williams   | Medieval History               |
| Danielle    | Cole       | Quantum Field Theory           |
| Gary        | Castro     | Social Psychology              |
| Gary        | Castro     | Statistics                     |
| Gary        | Castro     | Statistics                     |
| Philip      | Williams   | Sociological Theory            |
| Karen       | Jones      | Psychological Research Methods |
| Karen       | Jones      | Psychological Research Methods |
| Karen       | Jones      | Quantum Field Theory           |
| Anna        | Hampton    | European History               |
| Anna        | Hampton    | Statistics                     |
| Nicole      | Mckay      | Number Theory                  |
| Nicole      | Mckay      | Database Management            |
| Nicole      | Mckay      | Data Structures                |
| Thomas      | Ballard    | Microeconomics                 |
| Thomas      | Ballard    | Calculus I                     |
| Jeremy      | Mcknight   | Linear Algebra                 |
| Jeremy      | Mcknight   | Database Management            |
| Jeremy      | Mcknight   | Shakespearean Literature       |
| Elizabeth   | Wilson     | Modern Physics                 |
| Elizabeth   | Wilson     | Microeconomics                 |
| Joseph      | Barker     | Introduction to Programming    |
| Joseph      | Barker     | Data Structures                |
| Nicholas    | Brown      | Psychological Research Methods |
| Angela      | Gonzales   | Linear Algebra                 |
| Angela      | Gonzales   | Inorganic Chemistry            |
| Angela      | Gonzales   | Microeconomics                 |
| Amy         | Griffin    | Introduction to Programming    |
| Amy         | Griffin    | Electromagnetism               |
| Amy         | Griffin    | Social Psychology              |
| Lauren      | Gomez      | Software Engineering           |
| Adam        | Bray       | English Literature             |
| Kimberly    | Blake      | World History                  |
| William     | Flores     | American Literature            |
| William     | Flores     | Data Structures                |
| Kayla       | Smith      | Linear Algebra                 |
| Kayla       | Smith      | Database Management            |
| Kayla       | Smith      | Data Structures                |
| Roberto     | Herman     | Computer Networks              |
| Roberto     | Herman     | World History                  |
| Roberto     | Herman     | English Literature             |
| John        | Farmer     | Cognitive Psychology           |
| John        | Farmer     | Shakespearean Literature       |
| John        | Farmer     | Quantum Field Theory           |
| Kyle        | Tucker     | Algorithms                     |
| Kyle        | Tucker     | Quantum Mechanics              |
| Shelby      | Russo      | Algorithms                     |
| Wendy       | Rios       | Microeconomics                 |
| Wendy       | Rios       | Software Engineering           |
| Wendy       | Rios       | Shakespearean Literature       |
| Melissa     | Williams   | Ancient Civilization           |
| Melissa     | Williams   | American Literature            |
| Christopher | Spencer    | Cell Biology                   |
| Timothy     | Austin     | Psychological Research Methods |
| Timothy     | Austin     | English Literature             |
| Scott       | Hughes     | Ancient History                |
| Scott       | Hughes     | Number Theory                  |
| Catherine   | Morales    | Software Engineering           |
| Vicki       | Mitchell   | Linear Algebra                 |
| Vicki       | Mitchell   | Cell Biology                   |
| Erin        | Orozco     | Ancient History                |
| Erin        | Orozco     | Macroeconomics                 |
| Margaret    | Thomas     | Data Structures                |
| Margaret    | Thomas     | American Poetry                |
| Margaret    | Thomas     | Software Engineering           |
| Kevin       | Mitchell   | Cognitive Psychology           |
| Kevin       | Mitchell   | Electromagnetism               |
| Kevin       | Mitchell   | Quantum Mechanics              |
| Catherine   | Jones      | Modern Physics                 |
| Ronald      | Peters     | Software Engineering           |
| Denise      | Peterson   | Cognitive Psychology           |
| Denise      | Peterson   | American Literature            |
| Leslie      | Watson     | Microeconomics                 |
| Leslie      | Watson     | World History                  |
| Bradley     | Smith      | Modern Physics                 |
| Bradley     | Smith      | Macroeconomics                 |
| Frank       | Hall       | Database Management            |
| Frank       | Hall       | English Composition            |
| Frank       | Hall       | Sociological Theory            |
| Kenneth     | Wells      | Inorganic Chemistry            |
| Kenneth     | Wells      | Introduction to Programming    |
| Dennis      | Cantrell   | Modern Physics                 |
| Kelly       | Lawson     | Psychological Research Methods |
| Kelly       | Lawson     | Quantum Mechanics              |
| Kelly       | Lawson     | Shakespearean Literature       |
| Melissa     | Clark      | Modern Physics                 |
| Melissa     | Clark      | Introduction to Programming    |
| Melissa     | Clark      | American Poetry                |
| Daniel      | Wilson     | Ancient Civilization           |
| Gregg       | Harris     | Quantum Field Theory           |
| Gregg       | Harris     | Calculus I                     |
| Gregg       | Harris     | American Poetry                |
| Trevor      | Barton     | Number Theory                  |
| Trevor      | Barton     | English Literature             |
| Matthew     | Adams      | Mathematical Logic             |
| Matthew     | Adams      | Macroeconomics                 |
| Kristin     | Gray       | Number Theory                  |
| Kristin     | Gray       | Microeconomics                 |
| Brandon     | Cunningham | Cognitive Psychology           |
| Amy         | Henson     | Cell Biology                   |
| Amy         | Henson     | Social Psychology              |
| Michael     | Garcia     | English Composition            |
| Michael     | Garcia     | Medieval History               |
| Michael     | Garcia     | Cognitive Psychology           |
| Stephanie   | Robertson  | European History               |
| Stephanie   | Robertson  | Electromagnetism               |
| Aaron       | Valentine  | Social Psychology              |
| Aaron       | Valentine  | Introduction to Programming    |
| Aaron       | Valentine  | Sociological Theory            |
| Robyn       | Bullock    | Calculus I                     |
| Robyn       | Bullock    | Thermodynamics                 |
| Robyn       | Bullock    | Database Management            |
| Christopher | Jones      | Cognitive Psychology           |
| Gregory     | Allen      | Social Psychology              |
| Gregory     | Allen      | Computer Networks              |
| Gregory     | Allen      | Medieval History               |
| Amy         | Gardner    | Introduction to Programming    |
| Amy         | Gardner    | American Poetry                |
| Angela      | Smith      | Genetics                       |
| Abigail     | Romero     | Algorithms                     |
| Abigail     | Romero     | English Composition            |
| Abigail     | Romero     | Cell Biology                   |
| Rose        | Gill       | Quantum Mechanics              |
| Robert      | Turner     | Microeconomics                 |
| James       | Torres     | Electromagnetism               |
| Patrick     | Wood       | Modern Physics                 |
| Patrick     | Wood       | Cognitive Psychology           |
| Patrick     | Wood       | American Literature            |
| Diana       | Frazier    | Ancient Civilization           |
| Brent       | Davis      | Shakespearean Literature       |
| Brent       | Davis      | Discrete Mathematics           |
| Brent       | Davis      | Cognitive Psychology           |
| Abigail     | Howard     | Shakespearean Literature       |
| Abigail     | Howard     | Quantum Mechanics              |
| Abigail     | Howard     | European History               |
| Richard     | Parsons    | Microeconomics                 |
| Lori        | Anderson   | Software Engineering           |
| Lori        | Anderson   | Sociological Theory            |
| Lori        | Anderson   | Mathematical Logic             |
| Jason       | Robinson   | Introduction to Programming    |
| Laurie      | Rogers     | Inorganic Chemistry            |
| Laurie      | Rogers     | Statistics                     |
| Larry       | Larson     | European History               |
| Larry       | Larson     | Social Psychology              |
| Larry       | Larson     | English Literature             |
| Robert      | Davidson   | Data Structures                |
| Robert      | Davidson   | Electromagnetism               |
| Robert      | Davidson   | European History               |
| Theresa     | Rodgers    | European History               |
| Richard     | Tran       | Psychological Research Methods |
| Jon         | Weaver     | Quantum Mechanics              |
| Jodi        | Reynolds   | Organic Chemistry              |
| Jodi        | Reynolds   | American Poetry                |
| Kenneth     | Mccann     | Software Engineering           |
| Jerry       | Roman      | Mathematical Logic             |
| Jerry       | Roman      | Modern Physics                 |
| Julia       | Gray       | Quantum Field Theory           |
| Julia       | Gray       | Database Management            |
| Wesley      | Romero     | Database Management            |
| Wesley      | Romero     | English Literature             |
| Wesley      | Romero     | Calculus I                     |
| Bridget     | Hunter     | Cell Biology                   |
| Bridget     | Hunter     | Introduction to Programming    |
| Bridget     | Hunter     | Mathematical Logic             |
| Tina        | Swanson    | Organic Chemistry              |
| Tina        | Swanson    | American Literature            |
| Tina        | Swanson    | Ancient Civilization           |
| Stephanie   | Brown      | Linear Algebra                 |
| Stephanie   | Brown      | Quantum Field Theory           |
| Todd        | Keller     | Software Engineering           |
| Todd        | Keller     | Mathematical Logic             |
| Jennifer    | Huffman    | World History                  |
| Jennifer    | Huffman    | Medieval History               |
| Jennifer    | Huffman    | English Composition            |
| Deborah     | Jacobs     | Quantum Mechanics              |
| Kaitlyn     | Cunningham | Introduction to Programming    |
| Kimberly    | Cowan      | Inorganic Chemistry            |
| Kimberly    | Cowan      | Macroeconomics                 |
| Kimberly    | Cowan      | Number Theory                  |
| Felicia     | Johnson    | Organic Chemistry              |
| Felicia     | Johnson    | European History               |
| Deanna      | Cabrera    | Sociological Theory            |
| Adam        | Holloway   | Cell Biology                   |
| Adam        | Holloway   | Calculus I                     |
| Rebecca     | Paul       | Psychological Research Methods |
| Rebecca     | Paul       | Quantum Field Theory           |
| Rebecca     | Paul       | English Composition            |
| Susan       | Browning   | Thermodynamics                 |
| Robert      | Henry      | Quantum Mechanics              |
| Robert      | Henry      | Inorganic Chemistry            |
| Robert      | Henry      | Inorganic Chemistry            |
| Amanda      | Harrison   | English Composition            |
| Kendra      | Molina     | Number Theory                  |
| Kendra      | Molina     | Database Management            |
| Kendra      | Molina     | Psychological Research Methods |
| Bryan       | Phelps     | Software Engineering           |
| Alex        | Mills      | Calculus I                     |
| Alex        | Mills      | Electromagnetism               |
| Alex        | Mills      | Medieval History               |
| Brett       | Perez      | English Literature             |
| Brett       | Perez      | Calculus I                     |
| Brett       | Perez      | Discrete Mathematics           |
| Gabrielle   | Brennan    | American Literature            |
| Kathleen    | Perkins    | Medieval History               |
| Kathleen    | Perkins    | Medieval History               |
| Kimberly    | Rodriguez  | Database Management            |
| Paul        | Hicks      | Psychological Research Methods |
| Morgan      | Matthews   | Modern Physics                 |
| Anthony     | Larson     | English Literature             |
| Anthony     | Larson     | Electromagnetism               |
| Anthony     | Larson     | World History                  |
| John        | Moore      | English Composition            |
| John        | Moore      | Modern Physics                 |
| Benjamin    | Jones      | Algorithms                     |
| Benjamin    | Jones      | European History               |
| Benjamin    | Jones      | Electromagnetism               |
| Paula       | Walker     | Number Theory                  |
| Paula       | Walker     | Modern Physics                 |
| Samuel      | Donaldson  | Genetics                       |
| Samuel      | Donaldson  | Sociological Theory            |
| Craig       | Stewart    | Medieval History               |
| Craig       | Stewart    | Number Theory                  |
| Craig       | Stewart    | Statistics                     |
| Brandi      | Leonard    | English Literature             |
| Edward      | Frye       | Quantum Field Theory           |
| Joseph      | Lynn       | Shakespearean Literature       |
| Joseph      | Lynn       | Ancient Civilization           |
| Gabrielle   | Decker     | Ancient History                |
| Michael     | Woods      | Thermodynamics                 |
| Michael     | Woods      | Data Structures                |
| Michael     | Woods      | Organic Chemistry              |
| Mary        | Rose       | Cell Biology                   |
| Mary        | Rose       | Genetics                       |
| Anne        | Ruiz       | Electromagnetism               |
| Anne        | Ruiz       | Psychological Research Methods |
| Mary        | Parker     | Linear Algebra                 |
| Mary        | Parker     | Quantum Field Theory           |
| Mary        | Parker     | Modern Physics                 |
| Ryan        | Summers    | Thermodynamics                 |
| Tracy       | Johns      | Genetics                       |
| Thomas      | Blair      | Quantum Field Theory           |
| Thomas      | Blair      | European History               |
| Albert      | Bowen      | Statistics                     |
| Victoria    | Rodgers    | World History                  |
| William     | Roberts    | Psychological Research Methods |
| Hayley      | Graham     | Social Psychology              |
| Carrie      | Sanchez    | Linear Algebra                 |
| Carrie      | Sanchez    | Genetics                       |
| Christopher | Valdez     | Inorganic Chemistry            |
| Christopher | Valdez     | Electromagnetism               |
| John        | Meadows    | Microeconomics                 |
| Jonathan    | Hill       | Genetics                       |
| Jonathan    | Hill       | Mathematical Logic             |
| Jonathan    | Hill       | Ancient Civilization           |
| Thomas      | Meadows    | Quantum Field Theory           |
| Thomas      | Meadows    | Thermodynamics                 |
| Richard     | Trujillo   | Inorganic Chemistry            |
| Richard     | Trujillo   | Quantum Mechanics              |
| Richard     | Trujillo   | American Literature            |
| Toni        | Harris     | Organic Chemistry              |
| Stephanie   | Lopez      | Mathematical Logic             |
| Stephanie   | Lopez      | European History               |
| Tyrone      | Ryan       | Sociological Theory            |
| Tyrone      | Ryan       | Cognitive Psychology           |
| Tyrone      | Ryan       | Microeconomics                 |
| Jennifer    | Reynolds   | Organic Chemistry              |
| Jennifer    | Reynolds   | Database Management            |
| Willie      | Duran      | Statistics                     |
| Willie      | Duran      | European History               |
| Willie      | Duran      | American Poetry                |
| Robert      | Briggs     | Algorithms                     |
| Robert      | Briggs     | Inorganic Chemistry            |
| Robert      | Briggs     | Macroeconomics                 |
| Jennifer    | Russell    | European History               |
| Eric        | Perez      | Inorganic Chemistry            |
| Eric        | Perez      | Inorganic Chemistry            |
| Eric        | Perez      | Social Psychology              |
| Allison     | Garrison   | Statistics                     |
| Allison     | Garrison   | Shakespearean Literature       |
| Paul        | White      | Calculus I                     |
| Joanna      | Paul       | Inorganic Chemistry            |
| Joanna      | Paul       | American Literature            |
| Joanna      | Paul       | Quantum Field Theory           |
| Natalie     | Jimenez    | World History                  |
| Natalie     | Jimenez    | Number Theory                  |
| Natalie     | Jimenez    | English Composition            |
| Kayla       | Moody      | Thermodynamics                 |
| Corey       | Bennett    | Inorganic Chemistry            |
| Corey       | Bennett    | Microeconomics                 |
| Erica       | Mccall     | Genetics                       |
| Elizabeth   | Frey       | World History                  |
| Juan        | Barnes     | Linear Algebra                 |
| Juan        | Barnes     | English Composition            |
| James       | Lozano     | Mathematical Logic             |
| James       | Lozano     | Organic Chemistry              |
| James       | Lozano     | Quantum Field Theory           |
| Erin        | Bowen      | World History                  |
| Erin        | Bowen      | Sociological Theory            |
| Erin        | Bowen      | Microeconomics                 |
| Phillip     | Anderson   | Modern Physics                 |
| Phillip     | Anderson   | Organic Chemistry              |
| Kenneth     | Robinson   | Psychological Research Methods |
| Kenneth     | Robinson   | Mathematical Logic             |
| Kenneth     | Robinson   | Data Structures                |
| Michael     | Jones      | Data Structures                |
| Michael     | Jones      | Organic Chemistry              |
| Gregory     | Pierce     | Cell Biology                   |
| Erin        | Thomas     | Shakespearean Literature       |
| Erin        | Thomas     | Electromagnetism               |
| Daniel      | Mason      | Discrete Mathematics           |
| Daniel      | Mason      | Computer Networks              |
| Tammy       | Morgan     | Quantum Field Theory           |
| Tammy       | Morgan     | Database Management            |
| Tammy       | Morgan     | Discrete Mathematics           |
| Margaret    | Reeves     | Data Structures                |
| Margaret    | Reeves     | Organic Chemistry              |
| Tammie      | Griffin    | Software Engineering           |
| Gavin       | Fisher     | Cell Biology                   |
| Darren      | Wolfe      | Computer Networks              |
| Darren      | Wolfe      | Macroeconomics                 |
| Darren      | Wolfe      | World History                  |
| Karen       | Brown      | Organic Chemistry              |
| Karen       | Brown      | Ancient Civilization           |
| Robert      | Caldwell   | Shakespearean Literature       |
| Debra       | Wood       | Database Management            |
| Debra       | Wood       | European History               |
| Margaret    | Simmons    | Microeconomics                 |
| Margaret    | Simmons    | Software Engineering           |
| Douglas     | Smith      | Psychological Research Methods |
| Douglas     | Smith      | Macroeconomics                 |
| Douglas     | Smith      | Medieval History               |
| Alexis      | Mcdaniel   | Shakespearean Literature       |
| Kimberly    | Marquez    | Psychological Research Methods |
| Deborah     | Cain       | Number Theory                  |
| Ronald      | Willis     | Microeconomics                 |
| Ronald      | Willis     | Calculus I                     |
| Ronald      | Willis     | American Literature            |
| Perry       | Hanson     | Shakespearean Literature       |
| Perry       | Hanson     | Mathematical Logic             |
| Perry       | Hanson     | Genetics                       |
| George      | Eaton      | Shakespearean Literature       |
| George      | Eaton      | Software Engineering           |
| George      | Eaton      | Linear Algebra                 |
| Kyle        | Jones      | Psychological Research Methods |
| Kyle        | Jones      | Microeconomics                 |
| Stephen     | Harrington | American Literature            |
| Stephen     | Harrington | Genetics                       |
| William     | Johnson    | Linear Algebra                 |
| Patrick     | Jensen     | Statistics                     |
| Patrick     | Jensen     | Cell Biology                   |
| Kendra      | May        | Database Management            |
| Kendra      | May        | Genetics                       |
| Timothy     | Wong       | English Literature             |
| Timothy     | Wong       | Organic Chemistry              |
| Timothy     | Wong       | Cognitive Psychology           |
| Preston     | Floyd      | English Literature             |
| Cameron     | Fuller     | Number Theory                  |
| Allison     | Beck       | Linear Algebra                 |
| Allison     | Beck       | Ancient History                |
| Allison     | Beck       | Social Psychology              |
| Susan       | Potter     | Shakespearean Literature       |
| Susan       | Potter     | English Literature             |
| Susan       | Potter     | Genetics                       |
| Kimberly    | Smith      | Shakespearean Literature       |
| Katelyn     | Woods      | Ancient History                |
| Katelyn     | Woods      | Thermodynamics                 |
| Nicholas    | Baker      | American Literature            |
| Vincent     | Graham     | Genetics                       |
| Vincent     | Graham     | Quantum Field Theory           |
| Vincent     | Graham     | Linear Algebra                 |
| Courtney    | Robinson   | Psychological Research Methods |
| Courtney    | Robinson   | Ancient Civilization           |
| Regina      | Atkins     | Quantum Field Theory           |
| Regina      | Atkins     | Mathematical Logic             |
| Deborah     | Turner     | American Poetry                |
| Deborah     | Turner     | Calculus I                     |
| Deborah     | Turner     | Medieval History               |
| Jennifer    | Smith      | Sociological Theory            |
| Jennifer    | Smith      | Sociological Theory            |
| Matthew     | Perez      | American Poetry                |
| Lance       | Morales    | English Literature             |
| Lance       | Morales    | Quantum Field Theory           |
| Mark        | Maldonado  | American Literature            |
| Mark        | Maldonado  | Organic Chemistry              |
| Andrea      | Johnson    | Organic Chemistry              |
| Andrea      | Johnson    | Statistics                     |
| Andrea      | Johnson    | Calculus I                     |
| Steven      | Rangel     | Database Management            |
| Steven      | Rangel     | Macroeconomics                 |
| Jimmy       | Smith      | American Literature            |
| George      | Lambert    | Introduction to Programming    |
| George      | Lambert    | Sociological Theory            |
| George      | Lambert    | World History                  |
| Robert      | Kim        | Software Engineering           |
| Robert      | Kim        | Social Psychology              |
| Ronald      | Alexander  | Organic Chemistry              |
| Ronald      | Alexander  | Mathematical Logic             |
| Ronald      | Alexander  | Social Psychology              |
| Amanda      | Williams   | Quantum Mechanics              |
| Amanda      | Williams   | Psychological Research Methods |
| Amanda      | Williams   | Discrete Mathematics           |
| Dennis      | Gonzales   | Algorithms                     |
| Elizabeth   | Jennings   | Mathematical Logic             |
| Elizabeth   | Jennings   | Quantum Field Theory           |
| Lisa        | Contreras  | Cell Biology                   |
| Lisa        | Contreras  | Mathematical Logic             |
| Andrea      | Powers     | Medieval History               |
| Andrea      | Powers     | Thermodynamics                 |
| Luis        | Davenport  | Number Theory                  |
| Luis        | Davenport  | Cell Biology                   |
| Kimberly    | Hale       | Sociological Theory            |
| Kimberly    | Hale       | Quantum Field Theory           |
| Trevor      | Watson     | Computer Networks              |
| Samantha    | Johnson    | Discrete Mathematics           |
| Samantha    | Johnson    | Statistics                     |
| Samantha    | Johnson    | European History               |
| Brandon     | Ford       | Modern Physics                 |
| Brandon     | Ford       | Computer Networks              |
| Brandon     | Ford       | Algorithms                     |
| Laura       | Hunt       | Calculus I                     |
| Laura       | Hunt       | Database Management            |
| Laura       | Hunt       | Linear Algebra                 |
| Michelle    | Martin     | Ancient Civilization           |
| Michelle    | Martin     | Macroeconomics                 |
| Claire      | Wong       | Ancient History                |
| Morgan      | Gomez      | Thermodynamics                 |
| Morgan      | Gomez      | Calculus I                     |
| Morgan      | Gomez      | Cell Biology                   |
| Eric        | Oneill     | English Composition            |
| Isaac       | Wood       | Medieval History               |
| Isaac       | Wood       | Algorithms                     |
| Elizabeth   | Smith      | Introduction to Programming    |
| Jason       | Guzman     | Cognitive Psychology           |
| Jason       | Guzman     | Macroeconomics                 |
| Lori        | Espinoza   | Introduction to Programming    |
| Lori        | Espinoza   | European History               |
| Terri       | Mccoy      | Quantum Mechanics              |
| Terri       | Mccoy      | Linear Algebra                 |
| Adam        | Carlson    | Organic Chemistry              |
| Danielle    | Preston    | Medieval History               |
| Arthur      | Webster    | World History                  |
| Pamela      | Sims       | Mathematical Logic             |
| Pamela      | Sims       | Introduction to Programming    |
| Veronica    | Brooks     | Microeconomics                 |
| Veronica    | Brooks     | American Literature            |
| Lauren      | Johnson    | Software Engineering           |
| Lauren      | Johnson    | Statistics                     |
| Lauren      | Johnson    | American Literature            |
| Lauren      | Cooke      | Calculus I                     |
| Kelsey      | Pope       | English Literature             |
| Jonathan    | Thompson   | Medieval History               |
| Judy        | Cunningham | Number Theory                  |
| Brooke      | Pratt      | Introduction to Programming    |
| Kurt        | Whitney    | Mathematical Logic             |
| Kurt        | Whitney    | European History               |
| Kurt        | Whitney    | Organic Chemistry              |
| Rebecca     | Matthews   | Introduction to Programming    |
| Rebecca     | Matthews   | Inorganic Chemistry            |
| Rebecca     | Matthews   | American Poetry                |
| Ashley      | Floyd      | Statistics                     |
| Ashley      | Floyd      | Genetics                       |
| Ashley      | Floyd      | Introduction to Programming    |
+-------------+------------+--------------------------------+
*/

/*
--------------------------------------
c) korzystając z relacji Departments i Professors utwórz perspektywę o nazwie SocialDepartments
(zachowując oryginalne nazwy atrybutów), zwracającą imiona, nazwiska i powiększone o 15%
miesięczne wynagrodzenia nauczycieli, zatrudnionych na wydziałach Socjologii oraz Psychologii –
sprawdź jej działanie, wybierając z niej wszystkie atrybuty i krotki;
*/
CREATE VIEW SocialDepartments AS
SELECT 
    p.FirstName,
    p.LastName,
    ROUND(p.Payment * 1.15, 2) AS Payment
FROM Professors p
JOIN Departments d ON p.DepartmentId = d.DepartmentId
WHERE d.DepartmentName IN ('Sociology', 'Psychology')

SELECT * FROM SocialDepartments;
/* RESULTS:
+-----------+------------+---------+
| FirstName | LastName   | Payment |
+-----------+------------+---------+
| Kirk      | King       | 7475    |
| Lisa      | Carey      | 8970    |
| Frederick | Richardson | 7015    |
| Kara      | Kim        | 8740    |
| Charles   | Saunders   | 9085    |
| Steven    | Harris     | 5750    |
+-----------+------------+---------+
*/

/*
--------------------------------------
d) korzystając z relacji Departments, Programs i Courses wybierz zbiór krotek, składający się z (unikal-
nych) nazw wszystkich wydziałów, kierunków i kursów, umieszczonych w jednej kolumnie o nazwie
Name;
*/
SELECT DepartmentName AS Name
FROM Departments
UNION
SELECT ProgramName
FROM Programs
UNION
SELECT CourseName
FROM Courses;
/* RESULTS:
+--------------------------------+
| Name                           |
+--------------------------------+
| Algorithms                     |
| American Literature            |
| American Poetry                |
| Ancient Civilization           |
| Ancient History                |
| Anthropology                   |
| Art History                    |
| Biology                        |
| Business Administration        |
| Calculus I                     |
| Cell Biology                   |
| Chemistry                      |
| Cognitive Psychology           |
| Computer Networks              |
| Computer Science               |
| Data Structures                |
| Database Management            |
| Discrete Mathematics           |
| Economics                      |
| Electromagnetism               |
| English                        |
| English Composition            |
| English Literature             |
| Environmental Science          |
| European History               |
| Film and Media Studies         |
| Genetics                       |
| Health Sciences                |
| History                        |
| Inorganic Chemistry            |
| Introduction to Programming    |
| Linear Algebra                 |
| Macroeconomics                 |
| Mathematical Logic             |
| Mathematics                    |
| Medieval History               |
| Microeconomics                 |
| Modern Physics                 |
| Music                          |
| Number Theory                  |
| Organic Chemistry              |
| Philosophy                     |
| Physics                        |
| Political Science              |
| Psychological Research Methods |
| Psychology                     |
| Quantum Field Theory           |
| Quantum Mechanics              |
| Shakespearean Literature       |
| Social Psychology              |
| Sociological Theory            |
| Sociology                      |
| Software Engineering           |
| Statistics                     |
| Theater Studies                |
| Thermodynamics                 |
| World History                  |
+--------------------------------+
*/

/*
--------------------------------------
e) korzystając z relacji Professors i Students wybierz nazwiska, które noszą zarówno nauczyciele, jak
i studenci.
*/
SELECT LastName
FROM Professors
INTERSECT
SELECT LastName
FROM Students;
/* RESULTS:
+----------+
| LastName |
+----------+
| Davis    |
| Harris   |
| Jones    |
| Kim      |
| Lee      |
| Rose     |
| Smith    |
| Williams |
+----------+
*/