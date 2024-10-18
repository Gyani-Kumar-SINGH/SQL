# SQL
 Tracking book inventories, member information, and loans.  Business Rules

 
 Domain Definition: The domain defines the context of the library system,
 including the data being managed (Books, Members, Loans, Authors) and the rules governing their relationships.

Tasks:

Identifying Entities: Core entities include Books, Members, Loans, and Authors,
 representing key objects in the library system.

Defining Relationships: For example, a Book can be loaned to multiple Members, and an Author can write multiple books.

Schema Normalization: The schema is normalized to organize data into well-structured tables, reducing redundancy and ensuring consistency.

Optimizing Performance: Normalization enhances both data integrity and query efficiency.

Final Output:
The output is a relational schema that effectively supports library functions like tracking book inventories, member information, and loans.

Business Rules:
A book can be loaned to only one member at a time.
Members are limited to borrowing a certain number of books simultaneously
