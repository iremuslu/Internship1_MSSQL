BULK INSERT schools
FROM 'C:\Users\Mary\Desktop\InternShip-I Application\data\schools.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)