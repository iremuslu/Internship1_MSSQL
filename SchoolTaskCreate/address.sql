USE SchoolTask

CREATE TABLE address(

cps_unit smallint primary key,
street_number smallint,
street_direction char(1),
street_name nvarchar(50),
city nvarchar(50),
state nvarchar(50),
zip int,
ward tinyint,
community_area_id tinyint,
geographic_area_id tinyint,
il_senat_district tinyint,
il_rep_district tinyint,
us_cpngressional_district tinyint,
cook_county_district tinyint,
census_block bigint,
latitude float,
attitude float,

constraint FK_address_community foreign key (community_area_id) references community(community_area_id),
constraint FK_addres_geographic_area foreign key (geographic_area_id) references geographic_area(geographic_area_id)

);