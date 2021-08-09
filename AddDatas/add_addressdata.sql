BULK INSERT address

FROM 'C:\Users\Mary\Desktop\InternShip-I Application\data\address.csv'
WITH

(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)