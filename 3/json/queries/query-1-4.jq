List all students that studies at CTU on FNSPE

{"students": .universities[] | select(.universityName.en[] == "Czech Technical University in Prague").hasFaculty[] | select(.facultyName.en[] == "Faculty of Nuclear Sciences and Physical Engineering").isVisitedBy }