/*
Zadanie 1: Podstawowe konstrukcje języka SQL [10 pkt]
Wykonaj poniższe polecenia:
--------------------------------------
a) z  relacji  Professors  wybierz  wszystkie  rekordy  ze  wszystkimi  ich  atrybutami,  tj.  identyfikator
nauczyciela, jego imię, nazwisko, datę urodzenia, płeć, adres e-mail, numer telefonu, pensję oraz
identyfikator wydziału, na którym pracuje;
*/
select * from Professors;
/* RESULTS:
+-------------+------------+------------+-------------+--------+----------------------------+------------------------+---------+--------------+
| ProfessorId | FirstName  | LastName   | DateOfBirth | Gender | Email                      | PhoneNumber            | Payment | DepartmentId |
+-------------+------------+------------+-------------+--------+----------------------------+------------------------+---------+--------------+
| 1           | William    | Alvarez    | 1968-01-09  | Female | lwhite@example.org         | 909-737-3692           | 7700    | 3            |
| 2           | Randy      | Woodward   | 1989-10-25  | Male   | paul55@example.net         | 001-526-036-5885x70981 | 7400    | 2            |
| 3           | Kirk       | King       | 1967-02-13  | Male   | rebekah66@example.org      | (403)268-8882          | 6500    | 9            |
| 4           | Amanda     | Mcconnell  | 1984-10-22  | Male   | kevin28@example.org        | 001-679-146-0755x61254 | 7200    | 6            |
| 5           | Susan      | Lowe       | 1968-08-07  | Female | olsoncory@example.net      | 053-718-2274x8857      | 6200    | 8            |
| 6           | Lisa       | Carey      | 1991-04-09  | Female | morrisonashley@example.org | 001-740-033-0833       | 7800    | 9            |
| 7           | Walter     | Lee        | 1992-04-18  | Male   | greenjodi@example.org      | 001-080-641-2976x5321  | 5400    | 2            |
| 8           | Jennifer   | Davis      | 1976-12-14  | Male   | bturner@example.com        | 509-784-8060           | 7700    | 1            |
| 9           | Frederick  | Richardson | 1978-10-15  | Female | matthew71@example.net      | 268-532-5412           | 6100    | 9            |
| 10          | Jay        | Leblanc    | 1986-10-10  | Female | dbaker@example.net         | 245-302-4484           | 5500    | 1            |
| 11          | Jeremy     | Olson      | 1974-08-07  | Male   | jeremymartin@example.org   | +1-432-000-2205        | 6700    | 3            |
| 12          | Daniel     | Jones      | 1971-02-06  | Female | jessica65@example.net      | 238-928-0507           | 6800    | 2            |
| 13          | Jacqueline | Cervantes  | 1967-09-27  | Male   | samanthawilson@example.org | +1-430-215-1516        | 6000    | 4            |
| 14          | Amanda     | Rose       | 1964-09-26  | Male   | wilsonsara@example.org     | 706.560.3767           | 5500    | 2            |
| 15          | Lisa       | Williams   | 1992-01-31  | Male   | watkinsmark@example.org    | 001-728-652-7373x21517 | 7600    | 6            |
| 16          | Louis      | Schroeder  | 1967-03-02  | Female | xwhitehead@example.net     | 342-335-9673x132       | 5500    | 7            |
| 17          | Edwin      | Smith      | 1992-02-04  | Male   | brivera@example.net        | 001-922-214-0521       | 7500    | 5            |
| 18          | Brandon    | Davila     | 1991-07-14  | Female | obrienjeffrey@example.net  | +1-852-634-4923x70575  | 7000    | 7            |
| 19          | Cynthia    | Carter     | 1975-06-19  | Female | yeseniawalker@example.org  | 793.606.3826           | 7400    | 4            |
| 20          | Cynthia    | Suarez     | 1978-07-01  | Female | amymiles@example.net       | +1-872-376-3869        | 6900    | 5            |
| 21          | Cheryl     | Barr       | 1970-02-13  | Male   | brendandowns@example.net   | +1-601-901-6770x6961   | 5600    | 3            |
| 22          | Daniel     | Ward       | 1988-03-19  | Female | jpowell@example.net        | (753)901-7670x611      | 7600    | 2            |
| 23          | Paula      | Burgess    | 1983-05-28  | Female | estradagregory@example.org | 121-349-7518x416       | 7400    | 3            |
| 24          | Stephen    | Clay       | 1963-11-23  | Male   | vthompson@example.net      | 188-032-7807           | 6900    | 2            |
| 25          | Kara       | Kim        | 1979-09-04  | Female | reevespatricia@example.com | 001-871-810-5500x27439 | 7600    | 10           |
| 26          | Austin     | Jackson    | 1979-08-29  | Female | crawfordryan@example.net   | 246.087.0032           | 6000    | 5            |
| 27          | Charles    | Saunders   | 1987-07-14  | Male   | cynthia61@example.com      | 328.132.8527x68729     | 7900    | 9            |
| 28          | Scott      | Davis      | 1990-08-03  | Female | taylordakota@example.com   | 755-571-8691x7903      | 6800    | 7            |
| 29          | Steven     | Harris     | 1990-11-14  | Female | johnny38@example.com       | 5133475207             | 5000    | 9            |
| 30          | Paul       | Patel      | 1975-12-28  | Male   | coxwanda@example.org       | 732.905.7532           | 5100    | 7            |
+-------------+------------+------------+-------------+--------+----------------------------+------------------------+---------+--------------+
*/

/*
--------------------------------------
b) wybierz nazwy i liczbę tzw. godzin kredytowych wszystkich kursów z relacji Courses;
*/
select CourseName, CreditHours from Courses;
/* RESULTS:
+--------------------------------+-------------+
| CourseName                     | CreditHours |
+--------------------------------+-------------+
| Introduction to Programming    | 3           |
| Database Management            | 3           |
| Calculus I                     | 4           |
| Linear Algebra                 | 3           |
| Modern Physics                 | 3           |
| English Composition            | 3           |
| World History                  | 3           |
| Data Structures                | 4           |
| Algorithms                     | 4           |
| Statistics                     | 3           |
| Discrete Mathematics           | 3           |
| Quantum Mechanics              | 4           |
| Thermodynamics                 | 3           |
| Shakespearean Literature       | 3           |
| American Literature            | 3           |
| European History               | 3           |
| Ancient History                | 3           |
| Computer Networks              | 3           |
| Software Engineering           | 4           |
| Number Theory                  | 4           |
| Mathematical Logic             | 3           |
| Quantum Field Theory           | 4           |
| Electromagnetism               | 3           |
| English Literature             | 3           |
| American Poetry                | 3           |
| Ancient Civilization           | 3           |
| Medieval History               | 3           |
| Cell Biology                   | 3           |
| Genetics                       | 3           |
| Organic Chemistry              | 4           |
| Inorganic Chemistry            | 3           |
| Microeconomics                 | 3           |
| Macroeconomics                 | 3           |
| Psychological Research Methods | 3           |
| Cognitive Psychology           | 3           |
| Sociological Theory            | 3           |
| Social Psychology              | 3           |
+--------------------------------+-------------+
*/

