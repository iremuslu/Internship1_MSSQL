BULK INSERT grades
FROM 'C:\Users\Mary\Desktop\InternShip-I Application\data\grades.csv'

WITH

(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)