USE SchoolTask

CREATE TABLE school_program_types(

cps_unit smallint,
program_types_id tinyint,
primary key(cps_unit , program_types_id),

constraint FK_school_program_types_program_types foreign key (program_types_id) references program_types(id),
constraint FK_school_program_types_schools foreign key (cps_unit) references schools(cps_unit)
);