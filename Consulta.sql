SELECT * FROM Products 
WHERE fatpercentage < (SELECT AVG(fatpercentage) FROM Products)
ORDER BY fatpercentage