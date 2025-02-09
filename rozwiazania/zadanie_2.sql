/*
Zadanie 2: Selekcja krotek [14 pkt]
Wykonaj poniższe polecenia:
--------------------------------------
a) z relacji Students wybierz imiona, nazwiska, czesne oraz adresy e-mail studentów o nazwisku
Gonzalez;
*/
SELECT FirstName, LastName, Tuition, Email
FROM Students
WHERE LastName = "Gonzales"
/* RESULTS:
+-----------+----------+---------+-------------------------+
| FirstName | LastName | Tuition | Email                   |
+-----------+----------+---------+-------------------------+
| Angela    | Gonzales | 2400    | dennisgill@example.com  |
| Dennis    | Gonzales | 2600    | graybrandon@example.net |
+-----------+----------+---------+-------------------------+
*/

/*
--------------------------------------
b) z relacji Professors wybierz imiona, nazwiska i datę urodzenia wszystkich nauczycieli, urodzonych
w latach 1975–1979;
*/
SELECT 
    FirstName,
    LastName,
    DateOfBirth
FROM Professors
WHERE strftime('%Y', DateOfBirth) BETWEEN '1975' AND '1979'
/* RESULTS:
+-----------+------------+-------------+
| FirstName | LastName   | DateOfBirth |
+-----------+------------+-------------+
| Jennifer  | Davis      | 1976-12-14  |
| Frederick | Richardson | 1978-10-15  |
| Cynthia   | Carter     | 1975-06-19  |
| Cynthia   | Suarez     | 1978-07-01  |
| Kara      | Kim        | 1979-09-04  |
| Austin    | Jackson    | 1979-08-29  |
| Paul      | Patel      | 1975-12-28  |
+-----------+------------+-------------+
*/

/*
--------------------------------------
c) z relacji Students wybierz imiona, nazwiska oraz datę urodzenia wszystkich studentów urodzonych
w latach 1995–1998 i 2000–2003;
*/
SELECT 
    FirstName,
    LastName,
    DateOfBirth
FROM Students
WHERE (strftime('%Y', DateOfBirth) BETWEEN '1995' AND '1998'
    OR strftime('%Y', DateOfBirth) BETWEEN '2000' AND '2003')
