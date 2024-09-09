select Name from country where continent = 'South America';

select Population from country where Name = 'Germany';

SELECT Name from city where CountryCode = 'JPN';

SELECT Name FROM country
Where Continent = 'Africa'
ORDER BY population 
DESC LIMIT 3;

SELECT Name, LifeExpectancy FROM country Where Population > 1000000 and Population <5000000;

SELECT Name
From country
join countrylanguage on country.Code = countrylanguage.CountryCode
where Language = 'French' and IsOfficial = 'T'

SELECT Title FROM `Album` where ArtistId = 1;

SELECT FirstName, LastName, Email FROM `Customer`
where Country = 'Brazil';

SELECT Name FROM Playlist;

SELECT COUNT(*) as Total_rock_tracks
from Track
where GenreId = 1;

SELECT FirstName, LastName FROM `Employee` WHERE ReportsTo = 2;

SELECT Count(i.CustomerId)/Count(DISTINCT c.CustomerId) as sales_per_customer
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId;




CREATE TABLE Cheese (
    CheeseNumber INT PRIMARY KEY AUTO_INCREMENT,
    Type VARCHAR(100) NOT NULL,
    Origin VARCHAR(100),
    MakerID INT
    Price DECIMAL(10, 2),
    StockQuantity INT,
);

CREATE TABLE Makers (
    MakerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(250) NOT NULL,
    Country VARCHAR(100)
    FOREIGN KEY (MakerID) REFERENCES Cheese(MakerID));
    
CREATE TABLE Sales (
 SaleID INT PRIMARY KEY AUTO_INCREMENT, 
CheeseNumber INT, 
SaleDate DATE, 
QuantitySold INT, 
FOREIGN KEY (CheeseNumber) REFERENCES Cheese(CheeseNumber) );


INSERT INTO Cheese (Type, Origin, MakerID, Price, StockQuantity) 
VALUES ('Cheddar', 'United States', 1, 12.99, 50), ('Cheddar', 'Canada', 2, 15.50, 30), ('Swiss', 'Switzerland', 3, 20.00, 40), ('Gubben', 'Ireland', 4, 17.75, 25), ('Cotija', 'Mexico', 5, 14.25, 60);

INSERT INTO Makers (Name, Country) 
VALUES 
('Just Cheesin', 'United States'), ('Big Cheesin', 'Canada'), ('Swiss Family', 'Switzerland'), ('White Gold', 'Ireland'), ('Que, so it’s cheese', 'Mexico');

INSERT INTO Sales (CheeseNumber, SaleDate, QuantitySold) 
VALUES 
(1, '2024-08-01', 2), (2, '2024-08-02', 1), (3, '2024-08-03', 1), (4, '2024-08-04', 2), (5, '2024-08-05', 3);
3.
Select Type from Cheese;
SELECT Count( DISTINCT Country) FROM Makers;
SELECT SUM(QuantitySold) FROM Sales;

