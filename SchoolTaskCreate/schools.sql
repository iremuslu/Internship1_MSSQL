USE SchoolTask

CREATE TABLE schools(

cps_unit smallint primary key,
school_id int,
school_name nvarchar(80),
full_name nvarchar(80),
ISBE_name nvarchar(60),
ISBE_id nvarchar(50),
oracle_id int,
class bit,
school_category_id tinyint,
governance_id tinyint,
charter_type_id tinyint,
school_type_id tinyint,

constraint FK_schools_school_category foreign key (school_category_id) references school_category(id),
constraint FK_schools_school_type foreign key (school_type_id) references school_type(id),
constraint FK_schools_governance foreign key (governance_id) references governance(id),
constraint FK_schools_NCES foreign key (cps_unit) references NCES(cps_unit),
constraint FK_address_schools foreign key (cps_unit) references address(cps_unit),
constraint FK_schools_charter_type foreign key (charter_type_id) references charter_type(id),
--constraint FK_grades_schools foreign key (cps_unit) references grades(cps_unit),
--constraint FK_school_program_types_schools foreign key (cps_unit) references school_program_types(cps_unit)

);