/* RESULTS:
+-------------+------------+-------------+
| FirstName   | LastName   | DateOfBirth |
+-------------+------------+-------------+
| Brooke      | Glover     | 1998-05-05  |
| Michael     | Young      | 2002-02-05  |
| Megan       | Williams   | 2001-03-21  |
| Danielle    | Cole       | 1998-07-17  |
| Philip      | Williams   | 2001-12-22  |
| Anna        | Hampton    | 1998-11-15  |
| Nicole      | Mckay      | 2002-05-30  |
| Thomas      | Ballard    | 2003-04-20  |
| Jeremy      | Mcknight   | 1997-09-13  |
| Amanda      | Oneal      | 2000-09-07  |
| Joseph      | Barker     | 1998-04-30  |
| Nicholas    | Brown      | 1997-12-12  |
| Angela      | Gonzales   | 1997-06-20  |
| Adam        | Bray       | 2003-01-21  |
| Kayla       | Smith      | 2000-08-21  |
| Roberto     | Herman     | 1997-08-18  |
| Michelle    | Mata       | 1997-10-31  |
| John        | Farmer     | 2003-04-21  |
| Shelby      | Russo      | 1998-07-25  |
| Wendy       | Rios       | 2001-09-16  |
| Francisco   | Giles      | 1998-05-16  |
| Scott       | Hughes     | 1998-09-26  |
| Catherine   | Morales    | 2003-05-23  |
| Vicki       | Mitchell   | 2000-10-04  |
| Erin        | Orozco     | 2001-05-10  |
| Kevin       | Mitchell   | 2000-01-22  |
| Denise      | Peterson   | 2000-10-01  |
| Leslie      | Watson     | 2001-04-26  |
| Bradley     | Smith      | 2000-04-28  |
| Kenneth     | Wells      | 1998-05-11  |
| Dennis      | Cantrell   | 2003-10-08  |
| Melissa     | Clark      | 1998-03-19  |
| Daniel      | Wilson     | 1997-11-27  |
| Janet       | Miranda    | 2003-09-24  |
| Gregg       | Harris     | 2001-02-23  |
| Kristin     | Gray       | 2000-07-17  |
| Amy         | Henson     | 2000-11-25  |
| Michael     | Garcia     | 2000-02-20  |
| Damon       | Johnson    | 1998-11-12  |
| Stephanie   | Robertson  | 2000-01-22  |
| Aaron       | Valentine  | 2000-03-21  |
| Alicia      | White      | 2001-11-05  |
| Christopher | Jones      | 2001-10-27  |
| Gregory     | Allen      | 2003-04-19  |
| Amy         | Gardner    | 2001-09-07  |
| Devon       | Douglas    | 2000-11-24  |
| Angela      | Smith      | 2000-06-18  |
| Abigail     | Romero     | 2001-02-25  |
| Rose        | Gill       | 1997-07-23  |
| Robert      | Turner     | 2000-05-23  |
| James       | Torres     | 2000-08-25  |
| Patrick     | Wood       | 1997-08-09  |
| Lauren      | Scott      | 1997-11-07  |
| Brent       | Davis      | 1998-08-12  |
| John        | Smith      | 2002-04-06  |
| Richard     | Parsons    | 2003-06-02  |
| Lori        | Anderson   | 2000-04-08  |
| Laurie      | Rogers     | 2000-01-24  |
| Larry       | Larson     | 1997-08-25  |
| William     | Castillo   | 2003-08-09  |
| Robert      | Davidson   | 2003-05-21  |
| Richard     | Tran       | 2000-11-07  |
| Stefanie    | Lawson     | 2001-03-21  |
| Jodi        | Reynolds   | 2003-09-07  |
| Kenneth     | Mccann     | 1998-11-26  |
| Jerry       | Roman      | 1998-09-01  |
| Wesley      | Romero     | 2003-03-13  |
| Tina        | Swanson    | 1997-12-27  |
| Stephanie   | Brown      | 1998-12-24  |
| Susan       | Long       | 2003-03-29  |
| Todd        | Keller     | 1998-05-09  |
| Lauren      | Chandler   | 2002-12-17  |
| Deborah     | Jacobs     | 2001-05-14  |
| Kaitlyn     | Cunningham | 2002-03-17  |
| Melissa     | Moreno     | 2000-06-04  |
| David       | Sullivan   | 2002-11-25  |
| Kimberly    | Cowan      | 2001-01-21  |
| Felicia     | Johnson    | 2002-06-30  |
| Deanna      | Cabrera    | 2000-04-29  |
| Adam        | Holloway   | 2001-12-02  |
| Susan       | Browning   | 1998-11-23  |
| Robert      | Henry      | 2001-07-27  |
| Kendra      | Molina     | 2000-09-06  |
| James       | Marks      | 2002-12-01  |
| Alex        | Mills      | 2000-05-26  |
| Brett       | Perez      | 1998-11-06  |
| Erica       | Norton     | 2003-10-23  |
| Todd        | Lee        | 2003-02-24  |
| Gabrielle   | Brennan    | 2002-07-25  |
| Kathleen    | Perkins    | 2001-04-12  |
| Kimberly    | Rodriguez  | 2003-07-21  |
| Christine   | Ayala      | 2001-12-08  |
| Natalie     | Gonzalez   | 2002-07-10  |
| John        | Moore      | 2001-12-11  |
| Paula       | Walker     | 1997-09-09  |
| Lauren      | Cole       | 2001-07-16  |
| Craig       | Stewart    | 2000-06-04  |
| Brandi      | Leonard    | 2002-03-13  |
| Whitney     | Diaz       | 2001-09-24  |
| Joseph      | Lynn       | 2003-10-14  |
| Gabrielle   | Decker     | 2002-11-08  |
| Michael     | Woods      | 1998-09-25  |
| Mary        | Rose       | 2003-10-13  |
| Anne        | Ruiz       | 2002-01-24  |
| Mary        | Parker     | 2003-01-28  |
| Ryan        | Summers    | 1997-08-27  |
| James       | Smith      | 1998-12-15  |
| Thomas      | Blair      | 2001-12-31  |
| Albert      | Bowen      | 1998-06-06  |
| Victoria    | Rodgers    | 2001-05-09  |
| William     | Roberts    | 2001-03-24  |
| Hayley      | Graham     | 1997-08-18  |
| Carrie      | Sanchez    | 1998-08-30  |
| Christopher | Valdez     | 2001-03-11  |
| Jonathan    | Hill       | 2003-09-16  |
| Richard     | Trujillo   | 1997-08-27  |
| Stephanie   | Lopez      | 2000-10-22  |
| Jennifer    | Reynolds   | 2001-04-09  |
| Andrea      | Walton     | 1997-06-28  |
| Eric        | Perez      | 2002-10-05  |
| Allison     | Garrison   | 2003-11-10  |
| Paul        | White      | 1998-02-16  |
| Jennifer    | Moore      | 1998-05-30  |
| Natalie     | Jimenez    | 1998-05-21  |
| Darren      | Lewis      | 2002-05-08  |
| Corey       | Bennett    | 2001-02-04  |
| Elizabeth   | Frey       | 2000-05-13  |
| Manuel      | Tate       | 1998-07-11  |
| Juan        | Barnes     | 2000-12-23  |
| James       | Lozano     | 2001-07-04  |
| Erin        | Bowen      | 2003-09-14  |
| Phillip     | Anderson   | 2002-02-14  |
| Erin        | Thomas     | 2003-09-20  |
| Daniel      | Mason      | 2003-08-19  |
| Tammy       | Morgan     | 2002-11-28  |
| Margaret    | Reeves     | 2000-11-14  |
| Gavin       | Fisher     | 1997-11-26  |
| Darren      | Wolfe      | 2002-10-09  |
| Karen       | Brown      | 2002-09-01  |
| Robert      | Caldwell   | 1997-12-25  |
| Ashley      | Lewis      | 1998-03-21  |
| Margaret    | Simmons    | 2001-05-22  |
| Douglas     | Smith      | 2001-10-31  |
| Alexis      | Mcdaniel   | 2003-06-01  |
| Kimberly    | Marquez    | 2003-02-13  |
| Deborah     | Cain       | 2003-02-18  |
| Ronald      | Willis     | 2000-05-02  |
| Perry       | Hanson     | 2000-12-24  |
| Kyle        | Jones      | 2000-07-20  |
| Nicholas    | Mcintyre   | 2000-02-04  |
| Stephen     | Harrington | 1998-02-09  |
| Kendra      | May        | 2001-09-26  |
| Timothy     | Wong       | 1997-09-08  |
| Victor      | Burton     | 2001-11-27  |
| Stephanie   | Walsh      | 2003-03-20  |
| Cameron     | Fuller     | 2001-02-21  |
| Allison     | Beck       | 1997-09-27  |
| Susan       | Potter     | 2003-03-11  |
| Kimberly    | Smith      | 2003-04-15  |
| Nicholas    | Baker      | 1998-04-24  |
| Shawn       | Russell    | 1997-07-11  |
| Courtney    | Robinson   | 2003-11-10  |
| Tracy       | Powell     | 2003-11-29  |
| Regina      | Atkins     | 1998-02-10  |
| Jennifer    | Smith      | 2000-10-16  |
| Michelle    | Villanueva | 1998-02-28  |
| Lance       | Morales    | 2002-01-01  |
| Mark        | Maldonado  | 2002-07-14  |
| Andrea      | Johnson    | 2002-09-18  |
| Jimmy       | Smith      | 2001-03-16  |
| Jared       | Gordon     | 2000-04-23  |
| George      | Lambert    | 2000-05-09  |
| Ronald      | Alexander  | 1998-08-14  |
| Dennis      | Gonzales   | 2003-12-06  |
| Andrea      | Powers     | 2003-11-07  |
| Luis        | Davenport  | 2000-11-29  |
| Jacqueline  | Day        | 2002-01-17  |
| Trevor      | Watson     | 2001-12-14  |
| Samantha    | Johnson    | 1997-10-22  |
| Brandon     | Ford       | 2001-04-11  |
| Laura       | Hunt       | 2001-02-11  |
| Claire      | Wong       | 2003-03-26  |
| Morgan      | Gomez      | 1998-04-15  |
| Eric        | Oneill     | 2002-01-01  |
| Isaac       | Wood       | 2000-01-25  |
| Elizabeth   | Smith      | 1998-04-11  |
| Jason       | Guzman     | 1997-08-08  |
| Arthur      | Webster    | 2003-07-16  |
| Pamela      | Sims       | 1998-01-03  |
| Stephanie   | Collins    | 1998-06-09  |
| Veronica    | Brooks     | 1998-11-23  |
| Lauren      | Johnson    | 2000-01-26  |
| Lauren      | Cooke      | 2001-03-30  |
| Elizabeth   | Torres     | 2002-12-31  |
| Judy        | Cunningham | 2000-09-27  |
| Kurt        | Whitney    | 1998-07-15  |
| Ralph       | Lowery     | 2003-11-04  |
| Rebecca     | Matthews   | 1997-12-01  |
| Nancy       | Kim        | 2003-06-08  |
| Ashley      | Floyd      | 2002-01-21  |
+-------------+------------+-------------+
*/

