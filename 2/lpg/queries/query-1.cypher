//Dvojice studentů, kteří studují stejný předmět
MATCH (s1:Student)-[:STUDIES]->()<-[:STUDIES]-(s2:Student) RETURN s1.name, s2.name