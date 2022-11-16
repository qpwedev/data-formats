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
CREATE (km:Student {name: "Karel Matej Čech-Chod", bithDay: date("1860-02-21")})
CREATE (jd:Student {name: "John Domiešavač", bithDay: date("1992-04-17")})
CREATE (av:Student {name: "Alena Výbušná", bithDay: date("1986-04-26")})
CREATE (pk:Student {name: "Petr Kopecký", bithDay: date("1969-04-20")})
CREATE (dl:Student {name: "Dia Líšková", bithDay: date("2000-05-27")})
CREATE (ju:Student {name: "Josef Uřídil", bithDay: date("1985-11-19")})

//Teachers
CREATE (jm:Teacher {name: "Mgr. Jaroslav Mira Ph.D.", birthday: date("1968-08-21")})
CREATE (ms:Teacher {name: "Mgr. Marie Škaropová Ph.D.", birthday: date("1957-09-10")})
CREATE (jh:Teacher {name: "doc. Ing. Jiří Hrivnák Ph.D.", birthday: date("1968-08-20")})
CREATE (js:Teacher {name: "PhDr. Mgr. Jana Štikarová Ph.D.", birthday: date("1989-01-9")})

//Courses
CREATE (ahe110018:Course {name: "Historický vývoj Evropy v komparativní perspektivě", code: "AHE110018", website: "https://is.cuni.cz/studium/predmety/index.php?id=ea629e3e972f695ebb7e4383e410feda&tid=&do=predmet&kod=AHE110018"})
CREATE (abo600601:Course {name: "Starší česká literatura - přednáška", code: "ABO60060", website: "https://is.cuni.cz/studium/predmety/index.php?id=ea629e3e972f695ebb7e4383e410feda&tid=&do=predmet&kod=ABO600601"})
CREATE (elma02:Course {name: "Elektřina a magnetismus", code: "02ELMA", website: "https://bilakniha.cvut.cz/cs/predmet11279205.html#gsc.tab=0"})
CREATE (dplg15:Course {name: "Dopravní psychologie", code: "15DPLG", website: "https://www.fd.cvut.cz/studenti/predmet-detail.html?kod=615DPLG"})


//ASSOCIATIONS
//Uni -> faculty
CREATE 
(cuni)-[:HAS_FACULTY]->(ff),
(cvut)-[:HAS_FACULTY]->(fd),
(cvut)-[:HAS_FACULTY]->(fjfi),
(vut)-[:HAS_FACULTY]->(fit)

//Course - Faculty
CREATE
(ahe110018)-[:TAUGHT_AT]->(ff),
(abo600601)-[:TAUGHT_AT]->(ff),
(elma02)-[:TAUGHT_AT]->(fjfi),
(dplg15)-[:TAUGHT_AT]->(fd)

//Student - Faculty
CREATE
(km)-[:STUDIES_AT]->(ff),
(jd)-[:STUDIES_AT]->(fd),
(av)-[:STUDIES_AT]->(fjfi),
(pk)-[:STUDIES_AT]->(ff),
(dl)-[:STUDIES_AT]->(ff),
(ju)-[:STUDIES_AT]->(fd)

//Student - Course
CREATE
(km)-[:STUDIES]->(ahe110018),
(km)-[:STUDIES]->(abo600601),
(jd)-[:STUDIES]->(dplg15),
(av)-[:STUDIES]->(elma02),
(pk)-[:STUDIES]->(abo600601),
(dl)-[:STUDIES]->(ahe110018),
(ju)-[:STUDIES]->(dplg15),
(ju)-[:STUDIES]->(ahe110018)

//Teacher - Course
CREATE
(jm)-[:TEACHES]->(ahe110018),
(ms)-[:TEACHES]->(abo600601),
(jh)-[:TEACHES]->(elma02),
(js)-[:TEACHES]->(dplg15)

//Teacher - Faculty
CREATE
(jm)-[:TEACHES_AT]->(ff),
(ms)-[:TEACHES_AT]->(ff),
(jh)-[:TEACHES_AT]->(fjfi),
(js)-[:TEACHES_AT]->(fd)
