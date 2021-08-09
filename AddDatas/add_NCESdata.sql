BULK INSERT NCES
FROM 'C:\Users\Mary\Desktop\InternShip-I Application\data\NCES.csv'
WITH

(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'    --Use to shift the control to next row

)