/*
--------------------------------------
d) z relacji Students wybierz studentów (podając ich numer identyfikacyjny, imię, nazwisko oraz adres
e-mail), których imiona zaczynają się na literę „A”;
*/
SELECT 
    StudentId,
    FirstName,
    LastName,
    Email
FROM Students
WHERE FirstName LIKE 'A%';
/* RESULTS:
+-----------+-----------+-----------+------------------------------+
| StudentId | FirstName | LastName  | Email                        |
+-----------+-----------+-----------+------------------------------+
| 9         | Anna      | Hampton   | mortonmatthew@example.com    |
| 14        | Amanda    | Oneal     | reynoldsjeanette@example.org |
| 18        | Angela    | Gonzales  | dennisgill@example.com       |
| 20        | Alison    | Hughes    | srobinson@example.net        |
| 21        | Amy       | Griffin   | valerie20@example.com        |
| 23        | Adam      | Bray      | ruben26@example.com          |
| 63        | Amy       | Henson    | danielmitchell@example.com   |
| 67        | Aaron     | Valentine | john40@example.org           |
| 70        | Alicia    | White     | mathisdustin@example.com     |
| 73        | Amy       | Gardner   | alexandra18@example.org      |
| 75        | Angela    | Smith     | rkim@example.com             |
| 76        | Abigail   | Romero    | umcmillan@example.org        |
| 85        | Abigail   | Howard    | dspencer@example.com         |
| 119       | Adam      | Holloway  | ysellers@example.com         |
| 124       | Amanda    | Harrison  | benjamin64@example.com       |
| 129       | Alex      | Mills     | cindyvasquez@example.net     |
| 140       | Anthony   | Larson    | cherylhill@example.org       |
| 154       | Anne      | Ruiz      | robert32@example.com         |
| 160       | Albert    | Bowen     | joneselizabeth@example.net   |
| 180       | Andrea    | Walton    | shale@example.com            |
| 183       | Allison   | Garrison  | wclayton@example.com         |
| 210       | Ashley    | Lewis     | hernandezerin@example.org    |
| 214       | Alexis    | Mcdaniel  | pwilson@example.org          |
| 234       | Allison   | Beck      | donald01@example.net         |
| 240       | Andrew    | Dorsey    | dhicks@example.net           |
| 251       | Andrea    | Johnson   | pamellis@example.org         |
| 260       | Amanda    | Williams  | cjones@example.org           |
| 264       | Andrea    | Powers    | sabrina61@example.com        |
| 282       | Adam      | Carlson   | heather03@example.org        |
| 284       | Arthur    | Webster   | james93@example.com          |
| 300       | Ashley    | Floyd     | jonestammy@example.com       |
+-----------+-----------+-----------+------------------------------+
*/