/*
--------------------------------------
c) z relacji Students wybierz (stosując odpowiednie aliasy nazw kolumn) imiona i nazwiska studentów
oraz  koszt  ich  studiów,  liczony  jako  czesne  wniesione  przez  3  lata  studiów  (podane  w  relacji
Students czesne jest czesnym semestralnym);
*/
select FirstName AS Imie, LastName AS Nazwisko, (Tuition * 6) AS "Czesne 3-letnie" from Students;
/* RESULTS:
+-------------+------------+-----------------+
| Imie        | Nazwisko   | Czesne 3-letnie |
+-------------+------------+-----------------+
| Brooke      | Glover     | 16800           |
| Michael     | Young      | 16200           |
| Megan       | Williams   | 12600           |
| Danielle    | Cole       | 15000           |
| Gary        | Castro     | 13800           |
| Philip      | Williams   | 13200           |
| Jesse       | Schmidt    | 12000           |
| Karen       | Jones      | 15600           |
| Anna        | Hampton    | 14400           |
| Nicole      | Mckay      | 14400           |
| Thomas      | Ballard    | 17400           |
| Jeremy      | Mcknight   | 12600           |
| Elizabeth   | Wilson     | 12000           |
| Amanda      | Oneal      | 13800           |
| Duane       | Gonzalez   | 12000           |
| Joseph      | Barker     | 15600           |
| Nicholas    | Brown      | 15000           |
| Angela      | Gonzales   | 14400           |
| Steve       | Wolf       | 12600           |
| Alison      | Hughes     | 17400           |
| Amy         | Griffin    | 12600           |
| Lauren      | Gomez      | 16200           |
| Adam        | Bray       | 16200           |
| Kimberly    | Blake      | 15000           |
| William     | Flores     | 13200           |
| Kayla       | Smith      | 16200           |
| Roberto     | Herman     | 13200           |
| Michelle    | Mata       | 17400           |
| John        | Farmer     | 16800           |
| Kyle        | Tucker     | 16200           |
| Shelby      | Russo      | 16200           |
| Wendy       | Rios       | 13800           |
| James       | Lowery     | 15000           |
| Ruth        | Garcia     | 12000           |
| Melissa     | Williams   | 16200           |
| Christopher | Spencer    | 12000           |
| Timothy     | Austin     | 15000           |
| Francisco   | Giles      | 17400           |
| Scott       | Hughes     | 16200           |
| Catherine   | Morales    | 15600           |
| Vicki       | Mitchell   | 15600           |
| Erin        | Orozco     | 13800           |
| Margaret    | Thomas     | 14400           |
| Kevin       | Mitchell   | 16200           |
| Catherine   | Jones      | 16200           |
| Ronald      | Peters     | 15600           |
| Denise      | Peterson   | 12600           |
| Leslie      | Watson     | 13200           |
| Bradley     | Smith      | 12000           |
| Frank       | Hall       | 15000           |
| Kenneth     | Wells      | 13200           |
| Dennis      | Cantrell   | 12600           |
| Kelly       | Lawson     | 16800           |
| Melissa     | Clark      | 15000           |
| Nicholas    | Gonzalez   | 16200           |
| Daniel      | Wilson     | 16200           |
| Janet       | Miranda    | 15000           |
| Gregg       | Harris     | 15600           |
| Trevor      | Barton     | 13800           |
| Matthew     | Adams      | 12000           |
| Kristin     | Gray       | 15600           |
| Brandon     | Cunningham | 17400           |
| Amy         | Henson     | 16200           |
| Michael     | Garcia     | 17400           |
| Damon       | Johnson    | 16800           |
| Stephanie   | Robertson  | 12600           |
| Aaron       | Valentine  | 12000           |
| Robyn       | Bullock    | 13800           |
| Nicholas    | Davis      | 16200           |
| Alicia      | White      | 12000           |
| Christopher | Jones      | 12000           |
| Gregory     | Allen      | 14400           |
| Amy         | Gardner    | 12000           |
| Devon       | Douglas    | 17400           |
| Angela      | Smith      | 15000           |
| Abigail     | Romero     | 16200           |
| Rose        | Gill       | 16200           |
| Robert      | Turner     | 13200           |
| James       | Torres     | 16200           |
| Patrick     | Wood       | 12600           |
| Diana       | Frazier    | 15000           |
| Lauren      | Scott      | 16200           |
| Brent       | Davis      | 15600           |
| John        | Smith      | 16800           |
| Abigail     | Howard     | 13800           |
| Richard     | Parsons    | 16800           |
| Lori        | Anderson   | 16200           |
| Jason       | Robinson   | 16200           |
| Laurie      | Rogers     | 14400           |
| Peggy       | Vasquez    | 16200           |
| Larry       | Larson     | 16800           |
| William     | Castillo   | 13200           |
| Robert      | Davidson   | 16200           |
| Theresa     | Rodgers    | 15000           |
| Cynthia     | Cardenas   | 16200           |
| Richard     | Tran       | 13800           |
| Jon         | Weaver     | 15600           |
| Stefanie    | Lawson     | 16200           |
| Jodi        | Reynolds   | 17400           |
| Kenneth     | Mccann     | 15600           |
| Jerry       | Roman      | 13800           |
| Julia       | Gray       | 13200           |
| Wesley      | Romero     | 15600           |
| Bridget     | Hunter     | 13800           |
| Tina        | Swanson    | 13200           |
| Stephanie   | Brown      | 16800           |
| Susan       | Long       | 17400           |
| Todd        | Keller     | 15600           |
| Lauren      | Chandler   | 12000           |
| Jennifer    | Huffman    | 16200           |
| Deborah     | Jacobs     | 16800           |
| Michael     | Mccarty    | 15600           |
| Kaitlyn     | Cunningham | 17400           |
| Melissa     | Moreno     | 17400           |
| David       | Sullivan   | 14400           |
| Kimberly    | Cowan      | 13800           |
| Felicia     | Johnson    | 15600           |
| Deanna      | Cabrera    | 16800           |
| Adam        | Holloway   | 16200           |
| Rebecca     | Paul       | 17400           |
| Susan       | Browning   | 13200           |
| Robert      | Henry      | 12000           |
| Jeffrey     | Ochoa      | 13200           |
| Amanda      | Harrison   | 13200           |
| Rachel      | Anderson   | 16800           |
| Kendra      | Molina     | 16200           |
| James       | Marks      | 16200           |
| Bryan       | Phelps     | 15000           |
| Alex        | Mills      | 17400           |
| Brett       | Perez      | 15000           |
| Erica       | Norton     | 16200           |
| Todd        | Lee        | 15600           |
| Gabrielle   | Brennan    | 14400           |
| Kathleen    | Perkins    | 16800           |
| Kimberly    | Rodriguez  | 14400           |
| Paul        | Hicks      | 14400           |
| Christine   | Ayala      | 15000           |
| Natalie     | Gonzalez   | 12600           |
| Morgan      | Matthews   | 14400           |
| Anthony     | Larson     | 12600           |
| John        | Moore      | 12000           |
| Benjamin    | Jones      | 13200           |
| Paula       | Walker     | 13800           |
| Samuel      | Donaldson  | 15600           |
| Lauren      | Cole       | 12600           |
| Craig       | Stewart    | 17400           |
| Brandi      | Leonard    | 15000           |
| Whitney     | Diaz       | 14400           |
| Edward      | Frye       | 17400           |
| Joseph      | Lynn       | 13800           |
| Gabrielle   | Decker     | 12000           |
| Michael     | Woods      | 12000           |
| Mary        | Rose       | 12600           |
| Anne        | Ruiz       | 13200           |
| Mary        | Parker     | 16200           |
| Ryan        | Summers    | 17400           |
| James       | Smith      | 12000           |
| Tracy       | Johns      | 15000           |
| Thomas      | Blair      | 13800           |
| Albert      | Bowen      | 13800           |
| Patrick     | Stephens   | 13200           |
| Victoria    | Rodgers    | 13800           |
| William     | Roberts    | 15000           |
| Hayley      | Graham     | 16800           |
| Carrie      | Sanchez    | 13800           |
| Christopher | Valdez     | 12000           |
| John        | Meadows    | 12000           |
| Jonathan    | Hill       | 17400           |
| Thomas      | Meadows    | 13200           |
| Richard     | Trujillo   | 16200           |
| Toni        | Harris     | 12600           |
| Tara        | Rodgers    | 12000           |
| Samantha    | Sweeney    | 13800           |
| Stephanie   | Lopez      | 16800           |
| Tyrone      | Ryan       | 14400           |
| Jennifer    | Reynolds   | 12600           |
| Willie      | Duran      | 17400           |
| Robert      | Briggs     | 17400           |
| Gregory     | Gonzalez   | 12000           |
| Andrea      | Walton     | 17400           |
| Jennifer    | Russell    | 16800           |
| Eric        | Perez      | 12000           |
| Allison     | Garrison   | 16200           |
| Paul        | White      | 13800           |
| Joanna      | Paul       | 16800           |
| Jennifer    | Moore      | 12600           |
| Natalie     | Jimenez    | 16200           |
| Darren      | Lewis      | 15600           |
| Kayla       | Moody      | 12600           |
| Corey       | Bennett    | 12000           |
| Erica       | Mccall     | 13200           |
| Elizabeth   | Frey       | 13800           |
| Manuel      | Tate       | 12600           |
| Juan        | Barnes     | 16800           |
| James       | Lozano     | 13200           |
| Erin        | Bowen      | 12000           |
| Phillip     | Anderson   | 15600           |
| Kenneth     | Robinson   | 13200           |
| Michael     | Jones      | 16800           |
| Gregory     | Pierce     | 13800           |
| Erin        | Thomas     | 15000           |
| Daniel      | Mason      | 13200           |
| Tammy       | Morgan     | 13800           |
| Margaret    | Reeves     | 13800           |
| Tammie      | Griffin    | 13200           |
| Gavin       | Fisher     | 12600           |
| Darren      | Wolfe      | 13800           |
| Karen       | Brown      | 16200           |
| Robert      | Caldwell   | 13200           |
| Ashley      | Lewis      | 13800           |
| Debra       | Wood       | 17400           |
| Margaret    | Simmons    | 16200           |
| Douglas     | Smith      | 12600           |
| Alexis      | Mcdaniel   | 16200           |
| Kimberly    | Marquez    | 14400           |
| Joshua      | Contreras  | 15600           |
| Deborah     | Cain       | 13200           |
| Ronald      | Willis     | 13800           |
| Charles     | Anderson   | 14400           |
| Perry       | Hanson     | 16800           |
| George      | Eaton      | 13200           |
| Kyle        | Jones      | 14400           |
| Nicholas    | Mcintyre   | 15000           |
| Stephen     | Harrington | 14400           |
| Eric        | Roth       | 16200           |
| William     | Johnson    | 17400           |
| Patrick     | Jensen     | 17400           |
| Kendra      | May        | 17400           |
| Timothy     | Wong       | 13200           |
| Preston     | Floyd      | 13200           |
| Victor      | Burton     | 16200           |
| Stephanie   | Walsh      | 15000           |
| Cameron     | Fuller     | 16200           |
| Allison     | Beck       | 16800           |
| Susan       | Potter     | 16800           |
| Kimberly    | Smith      | 12600           |
| Katelyn     | Woods      | 17400           |
| Nicholas    | Baker      | 12600           |
| Shawn       | Russell    | 13200           |
| Andrew      | Dorsey     | 13800           |
| Vincent     | Graham     | 15600           |
| Courtney    | Robinson   | 16200           |
| Tracy       | Powell     | 13200           |
| Regina      | Atkins     | 13800           |
| Deborah     | Turner     | 16800           |
| Jennifer    | Smith      | 15600           |
| Michelle    | Villanueva | 16800           |
| Matthew     | Perez      | 15600           |
| Lance       | Morales    | 12600           |
| Mark        | Maldonado  | 12000           |
| Andrea      | Johnson    | 16200           |
| Steven      | Rangel     | 17400           |
| Jimmy       | Smith      | 12600           |
| Brian       | Fields     | 16200           |
| Jared       | Gordon     | 12600           |
| George      | Lambert    | 12600           |
| Robert      | Kim        | 13800           |
| Kimberly    | Solomon    | 17400           |
| Ronald      | Alexander  | 12000           |
| Amanda      | Williams   | 14400           |
| Dennis      | Gonzales   | 15600           |
| Elizabeth   | Jennings   | 15000           |
| Lisa        | Contreras  | 12600           |
| Andrea      | Powers     | 16200           |
| Luis        | Davenport  | 15600           |
| Kimberly    | Hale       | 14400           |
| Kimberly    | Wilson     | 13800           |
| Jacqueline  | Day        | 12600           |
| Trevor      | Watson     | 16200           |
| Samantha    | Johnson    | 16800           |
| Brandon     | Ford       | 13200           |
| Laura       | Hunt       | 14400           |
| Michelle    | Martin     | 12000           |
| Claire      | Wong       | 12600           |
| Morgan      | Gomez      | 12600           |
| Eric        | Oneill     | 16200           |
| Isaac       | Wood       | 16200           |
| Elizabeth   | Smith      | 12000           |
| Jason       | Guzman     | 13800           |
| Lori        | Espinoza   | 12600           |
| Terri       | Mccoy      | 16800           |
| Adam        | Carlson    | 16800           |
| Danielle    | Preston    | 12000           |
| Arthur      | Webster    | 13800           |
| Pamela      | Sims       | 17400           |
| Stephanie   | Collins    | 16200           |
| Veronica    | Brooks     | 13200           |
| Lauren      | Johnson    | 15600           |
| Lauren      | Cooke      | 15000           |
| Kelsey      | Pope       | 14400           |
| Elizabeth   | Torres     | 15000           |
| Jonathan    | Thompson   | 12600           |
| Judy        | Cunningham | 12000           |
| Brooke      | Pratt      | 13800           |
| Kurt        | Whitney    | 13200           |
| Ralph       | Lowery     | 13200           |
| Patrick     | Houston    | 17400           |
| Rebecca     | Matthews   | 16800           |
| Nancy       | Kim        | 16200           |
| Ashley      | Floyd      | 15000           |
+-------------+------------+-----------------+
*/

