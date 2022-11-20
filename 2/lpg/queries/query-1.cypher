//Dvojice studentů, kteří studují stejný předmět, a jméno daného předmětu
MATCH (s1:Student)-[:STUDIES]->(c:Course)<-[:STUDIES]-(s2:Student) RETURN s1.name, s2.name, c.name