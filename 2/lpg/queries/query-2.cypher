// Student, který studuje předmět z jiné fakulty, jejíž není studentem.
MATCH (s:Student)-[:STUDIES]->(c:Course)-[:TAUGHT_AT]->(f) 
WHERE NOT (s)-[:STUDIES_AT]->(f) 
RETURN s.name, c.name, c.code