/*
--------------------------------------
d) z  relacji  Professors  wybierz  (stosując  odpowiednie  aliasy  nazw  kolumn)  imiona  i  nazwiska
nauczycieli,  ich  zarobki  miesięczne  oraz  sumaryczne  zarobki  roczne,  uwzględniające  premię
(tzw. „trzynastkę”) w wysokości 8.5% rocznego wynagrodzenia zasadniczego;
*/
SELECT 
    FirstName AS "Imie",
    LastName AS "Nazwisko",
    Payment AS "Pensja miesieczna",
    (Payment * 12 * 1.085) AS "Pensja roczna z premia"
FROM Professors;
/* RESULTS:
+------------+------------+-------------------+------------------------+
| Imie       | Nazwisko   | Pensja miesieczna | Pensja roczna z premia |
+------------+------------+-------------------+------------------------+
| William    | Alvarez    | 7700              | 100254                 |
| Randy      | Woodward   | 7400              | 96348                  |
| Kirk       | King       | 6500              | 84630                  |
| Amanda     | Mcconnell  | 7200              | 93744                  |
| Susan      | Lowe       | 6200              | 80724                  |
| Lisa       | Carey      | 7800              | 101556                 |
| Walter     | Lee        | 5400              | 70308                  |
| Jennifer   | Davis      | 7700              | 100254                 |
| Frederick  | Richardson | 6100              | 79422                  |
| Jay        | Leblanc    | 5500              | 71610                  |
| Jeremy     | Olson      | 6700              | 87234                  |
| Daniel     | Jones      | 6800              | 88536                  |
| Jacqueline | Cervantes  | 6000              | 78120                  |
| Amanda     | Rose       | 5500              | 71610                  |
| Lisa       | Williams   | 7600              | 98952                  |
| Louis      | Schroeder  | 5500              | 71610                  |
| Edwin      | Smith      | 7500              | 97650                  |
| Brandon    | Davila     | 7000              | 91140                  |
| Cynthia    | Carter     | 7400              | 96348                  |
| Cynthia    | Suarez     | 6900              | 89838                  |
| Cheryl     | Barr       | 5600              | 72912                  |
| Daniel     | Ward       | 7600              | 98952                  |
| Paula      | Burgess    | 7400              | 96348                  |
| Stephen    | Clay       | 6900              | 89838                  |
| Kara       | Kim        | 7600              | 98952                  |
| Austin     | Jackson    | 6000              | 78120                  |
| Charles    | Saunders   | 7900              | 102858                 |
| Scott      | Davis      | 6800              | 88536                  |
| Steven     | Harris     | 5000              | 65100                  |
| Paul       | Patel      | 5100              | 66402                  |
+------------+------------+-------------------+------------------------+
*/

