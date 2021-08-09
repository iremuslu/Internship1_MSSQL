
--use SchoolTask

--QUESTION 1- Show the schools full name which exist in “Bronzeville” Geographic Area ?

SELECT full_name as 'Schools in Bronzeville' FROM schools 
WHERE cps_unit in (SELECT cps_unit 
FROM address ad
JOIN geographic_area ga 
ON ad.geographic_area_id=ga.geographic_area_id
WHERE ga.geographic_area_name= 'Bronzeville')

--QUESTION 2- Show the ES  schools in “Logan square” community area ?

SELECT full_name as 'ES in Logan Square' FROM schools 
JOIN school_category sc
ON schools.school_category_id = sc.id
AND sc.name = 'ES' AND cps_unit IN (SELECT cps_unit
FROM address ad 
JOIN community cmt 
ON cmt.community_area_id=ad.community_area_id
WHERE community_area_name = 'Logan square');

--QUESTION 3- Show the HS schools which has a  contract  type?

SELECT full_name as 'Contract Type in HS'
FROM schools sch 
INNER JOIN school_category sc
ON sch.school_category_id=sc.id
INNER JOIN school_type st
ON sch.school_type_id=st.id
WHERE sc.name = 'HS' and st.school_type_name='Contract'

--QUESTION 4- Show the schools which have PK-8th attending grades and Early_Childhood_Program in 2 US Congressional District? 

SELECT*FROM program_types INNER JOIN school_program_types ON program_types.id=school_program_types.program_types_id
INNER JOIN schools ON school_program_types.cps_unit=schools.cps_unit  
INNER JOIN address ON schools.cps_unit=address.cps_unit
INNER JOIN grades ON address.cps_unit=grades.cps_unit where [from]='PK' AND upto='8th' AND us_congressional_district='2' AND name='Early_Childhood_Program'

--QUESTION 5- Show the community area that has the most schools in it?

SELECT        TOP 1 community_area_name, COUNT(c.community_area_id) as schoolCountPerCommunity
FROM        community c
LEFT JOIN    address a ON a.community_area_id = c.community_area_id
LEFT JOIN    schools s ON s.cps_unit = a.cps_unit
GROUP BY    c.community_area_id, community_area_name
ORDER BY    schoolCountPerCommunity DESC

--QUESTION 6- Show the community area that has the least schools in it?

SELECT        TOP 1 community_area_name, COUNT(c.community_area_id) as schoolCountPerCommunity
FROM        community c
LEFT JOIN    address a ON a.community_area_id = c.community_area_id
LEFT JOIN    schools s ON s.cps_unit = a.cps_unit
GROUP BY    c.community_area_id, community_area_name
ORDER BY    schoolCountPerCommunity ASC

--QUESTION 7- Show the average number of schools according to the geographic area?

SELECT CAST((SELECT COUNT(full_name) FROM schools) as float) / CAST((SELECT COUNT(georaphic_area_name) FROM geographic_area) as float) as AvgSchoolsPerGeoArea

--QUESTION 8- Show all the ES schools community area west town located in ward 1?

SELECT full_name as 'Schools' FROM schools s
INNER JOIN school_category sc ON s.school_category_id=sc.id
INNER JOIN address a ON s.cps_unit=a.cps_unit
INNER JOIN community c ON c.community_area_id=a.community_area_id
WHERE a.ward=1 
AND c.community_area_name='West Town' 
AND sc.name='ES'

--QUESTION 9- Which school has the most programs?

SELECT TOP 1 full_name,COUNT(s.cps_unit) as 'Schools' FROM schools s
LEFT JOIN school_program_types spt ON spt.cps_unit=s.cps_unit
LEFT JOIN program_types pt ON pt.id=spt.program_types_id
GROUP BY s.full_name,s.cps_unit
ORDER BY 'Schools' DESC

--QUESTION 10- What is the popular program in schools?

SELECT TOP 1 name AS 'Program Names', count(spt.program_types_id) AS Schools
FROM program_types pt
INNER JOIN school_program_types spt ON spt.program_types_id = pt.id
INNER JOIN schools s ON s.cps_unit = spt.cps_unit
GROUP BY pt.id, pt.name
ORDER BY schools DESC

