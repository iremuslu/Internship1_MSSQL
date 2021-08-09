BULK INSERT governance
FROM 'C:\Users\Mary\Desktop\InternShip-I Application\data\governance.csv'

WITH

(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)