/*
--------------------------------------
e) wybierz unikalne imiona studentów z relacji Students, sortując je rosnąco;
*/
SELECT DISTINCT FirstName 
FROM Students 
ORDER BY FirstName;
/* RESULTS:
+-------------+
| FirstName   |
+-------------+
| Aaron       |
| Abigail     |
| Adam        |
| Albert      |
| Alex        |
| Alexis      |
| Alicia      |
| Alison      |
| Allison     |
| Amanda      |
| Amy         |
| Andrea      |
| Andrew      |
| Angela      |
| Anna        |
| Anne        |
| Anthony     |
| Arthur      |
| Ashley      |
| Benjamin    |
| Bradley     |
| Brandi      |
| Brandon     |
| Brent       |
| Brett       |
| Brian       |
| Bridget     |
| Brooke      |
| Bryan       |
| Cameron     |
| Carrie      |
| Catherine   |
| Charles     |
| Christine   |
| Christopher |
| Claire      |
| Corey       |
| Courtney    |
| Craig       |
| Cynthia     |
| Damon       |
| Daniel      |
| Danielle    |
| Darren      |
| David       |
| Deanna      |
| Deborah     |
| Debra       |
| Denise      |
| Dennis      |
| Devon       |
| Diana       |
| Douglas     |
| Duane       |
| Edward      |
| Elizabeth   |
| Eric        |
| Erica       |
| Erin        |
| Felicia     |
| Francisco   |
| Frank       |
| Gabrielle   |
| Gary        |
| Gavin       |
| George      |
| Gregg       |
| Gregory     |
| Hayley      |
| Isaac       |
| Jacqueline  |
| James       |
| Janet       |
| Jared       |
| Jason       |
| Jeffrey     |
| Jennifer    |
| Jeremy      |
| Jerry       |
| Jesse       |
| Jimmy       |
| Joanna      |
| Jodi        |
| John        |
| Jon         |
| Jonathan    |
| Joseph      |
| Joshua      |
| Juan        |
| Judy        |
| Julia       |
| Kaitlyn     |
| Karen       |
| Katelyn     |
| Kathleen    |
| Kayla       |
| Kelly       |
| Kelsey      |
| Kendra      |
| Kenneth     |
| Kevin       |
| Kimberly    |
| Kristin     |
| Kurt        |
| Kyle        |
| Lance       |
| Larry       |
| Laura       |
| Lauren      |
| Laurie      |
| Leslie      |
| Lisa        |
| Lori        |
| Luis        |
| Manuel      |
| Margaret    |
| Mark        |
| Mary        |
| Matthew     |
| Megan       |
| Melissa     |
| Michael     |
| Michelle    |
| Morgan      |
| Nancy       |
| Natalie     |
| Nicholas    |
| Nicole      |
| Pamela      |
| Patrick     |
| Paul        |
| Paula       |
| Peggy       |
| Perry       |
| Philip      |
| Phillip     |
| Preston     |
| Rachel      |
| Ralph       |
| Rebecca     |
| Regina      |
| Richard     |
| Robert      |
| Roberto     |
| Robyn       |
| Ronald      |
| Rose        |
| Ruth        |
| Ryan        |
| Samantha    |
| Samuel      |
| Scott       |
| Shawn       |
| Shelby      |
| Stefanie    |
| Stephanie   |
| Stephen     |
| Steve       |
| Steven      |
| Susan       |
| Tammie      |
| Tammy       |
| Tara        |
| Terri       |
| Theresa     |
| Thomas      |
| Timothy     |
| Tina        |
| Todd        |
| Toni        |
| Tracy       |
| Trevor      |
| Tyrone      |
| Veronica    |
| Vicki       |
| Victor      |
| Victoria    |
| Vincent     |
| Wendy       |
| Wesley      |
| Whitney     |
| William     |
| Willie      |
+-------------+
*/

