//Dvojice studentů, kteří studují stejný předmět
match (s1:Student)-[:STUDIES]->()<-[:STUDIES]-(s2:Student) return s1.name, s2.name