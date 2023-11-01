SELECT * FROM Products 
WHERE fatpercentage < (SELECT AVG(fatpercentage) FROM Products)
ORDER BY fatpercentage

SELECT city, COUNT(*) AS c
FROM Customers
GROUP BY city
ORDER BY c ASC