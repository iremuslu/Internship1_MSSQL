BULK INSERT charter_type
FROM 'C:\Users\Mary\Desktop\InternShip-I Application\data\charter_type.csv'

WITH

(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n'
)