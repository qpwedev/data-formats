# Data Formats

#### TODO:

- _Fix the previous homework based on the tutor's notes. The XSLT transformation and JSON-LD mapping in this homework should target the fixed HW2 version (see below)._ ✅
- For representation of your data in hierarchical data formats, you will first need to create one or more hierarchical diagrams corresponding to the conceptual one, showing how your data will be structured into hierarchies. Each hierarchical diagram will use directed associations, showing the nesting relation, and will have a root class with no incoming associations. It might be necessary to split the data into multiple hierarchies to avoid some redundancies.

- For each hierarchical model create a corresponding XML Schema, enforcing proper datatypes.
- Represent the data in XML files valid against the created XML Schemas. Utilize the xml:lang attribute to denote the natural language of text values (HINT)
- Create a set of non-trivial XPath queries to query the XML data. ✅
- Create a non-trivial XSLT transformation producing HTML representation of a reasonable subset of your data.
- Create XSLT transformations producing RDF Turtle representation of your data. This is called a "lifting transformation" - lifting the data to a semantically more precise representation. The resulting RDF data representation should be identical to the one from Homework 2. Validate the resulting file.
- For each hierarchical model create a corresponding JSON Schema, enforcing proper datatypes.
- Represent the data in JSON files valid against the created JSON Schemas.
- Create a JSON-LD context mapping the JSON representations to RDF. The resulting RDF data representation should be identical to the one from Homework 2. This might require changing or amending the JSON representation and the JSON Schemas. Use the JSON-LD playground to view the RDF N-Quads representation. Use the Apache Jena riot command-line tool transform the result into RDF Turtle.
- Create a set of non-trivial jq queries to query the JSON data.

#### Tools

- [How to create SPARQL endpoint and test queries on it?](https://nivedithakarmegam.wordpress.com/2019/03/07/how-to-create-and-query-a-sparql-endpoint/) 
