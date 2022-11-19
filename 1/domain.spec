Specifikace

1 University
Tato třída reprezentuje univerzitu. Každá univerzita má jméno, ovšem může mít i více jmen pro více jazyků. Stejně tak má každá univerzita svoji webovou stránku, ovšem stránek může mít více. Součástí každé Univerzity jsou nějaké fakulty. Každé fakultě náleží právě jedna univerzita.

1.1 Atributy
- 1.1.1 name
    - Typ: text
    - Kardinalita: [1..*]
    - Příklad: Univerzita Karlova
-  1.1.2 website url
    - Typ: URL
    - Kardinalita: [1..*]
    - Příklad: https://cuni.cz/UK-1.html

1.2 Vazby
- 1.2.1 part of
    - Popis: Vazba popisuje, které fakulty jsou součástí univerzity
    - Na: Faculty
    - Kardinalita: [0..*]


2 Faculty
Tato třída reprezentuje fakultu nějaké univerzity. Fakulta má své jméno, případně může mít více jmen pro jiné jazyky. Má alespoň jednu webovou adresu. Každá fakulta přísluší právě jedné univerzitě. Na fakultě studuje libovolné množství studentů a pracuje libovolné množství učitelů. Na fakultě může být přednášeno libovolné množství předmětů.

2.1 Atributy
- 2.1.1 name
    - Typ: text
    - Kardinalita: [1..*]
    - Příklad: Matematicko-fyzikální fakulta
-  2.1.2 website url
    - Typ: URL
    - Kardinalita: [1..*]
    - Příklad: https://www.mff.cuni.cz/

2.2 Vazby
- 2.2.1 is taught at
    - Popis: Vazba popisuje, které předměty jsou na fakultě vyučovány.
    - Na: Course
    - Kardinalita [0..*]
- 2.2.2 studies at
    - Popis: Vazba popisuje, kteří studenti na fakultě studují
    - Na: Student
    - Kardinalita: [0..*]
- 2.2.3 works yet
    - Popis: Vazba popisuje, kteří učitelé na fakultě pracují
    - Na: Teacher
    - Kardinalita: [0..*]


3 Course
Tato třída reprezentuje vyučovaný předmět. Předmět má nějaké jméno, případně více pro různé jazyky, a má daný kód. U předmětu může být uvedeno libovolné množství webových odkazů např. na stránku předmětu, vyučujícího, podklady, atd. Daný předmět je vyučován na právě jedné fakultě a vyučuje ho alespoň jeden učitel. Předmět může studovat libovolné množství studentů.

3.1 Atributy
- 3.1.1 name
    - Typ: text
    - Kardinalita: [0..*]
    - Příklad: Datové formáty
- 3.1.2 code
    - Typ: text
    - Kardinalita: [1..1]
    - Příklad: NPRG036
- 3.1.3 website url
    - Typ: URL
    - Kardinalita: [0..*]

3.2 Vazby
- 3.2.1 is taught at
    - Popis: Vazba popisuje, na které fakultě je předmět vyučován.
    - Na: Faculty
    - Kardinalita [1..1]
- 3.2.2 studies
    - Popis: Vazba popisuje, kteří studenti daný předmět studují
    - Na: Student
    - Kardinalita [0..*]
- 3.2.3 teaches
    - Popis: Vazba popisuje, kým je předmět vyučován
    - Na: Teacher
    - Kardinalita [1..*]


4 Person
Tato třída reprezentuje osobu. Pro osobu si pamatujeme jméno a datum narození. Od třídy Person dědí třídy Student a Teacher.

4.1 Atributy
- 4.1.1 name
    - Popis: Celé jméno osoby
    - Typ: text
    - Kardinalita: [1..1]
    - Příklad: Karel Matěj Čapek-Chod
- 4.1.2 date of birth
    - Typ: datum
    - Kardinalita: [1..1]

4.2 Dědící třídy

4.2.1 Student
Tato třida reprezentuje studenta. Student studuje alespoň na jedné fakultě. Zároveň studuje libovolné množství předmětů.

4.2.1.1 Vazby
- 4.2.1.1.1 studies at
    - Popis: Vazba popisuje, na kterých fakultách student studuje
    - Na: Faculty
    - Kardinalita [1..*]
- 4.2.1.1.2 studies
    - Popis: Vazba popisuje, které předměty student studuje
    - Na: Course
    - Kardinalita: [0..*]


4.2.2 Teacher
Třída reprezentuje učitele. Učitel pracuje alespoň na jedné fakultě a učí některé předměty.

4.2.2.1 Vazby
- 4.2.2.1.1 works at
    - Popis: Vazba popisuje, na kterých fakultách učitel pracuje
    - Na: Faculty
    - Kardinalita: [1..*]
- 4.2.2.1.2 teaches
    - Popis: Vazba popisuje, které předměty učitel učí.
    - Na: Course
    - Kardinalita: [0..*]