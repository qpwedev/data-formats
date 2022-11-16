//Unis
CREATE (cuni:University {name: "Univerzita Karlova", website: "https://www.cuni.cz"})
CREATE (cvut:University {name: "České vysoké učení technické v Praze", website: "https://www.cvut.cz"})
CREATE (vut:University {name: "Vysoké učení technické v Brně", website:"https://www.vut.cz"})

//Faculty

CREATE (fjfi:Faculty {name: "Fakulta jaderná a fyzikálně inženýrská", website: "https://www.fjfi.cvut.cz/cz/"})
CREATE (fd:Faculty {name: "Fakulta dopravní", website: "https://www.fd.cvut.cz/cz/"})
CREATE (ff:Faculty {name: "Filozofická fakulta", website: "https://www.ff.cuni.cz/"})
CREATE (fit:Faculty {name: "Filozofická fakulta", website: "https://www.ff.cuni.cz/"})




//Students
CREATE (km:Student {name: "Karel Matej Čech-Chod", bithDay: date("2000-02-21")})
CREATE (jd:Student {name: "John Domiešavač", bithDay: date("1992-04-17")})
CREATE (av:Student {name: "Alena Výbušná", bithDay: date("2001-04-26")})
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


//ASSOCIATIONS

//Student - Faculty

