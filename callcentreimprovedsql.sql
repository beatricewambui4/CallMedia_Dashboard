CREATE DATABASE callcentreprojectimproved;
USE callcentreprojectimproved;
CREATE TABLE callcentreimprovedtable
(
Unique_Id INT, 
Call_Date DATE,
Call_Time TIME,
Date_Time DATETIME,
Agency VARCHAR(50),
Agency_Name VARCHAR(100),
Inquiry_Name VARCHAR(500),
Call_Resolution VARCHAR(100)
);

#Calls done per day
SELECT
COUNT(*) AS Total_Calls,
DAYNAME(Call_Date) AS Day_Name
FROM callcentretable
group by Day_Name
ORDER BY Total_Calls DESC;

#calls done per month 
SELECT
MONTHNAME(Call_Date) AS Month_Name,
COUNT(*) AS Total_Calls,
MONTH(Call_Date) AS Month_Num
FROM callcentretable
group by Month_Num,Month_Name
ORDER BY Total_Calls DESC;

SELECT 
    MONTH(Call_Date) AS Month_Num,
    MONTHNAME(Call_Date) AS Month_Name,
    MAX(DAY(Call_Date)) AS Maximum_Day_of_month,
    MIN(DAY(Call_Date)) AS Minimum_Day_of_month
FROM callcentretable
GROUP BY MONTH(Call_Date), MONTHNAME(Call_Date)
ORDER BY Month_Num;



