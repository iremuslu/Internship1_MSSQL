BULK INSERT geographic_area
FROM 'C:\Users\Mary\Desktop\InternShip-I Application\data\geographic_area.csv'

WITH

(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)