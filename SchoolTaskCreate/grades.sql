USE SchoolTask

CREATE TABLE grades(

cps_unit smallint,
[from] char(4),
upto char(4),
grade_type char(1)

CONSTRAINT PK_grades_schools PRIMARY KEY(cps_unit, [from])
constraint FK_grades_schools foreign key (cps_unit) references schools(cps_unit)

);