/*
--------------------------------------
e) z relacji Professors wybierz dane nauczycieli (podając ich imię, nazwisko, datę urodzenia oraz
adres e-mail), którzy w swoim imieniu lub nazwisku mają literę „y”;
*/
SELECT 
    FirstName,
    LastName,
    DateOfBirth,
    Email
FROM Professors
WHERE FirstName LIKE '%y%' 
    OR LastName LIKE '%y%';
/* RESULTS:
+-----------+----------+-------------+----------------------------+
| FirstName | LastName | DateOfBirth | Email                      |
+-----------+----------+-------------+----------------------------+
| Randy     | Woodward | 1989-10-25  | paul55@example.net         |
| Lisa      | Carey    | 1991-04-09  | morrisonashley@example.org |
| Jay       | Leblanc  | 1986-10-10  | dbaker@example.net         |
| Jeremy    | Olson    | 1974-08-07  | jeremymartin@example.org   |
| Cynthia   | Carter   | 1975-06-19  | yeseniawalker@example.org  |
| Cynthia   | Suarez   | 1978-07-01  | amymiles@example.net       |
| Cheryl    | Barr     | 1970-02-13  | brendandowns@example.net   |
| Stephen   | Clay     | 1963-11-23  | vthompson@example.net      |
+-----------+----------+-------------+----------------------------+
*/

