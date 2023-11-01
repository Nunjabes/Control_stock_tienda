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