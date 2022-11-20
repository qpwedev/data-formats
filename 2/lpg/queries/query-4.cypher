// Ke každé univerzitě zjistí počet vyučovaných předmětů přes všechny fakulty
MATCH (u:University)
OPTIONAL MATCH (u)-[:HAS_FACULTY]->()<-[:TAUGHT_AT]-(c:Course) 
RETURN u.name, COUNT(c) AS courseCount