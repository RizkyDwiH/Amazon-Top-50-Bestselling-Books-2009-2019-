

-- Cleaning and EDA


-- Selected Columns to Use

SELECT * 
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]


-- Identify and Remove Duplicate Values

SELECT*,
COUNT(*) AS duplicatecount
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
GROUP BY Name, Author, User_Rating, Reviews, Price, Year, Genre
HAVING COUNT(*) >1;


-- Identify and Remove Null Values

SELECT * 
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
WHERE  Name IS NULL 
OR Author IS NULL
OR User_Rating IS NULL
OR Reviews IS NULL
OR Price IS NULL
OR Year IS NULL
OR Genre IS NULL;


-- Check for invalid user ratings (should be between 0 and 5)

SELECT * 
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
WHERE User_Rating < 0 OR User_Rating > 5;


-- Check for negative values in Price or Reviews

SELECT * 
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
WHERE Price < 0 OR Reviews < 0;


-- -- Check distinct Genre values

SELECT DISTINCT Genre 
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories];


-- Check Year Distribution

SELECT Year, COUNT(*) AS Book_Count
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
GROUP BY Year
ORDER BY Year;




-- EDA


-- Top Authors

SELECT Author, COUNT(*) AS Total_Books
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
GROUP BY Author
ORDER BY Total_Books DESC;


-- Distribution of Genres

SELECT Genre, COUNT(*) AS Genre_Count
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
GROUP BY Genre;


-- Trend of Book Sales by Year

SELECT Year, COUNT(*) AS Books_Per_Year
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
GROUP BY Year
ORDER BY Year;


-- Average Rating by Genre or Year

-- By Genre
SELECT Genre, AVG(User_Rating) AS Avg_Rating
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
GROUP BY Genre;


-- By Year
SELECT Year, AVG(User_Rating) AS Avg_Rating
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
GROUP BY Year
ORDER BY YEAR;


-- Price Analysis

SELECT Year, AVG(Price) AS Avg_Price
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
GROUP BY Year
ORDER BY YEAR;


-- Most Reviewed Books

SELECT Name, Reviews
FROM [Amazon Top 50 Bestselling Books 2009].[dbo].[bestsellers with categories]
ORDER BY Reviews DESC;





