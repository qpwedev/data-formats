Select all teachers that taught some course which are younger that have birth date greater than1957-09-10

{"data":[(.universities[].hasFaculty[].offers[].isTaughtBy[]  | select ( .hasBirthDate > "1957-09-10")).name.cs[]]}