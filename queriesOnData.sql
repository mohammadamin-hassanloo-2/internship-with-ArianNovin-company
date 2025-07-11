# CREATE DATABASE sales_db
-- USE sales_db
-- SELECT *
-- FROM sales_table
-- SELECT *
-- FROM sales_table
-- LIMIT 50

-- SELECT Year,AVG(A) AS 'Average Sales of Team A in 1370',AVG(B) AS 'Avrage Sales of Team B in 1370',AVG(C) AS 'Avrage Sales of Team C in 1370'
-- FROM sales_table
-- WHERE Year = 1370;

-- SELECT  Year,SUM(A) AS 'Total sales of Team A in 1400'
-- FROM sales_table
-- WHERE Year = 1400;

-- SELECT MIN(B) AS 'Minimum sale for Team B in a month (1375-1380)'
-- FROM sales_table
-- WHERE YEAR IN (1375,1376,1377,1378,1379,1380);

-- SELECT Year,SUM(A) AS 'Total Sales for Team A in a Year'
-- FROM sales_table
-- GROUP BY Year;

-- SELECT Month, SUM(C) AS 'Total sales of Team C in Bahar Season'
-- FROM sales_table
-- WHERE Month IN (1,2,3)
-- GROUP BY Month

-- SELECT *
-- FROM sales_table
-- WHERE A > 40 AND B > 40 AND C > 40
-- ORDER BY Year ASC;

-- SELECT Year,Month,A -- top five sales of Team A !
-- FROM sales_table
-- ORDER BY A DESC
-- LIMIT 5

-- SELECT Year,Month,C -- showing the sales of Team C where sales are more than average!
-- FROM sales_table
-- WHERE C > (SELECT AVG(C) FROM sales_table)

-- SELECT *
-- FROM sales_table;

-- SELECT Year,SUM(A) AS 'Total sales foor Team A each year'
-- FROM sales_table
-- WHERE A > (SELECT AVG(A) FROM sales_table)
-- GROUP BY Year;

-- SELECT Year,SUM(A+B+C) AS 'Total Sales'
-- FROM sales_table
-- GROUP BY Year
-- ORDER BY Year;

-- SELECT Year,SUM(A) AS 'Total Sales of A',SUM(B) AS 'Total Sales of B',SUM(C) AS 'Total Sales of C'
-- FROM sales_table
-- GROUP BY year
-- ORDER BY Year;

-- SELECT Year,
-- CASE 				
-- WHEN SUM(A) > GREATEST(SUM(B),SUM(C)) THEN 'A'
-- WHEN SUM(B) > GREATEST(SUM(B),SUM(A)) THEN 'B' #top team of each year
-- ELSE 'C'
-- END AS 'Top Team'
-- FROM sales_table
-- GROUP BY Year

-- SELECT Year,
--        ROUND(SUM(A) * 100.0 / SUM(A + B + C), 2) AS a_percent,
--        ROUND(SUM(B) * 100.0 / SUM(A + B + C), 2) AS b_percent, #each year the percentage of sharing market and bussines amoung 3 teams
--        ROUND(SUM(C) * 100.0 / SUM(A + B + C), 2) AS c_percent
-- FROM sales_table
-- GROUP BY Year;
