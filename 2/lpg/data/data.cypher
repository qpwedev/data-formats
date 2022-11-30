//Unis
CREATE (cuni:University {name: "Univerzita Karlova", website: "https://www.cuni.cz"})
CREATE (cvut:University {name: "České vysoké učení technické v Praze", website: "https://www.cvut.cz"})
CREATE (vut:University {name: "Vysoké učení technické v Brně", website:"https://www.vut.cz"})

//Faculty
CREATE (fjfi:Faculty {name: "Fakulta jaderná a fyzikálně inženýrská", website: "https://www.fjfi.cvut.cz/cz/"})
CREATE (fd:Faculty {name: "Fakulta dopravní", website: "https://www.fd.cvut.cz/cz/"})
CREATE (ff:Faculty {name: "Filozofická fakulta", website: "https://www.ff.cuni.cz/"})
CREATE (fit:Faculty {name: "Fakulta informačních technologií", website: "https://www.fit.vut.cz/.cs/"})

//Students

CREATE (km:Student {name: "Karel Matej Čech-Chod", birthday: date("1860-02-21")})
CREATE (jd:Student {name: "John Domiešavač", birthday: date("1992-04-17")})
CREATE (av:Student {name: "Alena Výbušná", birthday: date("1986-04-26")})
CREATE (pk:Student {name: "Petr Kopecký", birthday: date("1969-04-20")})
CREATE (dl:Student {name: "Dia Líšková", birthday: date("2000-05-27")})
CREATE (ju:Student {name: "Josef Uřídil", birthday: date("1985-11-19")})
CREATE (os:Student {name: "Olke Rene Syba", birthday: date("1899-09-19")})

//Teachers
CREATE (jm:Teacher {name: "Mgr. Jaroslav Mira Ph.D.", birthday: date("1968-08-21")})
CREATE (ms:Teacher {name: "Mgr. Marie Škaropová Ph.D.", birthday: date("1957-09-10")})
CREATE (jh:Teacher {name: "doc. Ing. Jiří Hrivnák Ph.D.", birthday: date("1968-08-20")})
CREATE (js:Teacher {name: "PhDr. Mgr. Jana Štikarová Ph.D.", birthday: date("1989-01-09")})

//Courses
CREATE (ahe110018:Course {name: "Historický vývoj Evropy v komparativní perspektivě", code: "AHE110018", website: "https://is.cuni.cz/studium/predmety/index.php?id=ea629e3e972f695ebb7e4383e410feda&tid=&do=predmet&kod=AHE110018"})
CREATE (abo600601:Course {name: "Starší česká literatura - přednáška", code: "ABO60060", website: "https://is.cuni.cz/studium/predmety/index.php?id=ea629e3e972f695ebb7e4383e410feda&tid=&do=predmet&kod=ABO600601"})
CREATE (elma02:Course {name: "Elektřina a magnetismus", code: "02ELMA", website: "https://bilakniha.cvut.cz/cs/predmet11279205.html#gsc.tab=0"})
CREATE (dplg15:Course {name: "Dopravní psychologie", code: "15DPLG", website: "https://www.fd.cvut.cz/studenti/predmet-detail.html?kod=615DPLG"})


//ASSOCIATIONS
//Uni -> faculty
CREATE 
(cuni)-[:HAS_FACULTY {since: date("1348-04-07")}]->(ff),
(cvut)-[:HAS_FACULTY {since: date("1952-09-01")}]->(fd),
(cvut)-[:HAS_FACULTY {since: date("1955-08-25")}]->(fjfi),
(vut)-[:HAS_FACULTY {since: date("2002-01-01")}]->(fit)

//Course - Faculty
CREATE
(ahe110018)-[:TAUGHT_AT {since: date("2008-08-14")}]->(ff),
(abo600601)-[:TAUGHT_AT {since: date("1984-06-19")}]->(ff),
(elma02)-[:TAUGHT_AT {since: date("1955-08-26")}]->(fjfi),
(dplg15)-[:TAUGHT_AT {since: date("1968-09-11")}]->(fd)

//Student - Faculty
CREATE
(km)-[:STUDIES_AT {since: date("1879-09-28")}]->(ff),
(jd)-[:STUDIES_AT {since: date("2011-10-01")}]->(fd),
(av)-[:STUDIES_AT {since: date("2006-09-01")}]->(fjfi),
(pk)-[:STUDIES_AT {since: date("1988-09-28")}]->(ff),
(dl)-[:STUDIES_AT {since: date("2020-09-28")}]->(ff),
(ju)-[:STUDIES_AT {since: date("2004-10-01")}]->(fd),
(os)-[:STUDIES_AT {since: date("1900-09-11")}]->(fit)

//Student - Course
CREATE
(km)-[:STUDIES {since: date("1879-09-28")}]->(ahe110018),
(km)-[:STUDIES {since: date("1880-09-28")}]->(abo600601),
(jd)-[:STUDIES {since: date("2012-10-01")}]->(dplg15),
(av)-[:STUDIES {since: date("2007-09-01")}]->(elma02),
(pk)-[:STUDIES {since: date("1988-09-28")}]->(abo600601),
(dl)-[:STUDIES {since: date("2022-09-28")}]->(ahe110018),
(ju)-[:STUDIES {since: date("2005-10-01")}]->(dplg15),
(ju)-[:STUDIES {since: date("2006-09-28")}]->(ahe110018)

//Teacher - Course
CREATE
(jm)-[:TEACHES {since: date("2008-08-14")}]->(ahe110018),
(ms)-[:TEACHES {since: date("1984-06-19")}]->(abo600601),
(jh)-[:TEACHES {since: date("1955-08-26")}]->(elma02),
(js)-[:TEACHES {since: date("1968-09-11")}]->(dplg15)

//Teacher - Faculty
CREATE
(jm)-[:TEACHES_AT {since: date("2002-08-09")}]->(ff),
(ms)-[:TEACHES_AT {since: date("1978-09-23")}]->(ff),
(jh)-[:TEACHES_AT {since: date("1950-08-24")}]->(fjfi),
(js)-[:TEACHES_AT {since: date("1962-09-15")}]->(fd)