/*
--------------------------------------
f) z relacji Professors wybierz (stosując odpowiednie aliasy nazw kolumn) identyfikatory wszystkich
nauczycieli, ich imiona, nazwiska oraz aktualny wiek w latach, sortując rekordy od najmłodszego
do najstarszego nauczyciela;
*/
SELECT 
    ProfessorId AS "ID Nauczyciela",
    FirstName AS "Imie",
    LastName AS "Nazwisko",
    (strftime('%Y', 'now') - strftime('%Y', DateOfBirth)) - 
    (strftime('%m-%d', 'now') < strftime('%m-%d', DateOfBirth)) AS "Wiek"
FROM Professors
ORDER BY DateOfBirth DESC;
/* RESULTS:
+----------------+------------+------------+------+
| ID Nauczyciela | Imie       | Nazwisko   | Wiek |
+----------------+------------+------------+------+
| 7              | Walter     | Lee        | 32   |
| 17             | Edwin      | Smith      | 33   |
| 15             | Lisa       | Williams   | 33   |
| 18             | Brandon    | Davila     | 33   |
| 6              | Lisa       | Carey      | 33   |
| 29             | Steven     | Harris     | 34   |
| 28             | Scott      | Davis      | 34   |
| 2              | Randy      | Woodward   | 35   |
| 22             | Daniel     | Ward       | 36   |
| 27             | Charles    | Saunders   | 37   |
| 10             | Jay        | Leblanc    | 38   |
| 4              | Amanda     | Mcconnell  | 40   |
| 23             | Paula      | Burgess    | 41   |
| 25             | Kara       | Kim        | 45   |
| 26             | Austin     | Jackson    | 45   |
| 9              | Frederick  | Richardson | 46   |
| 20             | Cynthia    | Suarez     | 46   |
| 8              | Jennifer   | Davis      | 48   |
| 30             | Paul       | Patel      | 49   |
| 19             | Cynthia    | Carter     | 49   |
| 11             | Jeremy     | Olson      | 50   |
| 12             | Daniel     | Jones      | 54   |
| 21             | Cheryl     | Barr       | 54   |
| 5              | Susan      | Lowe       | 56   |
| 1              | William    | Alvarez    | 57   |
| 13             | Jacqueline | Cervantes  | 57   |
| 16             | Louis      | Schroeder  | 57   |
| 3              | Kirk       | King       | 57   |
| 14             | Amanda     | Rose       | 60   |
| 24             | Stephen    | Clay       | 61   |
+----------------+------------+------------+------+
*/

/*
g) z relacji Students wybierz imiona i nazwiska studentów, ich czesne semestralne oraz adresy e-mail,
sortując wynik rosnąco według nazwiska oraz malejąco według czesnego.
*/
SELECT 
    FirstName,
    LastName,
    Tuition,
    Email
FROM Students
ORDER BY 
    LastName ASC,
    Tuition DESC;
