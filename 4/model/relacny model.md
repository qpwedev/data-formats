# Model

- Person(**URI**, Name cs, Name sk, Name en, Has birth date)

- Student(**URI**)
URI je z Person.URI

- Teacher(**URI**)
URI je z Person.URI

- University(**URI**)

- Faculty(**URI**, University URI)
  - university_URI je z University.URI

- Course(**URI**, Course code, Faculty URI)
  - faculty_URI je z faculty.URI

- StudiesAt(**Faculty URI, Student URI**)
  - faculty_URI je z Faculty.URI
  - student_URI je z Student.URI

- TeachesAt(**Faculty URI, Teacher URI**)
  - faculty_URI je z Faculty.URI
  - teacher_URI je z Teacher.URI

- Studies(**Course URI, Student URI**)
  - course_URI je z Course.URI
  - student_URI je z Student.URI

- Teaches(**Course URI, Teacher URI**)
  - course_URI je z Course.URI
  - teacher_URI je z Teacher.URI

- UniversityName_cs(**University URI, University name**)
  - university_URI je z University.URI

- UniversityName_en(**University URI, University name**)
  - university_URI je z University.URI

- UniversityWbsite(**University URI, University website**)
  - university_URI je z University.URI

- FacultyName_cs(**Faculty URI, Faculty name**)
  - faculty_URI je z Faculty.URI

- FacultyName_en(**Faculty URI, Faculty name**)
  - faculty_URI je z Faculty.URI

- FacultyWbsite(**Faculty URI, Faculty website**)
  - faculty_URI je z Faculty.URI

- CourseName_cs(**Curse URI, Course name**)
  - course_URI je z Course.URI

- CourseName_en(**Course URI, Course name**)
  - course_URI je z Course.URI

- CourseWbsite(**Course URI, Course website**)
  - course_URI je z Course.URI