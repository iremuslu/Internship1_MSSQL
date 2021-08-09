BULK INSERT community
FROM 'C:\Users\Mary\Desktop\InternShip-I Application\data\community.csv'

WITH

(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)