/* RESULTS:
+-------------+------------+---------+---------------------------------+
| FirstName   | LastName   | Tuition | Email                           |
+-------------+------------+---------+---------------------------------+
| Matthew     | Adams      | 2000    | terri85@example.org             |
| Ronald      | Alexander  | 2000    | emilyvang@example.com           |
| Gregory     | Allen      | 2400    | matthewstevens@example.org      |
| Rachel      | Anderson   | 2800    | hawkinscharlotte@example.com    |
| Lori        | Anderson   | 2700    | gary25@example.net              |
| Phillip     | Anderson   | 2600    | todd36@example.com              |
| Charles     | Anderson   | 2400    | megan96@example.net             |
| Regina      | Atkins     | 2300    | nataliewilliams@example.net     |
| Timothy     | Austin     | 2500    | clarkecassandra@example.org     |
| Christine   | Ayala      | 2500    | mathewcampbell@example.org      |
| Nicholas    | Baker      | 2100    | orrerin@example.net             |
| Thomas      | Ballard    | 2900    | raguirre@example.net            |
| Joseph      | Barker     | 2600    | umadden@example.org             |
| Juan        | Barnes     | 2800    | sharpsamuel@example.com         |
| Trevor      | Barton     | 2300    | mark28@example.com              |
| Allison     | Beck       | 2800    | donald01@example.net            |
| Corey       | Bennett    | 2000    | victoriabrooks@example.com      |
| Thomas      | Blair      | 2300    | knightcassandra@example.com     |
| Kimberly    | Blake      | 2500    | hmason@example.org              |
| Albert      | Bowen      | 2300    | joneselizabeth@example.net      |
| Erin        | Bowen      | 2000    | hhill@example.net               |
| Adam        | Bray       | 2700    | ruben26@example.com             |
| Gabrielle   | Brennan    | 2400    | sandraschultz@example.org       |
| Robert      | Briggs     | 2900    | ranthony@example.com            |
| Veronica    | Brooks     | 2200    | jeremy90@example.org            |
| Stephanie   | Brown      | 2800    | danielleharris@example.net      |
| Karen       | Brown      | 2700    | joblake@example.com             |
| Nicholas    | Brown      | 2500    | jostark@example.net             |
| Susan       | Browning   | 2200    | ryoung@example.org              |
| Robyn       | Bullock    | 2300    | wardlynn@example.com            |
| Victor      | Burton     | 2700    | josephgutierrez@example.org     |
| Deanna      | Cabrera    | 2800    | bushdarlene@example.com         |
| Deborah     | Cain       | 2200    | blairstephen@example.net        |
| Robert      | Caldwell   | 2200    | rwhite@example.com              |
| Dennis      | Cantrell   | 2100    | obautista@example.com           |
| Cynthia     | Cardenas   | 2700    | haynesvictoria@example.com      |
| Adam        | Carlson    | 2800    | heather03@example.org           |
| William     | Castillo   | 2200    | nhicks@example.net              |
| Gary        | Castro     | 2300    | thomasschroeder@example.com     |
| Lauren      | Chandler   | 2000    | jasontate@example.com           |
| Melissa     | Clark      | 2500    | marygay@example.org             |
| Danielle    | Cole       | 2500    | sharisimon@example.org          |
| Lauren      | Cole       | 2100    | kaylahunt@example.com           |
| Stephanie   | Collins    | 2700    | avilamelissa@example.com        |
| Joshua      | Contreras  | 2600    | jjordan@example.com             |
| Lisa        | Contreras  | 2100    | jensenkathryn@example.org       |
| Lauren      | Cooke      | 2500    | melissadavis@example.org        |
| Kimberly    | Cowan      | 2300    | tiffany66@example.net           |
| Brandon     | Cunningham | 2900    | wwest@example.org               |
| Kaitlyn     | Cunningham | 2900    | cuevasvalerie@example.com       |
| Judy        | Cunningham | 2000    | lisamendez@example.org          |
| Luis        | Davenport  | 2600    | thompsonashley@example.net      |
| Robert      | Davidson   | 2700    | justinlopez@example.com         |
| Nicholas    | Davis      | 2700    | donald39@example.com            |
| Brent       | Davis      | 2600    | amywhite@example.net            |
| Jacqueline  | Day        | 2100    | jennifer79@example.net          |
| Gabrielle   | Decker     | 2000    | nichole35@example.com           |
| Whitney     | Diaz       | 2400    | bettywebster@example.org        |
| Samuel      | Donaldson  | 2600    | melissa36@example.org           |
| Andrew      | Dorsey     | 2300    | dhicks@example.net              |
| Devon       | Douglas    | 2900    | luis07@example.com              |
| Willie      | Duran      | 2900    | bshannon@example.net            |
| George      | Eaton      | 2200    | mburns@example.net              |
| Lori        | Espinoza   | 2100    | martinjasmine@example.com       |
| John        | Farmer     | 2800    | jamiethomas@example.org         |
| Brian       | Fields     | 2700    | janeparsons@example.net         |
| Gavin       | Fisher     | 2100    | wedwards@example.net            |
| William     | Flores     | 2200    | goulderic@example.net           |
| Ashley      | Floyd      | 2500    | jonestammy@example.com          |
| Preston     | Floyd      | 2200    | jameswhite@example.com          |
| Brandon     | Ford       | 2200    | rsmith@example.com              |
| Diana       | Frazier    | 2500    | denisepaul@example.org          |
| Elizabeth   | Frey       | 2300    | fbrown@example.org              |
| Edward      | Frye       | 2900    | michelle81@example.org          |
| Cameron     | Fuller     | 2700    | kathryn64@example.org           |
| Michael     | Garcia     | 2900    | matthewelliott@example.com      |
| Ruth        | Garcia     | 2000    | juan49@example.org              |
| Amy         | Gardner    | 2000    | alexandra18@example.org         |
| Allison     | Garrison   | 2700    | wclayton@example.com            |
| Francisco   | Giles      | 2900    | bwalton@example.net             |
| Rose        | Gill       | 2700    | charles43@example.org           |
| Brooke      | Glover     | 2800    | edavis@example.org              |
| Lauren      | Gomez      | 2700    | christopher93@example.net       |
| Morgan      | Gomez      | 2100    | karenpotter@example.org         |
| Dennis      | Gonzales   | 2600    | graybrandon@example.net         |
| Angela      | Gonzales   | 2400    | dennisgill@example.com          |
| Nicholas    | Gonzalez   | 2700    | joseph57@example.net            |
| Natalie     | Gonzalez   | 2100    | michelechandler@example.com     |
| Duane       | Gonzalez   | 2000    | jamesroach@example.net          |
| Gregory     | Gonzalez   | 2000    | gilessheila@example.org         |
| Jared       | Gordon     | 2100    | dfreeman@example.net            |
| Hayley      | Graham     | 2800    | kathleen78@example.net          |
| Vincent     | Graham     | 2600    | wthomas@example.com             |
| Kristin     | Gray       | 2600    | briannacline@example.net        |
| Julia       | Gray       | 2200    | hgarcia@example.org             |
| Tammie      | Griffin    | 2200    | baileywilliam@example.net       |
| Amy         | Griffin    | 2100    | valerie20@example.com           |
| Jason       | Guzman     | 2300    | phyllis20@example.org           |
| Kimberly    | Hale       | 2400    | timothydaniel@example.org       |
| Frank       | Hall       | 2500    | zreynolds@example.org           |
| Anna        | Hampton    | 2400    | mortonmatthew@example.com       |
| Perry       | Hanson     | 2800    | lindapeterson@example.org       |
| Stephen     | Harrington | 2400    | tiffany82@example.net           |
| Gregg       | Harris     | 2600    | turnerryan@example.org          |
| Toni        | Harris     | 2100    | patricksalinas@example.com      |
| Amanda      | Harrison   | 2200    | benjamin64@example.com          |
| Robert      | Henry      | 2000    | davidheath@example.com          |
| Amy         | Henson     | 2700    | danielmitchell@example.com      |
| Roberto     | Herman     | 2200    | kristinwallace@example.com      |
| Paul        | Hicks      | 2400    | justin76@example.com            |
| Jonathan    | Hill       | 2900    | parkwendy@example.org           |
| Adam        | Holloway   | 2700    | ysellers@example.com            |
| Patrick     | Houston    | 2900    | karen86@example.com             |
| Abigail     | Howard     | 2300    | dspencer@example.com            |
| Jennifer    | Huffman    | 2700    | daniel02@example.org            |
| Alison      | Hughes     | 2900    | srobinson@example.net           |
| Scott       | Hughes     | 2700    | martharusso@example.org         |
| Laura       | Hunt       | 2400    | kpalmer@example.org             |
| Bridget     | Hunter     | 2300    | danielsjoseph@example.org       |
| Deborah     | Jacobs     | 2800    | bowersluke@example.net          |
| Elizabeth   | Jennings   | 2500    | ethan58@example.net             |
| Patrick     | Jensen     | 2900    | newmanrachael@example.org       |
| Natalie     | Jimenez    | 2700    | nbryan@example.net              |
| Tracy       | Johns      | 2500    | gregory11@example.com           |
| William     | Johnson    | 2900    | anne39@example.org              |
| Damon       | Johnson    | 2800    | justin19@example.net            |
| Samantha    | Johnson    | 2800    | denise38@example.com            |
| Andrea      | Johnson    | 2700    | pamellis@example.org            |
| Felicia     | Johnson    | 2600    | erinhall@example.com            |
| Lauren      | Johnson    | 2600    | whitemelanie@example.com        |
| Michael     | Jones      | 2800    | ncampbell@example.net           |
| Catherine   | Jones      | 2700    | michaelgray@example.com         |
| Karen       | Jones      | 2600    | scott57@example.org             |
| Kyle        | Jones      | 2400    | fmartin@example.org             |
| Benjamin    | Jones      | 2200    | jonesmatthew@example.net        |
| Christopher | Jones      | 2000    | xgonzalez@example.net           |
| Todd        | Keller     | 2600    | douglas83@example.com           |
| Nancy       | Kim        | 2700    | james36@example.net             |
| Robert      | Kim        | 2300    | alexis23@example.net            |
| George      | Lambert    | 2100    | sergiobenton@example.org        |
| Larry       | Larson     | 2800    | ehodge@example.org              |
| Anthony     | Larson     | 2100    | cherylhill@example.org          |
| Kelly       | Lawson     | 2800    | susan09@example.net             |
| Stefanie    | Lawson     | 2700    | cmcdonald@example.net           |
| Todd        | Lee        | 2600    | kevin38@example.net             |
| Brandi      | Leonard    | 2500    | ajennings@example.org           |
| Darren      | Lewis      | 2600    | cruiz@example.net               |
| Ashley      | Lewis      | 2300    | hernandezerin@example.org       |
| Susan       | Long       | 2900    | walterwalker@example.com        |
| Stephanie   | Lopez      | 2800    | rogersrachel@example.net        |
| James       | Lowery     | 2500    | anthonygreen@example.org        |
| Ralph       | Lowery     | 2200    | nelsonmichael@example.com       |
| James       | Lozano     | 2200    | anna40@example.com              |
| Joseph      | Lynn       | 2300    | emmacarter@example.org          |
| Mark        | Maldonado  | 2000    | kenneth43@example.net           |
| James       | Marks      | 2700    | taylorwilliam@example.org       |
| Kimberly    | Marquez    | 2400    | zunigamichael@example.org       |
| Michelle    | Martin     | 2000    | tschmitt@example.com            |
| Daniel      | Mason      | 2200    | margaretjennings@example.net    |
| Michelle    | Mata       | 2900    | nguyenjennifer@example.net      |
| Rebecca     | Matthews   | 2800    | hunterkenneth@example.net       |
| Morgan      | Matthews   | 2400    | jacksoncarrie@example.org       |
| Kendra      | May        | 2900    | ayaladillon@example.org         |
| Erica       | Mccall     | 2200    | robinhawkins@example.net        |
| Kenneth     | Mccann     | 2600    | ashleysmith@example.net         |
| Michael     | Mccarty    | 2600    | bethanymcguire@example.net      |
| Terri       | Mccoy      | 2800    | andersonchristopher@example.com |
| Alexis      | Mcdaniel   | 2700    | pwilson@example.org             |
| Nicholas    | Mcintyre   | 2500    | hardymonica@example.com         |
| Nicole      | Mckay      | 2400    | valentinefrancisco@example.com  |
| Jeremy      | Mcknight   | 2100    | nwilliams@example.net           |
| Thomas      | Meadows    | 2200    | agallagher@example.net          |
| John        | Meadows    | 2000    | patrick58@example.com           |
| Alex        | Mills      | 2900    | cindyvasquez@example.net        |
| Janet       | Miranda    | 2500    | anthonywilliams@example.net     |
| Kevin       | Mitchell   | 2700    | laura79@example.org             |
| Vicki       | Mitchell   | 2600    | melissa98@example.org           |
| Kendra      | Molina     | 2700    | denniscrystal@example.com       |
| Kayla       | Moody      | 2100    | kfoster@example.com             |
| Jennifer    | Moore      | 2100    | kelsey76@example.org            |
| John        | Moore      | 2000    | mjones@example.net              |
| Catherine   | Morales    | 2600    | abeck@example.com               |
| Lance       | Morales    | 2100    | aliciacochran@example.org       |
| Melissa     | Moreno     | 2900    | dylan45@example.net             |
| Tammy       | Morgan     | 2300    | james37@example.net             |
| Erica       | Norton     | 2700    | maria96@example.net             |
| Jeffrey     | Ochoa      | 2200    | tiffany82@example.net           |
| Amanda      | Oneal      | 2300    | reynoldsjeanette@example.org    |
| Eric        | Oneill     | 2700    | kirkwilliam@example.com         |
| Erin        | Orozco     | 2300    | michellecraig@example.org       |
| Mary        | Parker     | 2700    | jonathan06@example.net          |
| Richard     | Parsons    | 2800    | ashleychang@example.com         |
| Rebecca     | Paul       | 2900    | autumnhawkins@example.net       |
| Joanna      | Paul       | 2800    | chadmartinez@example.org        |
| Matthew     | Perez      | 2600    | egarcia@example.net             |
| Brett       | Perez      | 2500    | lisa20@example.com              |
| Eric        | Perez      | 2000    | greenekimberly@example.com      |
| Kathleen    | Perkins    | 2800    | jesusgarrison@example.com       |
| Ronald      | Peters     | 2600    | geraldmcdaniel@example.net      |
| Denise      | Peterson   | 2100    | janetchristian@example.com      |
| Bryan       | Phelps     | 2500    | sullivanmichael@example.org     |
| Gregory     | Pierce     | 2300    | mccarthyearl@example.net        |
| Kelsey      | Pope       | 2400    | brucejames@example.com          |
| Susan       | Potter     | 2800    | rstewart@example.com            |
| Tracy       | Powell     | 2200    | ericajohnson@example.org        |
| Andrea      | Powers     | 2700    | sabrina61@example.com           |
| Brooke      | Pratt      | 2300    | ngillespie@example.net          |
| Danielle    | Preston    | 2000    | grahamsusan@example.com         |
| Steven      | Rangel     | 2900    | mackchristopher@example.com     |
| Margaret    | Reeves     | 2300    | hunter12@example.org            |
| Jodi        | Reynolds   | 2900    | kennethwiggins@example.com      |
| Jennifer    | Reynolds   | 2100    | charlescole@example.com         |
| Wendy       | Rios       | 2300    | khoffman@example.org            |
| William     | Roberts    | 2500    | lisadelgado@example.net         |
| Stephanie   | Robertson  | 2100    | erikafletcher@example.org       |
| Jason       | Robinson   | 2700    | jonathan42@example.net          |
| Courtney    | Robinson   | 2700    | scarter@example.com             |
| Kenneth     | Robinson   | 2200    | laura80@example.com             |
| Theresa     | Rodgers    | 2500    | nicole27@example.org            |
| Victoria    | Rodgers    | 2300    | jhoover@example.net             |
| Tara        | Rodgers    | 2000    | gmartinez@example.com           |
| Kimberly    | Rodriguez  | 2400    | michael37@example.net           |
| Laurie      | Rogers     | 2400    | acampbell@example.com           |
| Jerry       | Roman      | 2300    | ann01@example.com               |
| Abigail     | Romero     | 2700    | umcmillan@example.org           |
| Wesley      | Romero     | 2600    | brewermary@example.com          |
| Mary        | Rose       | 2100    | nicholas10@example.com          |
| Eric        | Roth       | 2700    | richardsonmichael@example.com   |
| Anne        | Ruiz       | 2200    | robert32@example.com            |
| Jennifer    | Russell    | 2800    | fletcherstephanie@example.com   |
| Shawn       | Russell    | 2200    | harry47@example.net             |
| Shelby      | Russo      | 2700    | kathryn26@example.net           |
| Tyrone      | Ryan       | 2400    | bpeterson@example.com           |
| Carrie      | Sanchez    | 2300    | lbaxter@example.net             |
| Jesse       | Schmidt    | 2000    | christopher81@example.com       |
| Lauren      | Scott      | 2700    | turnerryan@example.com          |
| Margaret    | Simmons    | 2700    | cummingsjoshua@example.org      |
| Pamela      | Sims       | 2900    | uhunt@example.com               |
| John        | Smith      | 2800    | fjenkins@example.org            |
| Kayla       | Smith      | 2700    | douglas62@example.org           |
| Jennifer    | Smith      | 2600    | mbrown@example.org              |
| Angela      | Smith      | 2500    | rkim@example.com                |
| Douglas     | Smith      | 2100    | kaylagarcia@example.com         |
| Kimberly    | Smith      | 2100    | cameron55@example.net           |
| Jimmy       | Smith      | 2100    | manningstephen@example.net      |
| Bradley     | Smith      | 2000    | ndeleon@example.net             |
| James       | Smith      | 2000    | frenchgerald@example.org        |
| Elizabeth   | Smith      | 2000    | elizabethmartin@example.net     |
| Kimberly    | Solomon    | 2900    | skelly@example.org              |
| Christopher | Spencer    | 2000    | bgraves@example.org             |
| Patrick     | Stephens   | 2200    | rrowland@example.org            |
| Craig       | Stewart    | 2900    | kyle37@example.net              |
| David       | Sullivan   | 2400    | xbanks@example.com              |
| Ryan        | Summers    | 2900    | erin52@example.org              |
| Tina        | Swanson    | 2200    | scott37@example.com             |
| Samantha    | Sweeney    | 2300    | leslie94@example.net            |
| Manuel      | Tate       | 2100    | petersonpaul@example.com        |
| Erin        | Thomas     | 2500    | joanna76@example.com            |
| Margaret    | Thomas     | 2400    | rachel39@example.org            |
| Jonathan    | Thompson   | 2100    | timothy54@example.com           |
| James       | Torres     | 2700    | lambanita@example.net           |
| Elizabeth   | Torres     | 2500    | milesaustin@example.net         |
| Richard     | Tran       | 2300    | william84@example.com           |
| Richard     | Trujillo   | 2700    | lewiswesley@example.net         |
| Kyle        | Tucker     | 2700    | murphyvincent@example.org       |
| Deborah     | Turner     | 2800    | samanthathompson@example.org    |
| Robert      | Turner     | 2200    | laurie02@example.com            |
| Christopher | Valdez     | 2000    | robinsonalexandra@example.com   |
| Aaron       | Valentine  | 2000    | john40@example.org              |
| Peggy       | Vasquez    | 2700    | brettalexander@example.com      |
| Michelle    | Villanueva | 2800    | leah92@example.org              |
| Paula       | Walker     | 2300    | deleonsamuel@example.com        |
| Stephanie   | Walsh      | 2500    | john90@example.com              |
| Andrea      | Walton     | 2900    | shale@example.com               |
| Trevor      | Watson     | 2700    | jasonrobinson@example.net       |
| Leslie      | Watson     | 2200    | angela29@example.net            |
| Jon         | Weaver     | 2600    | allencaldwell@example.org       |
| Arthur      | Webster    | 2300    | james93@example.com             |
| Kenneth     | Wells      | 2200    | bbradley@example.com            |
| Paul        | White      | 2300    | ricestephen@example.net         |
| Alicia      | White      | 2000    | mathisdustin@example.com        |
| Kurt        | Whitney    | 2200    | tnelson@example.org             |
| Melissa     | Williams   | 2700    | jhall@example.org               |
| Amanda      | Williams   | 2400    | cjones@example.org              |
| Philip      | Williams   | 2200    | danielle39@example.com          |
| Megan       | Williams   | 2100    | ymoore@example.org              |
| Ronald      | Willis     | 2300    | qhernandez@example.org          |
| Daniel      | Wilson     | 2700    | judith42@example.net            |
| Kimberly    | Wilson     | 2300    | alvarezdiana@example.net        |
| Elizabeth   | Wilson     | 2000    | lewistravis@example.com         |
| Steve       | Wolf       | 2100    | joshuasolomon@example.net       |
| Darren      | Wolfe      | 2300    | phillipsmichael@example.net     |
| Timothy     | Wong       | 2200    | meredithbrown@example.com       |
| Claire      | Wong       | 2100    | bcook@example.net               |
| Debra       | Wood       | 2900    | rachel75@example.net            |
| Isaac       | Wood       | 2700    | travisgray@example.com          |
| Patrick     | Wood       | 2100    | fschultz@example.org            |
| Katelyn     | Woods      | 2900    | leonardsheila@example.org       |
| Michael     | Woods      | 2000    | john51@example.net              |
| Michael     | Young      | 2700    | tateeric@example.com            |
+-------------+------------+---------+---------------------------------+
*/