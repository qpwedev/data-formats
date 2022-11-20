//vyber vsetky fakulty na ktorych niesu vyucovane ziadne kurzy
MATCH (f:Faculty)
WHERE NOT (f)<-[:TAUGHT_AT]-()
RETURN f.name