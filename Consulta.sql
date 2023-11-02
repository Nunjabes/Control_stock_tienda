SELECT * FROM Products 
WHERE fatpercentage < (SELECT AVG(fatpercentage) FROM Products)
ORDER BY fatpercentage

SELECT city, COUNT(*) AS c
FROM Customers
GROUP BY city
ORDER BY c ASC

SELECT city, COUNT(*) AS c
FROM Customers
GROUP BY city
HAVING COUNT(*) > 1
ORDER BY c DESC

SELECT department, AVG(salary) AS average
FROM staff
GROUP BY department
ORDER BY average DESC;

CREATE TABLE Customers (
  id INT,
  firstname VARCHAR(128),
lastname VARCHAR(128),
  salary INT,
  city VARCHAR(128)
);

CREATE TABLE Customers (
id INT,
firstname VARCHAR(128) NOT NULL,
lastname VARCHAR(128),
salary INT DEFAULT 0,
city VARCHAR(128)
); 

INSERT INTO Customers VALUES
(1, 'John', 'Smith', 'New York', 5000);

SELECT * FROM Customers;

INSERT INTO Customers (id, firstname, lastname, city, salary)
VALUES 
(1, 'John', 'Smith', 'New York', 5000),
(2, 'David', 'Williams', 'Los Angeles', 4200), 
(3, 'Chloe', 'Anderson', 'Chicago', 6500);

SELECT * FROM Customers;


-- Creating a Table  
 
-- You need to make a leaderboard for a video game. 
 
-- It should have the following columns: 
- number (INT) 
- nickname (VARCHAR(20)) 
- rating (INT) 
 
-- The given query creates the table. Write a query to insert the following top 3 players: 
1, Predator, 9500 
2, JohnWar, 9300 
3, NightWarrior, 8900 
 
-- Finally, show the resulting table sorted by the rating from the largest to the lowest.

-- Create the leaderboard table
CREATE TABLE leaderboard (
    number INT,
    nickname VARCHAR(20),
    rating INT
);

-- Insert the top 3 players
INSERT INTO leaderboard (number, nickname, rating)
VALUES
    (1, 'Predator', 9500),
    (2, 'JohnWar', 9300),
    (3, 'NightWarrior', 8900);

-- Display the resulting table sorted by rating in descending order
SELECT * FROM leaderboard
ORDER BY rating DESC;