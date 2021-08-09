BULK INSERT school_category
FROM 'C:\Users\Mary\Desktop\InternShip-I Application\data\school_category.csv'

WITH

(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)