/*
--------------------------------------
f) z relacji Students wybierz imiona i nazwiska studentów, którzy w swoim nazwisku jako trzecią literę
mają „m”;
*/
SELECT 
    FirstName,
    LastName
FROM Students
WHERE LOWER(SUBSTR(LastName, 3, 1)) = 'm';
/* RESULTS:
+-----------+----------+
| FirstName | LastName |
+-----------+----------+
| Anna      | Hampton  |
| Lauren    | Gomez    |
| Abigail   | Romero   |
| Jerry     | Roman    |
| Wesley    | Romero   |
| Ryan      | Summers  |
| Natalie   | Jimenez  |
| Margaret  | Simmons  |
| George    | Lambert  |
| Robert    | Kim      |
| Morgan    | Gomez    |
| Pamela    | Sims     |
| Nancy     | Kim      |
+-----------+----------+
*/

/*
--------------------------------------
g) z relacji Enrollments wybierz te zapisy na kursy (podając identyfikator zapisu oraz identyfikator
studenta), dla których brak wystawionej oceny (pole Grade ma wartość pustą).
*/
SELECT 
    EnrollmentId,
    StudentId
FROM Enrollments
WHERE Grade IS NULL;
/* RESULTS:
+--------------+-----------+
| EnrollmentId | StudentId |
+--------------+-----------+
| 131          | 44        |
| 133          | 45        |
| 136          | 46        |
| 152          | 51        |
| 215          | 72        |
| 358          | 120       |
| 580          | 194       |
| 653          | 218       |
| 702          | 234       |
| 733          | 245       |
| 775          | 259       |
| 805          | 269       |
| 847          | 283       |
+--------------+-----------+
*/