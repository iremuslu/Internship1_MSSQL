BULK INSERT school_type
FROM  'C:\Users\Mary\Desktop\InternShip-I Application\data\school_type.csv'

WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)