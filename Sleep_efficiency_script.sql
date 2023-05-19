USE sleep_data
;

-- First look at the first 10 rows
SELECT *
FROM sleep_efficiency
LIMIT 10
;

-- Let's look at how many people we have in our study and their average age

SELECT COUNT(*) AS Num_of_people, AVG(Age) AS Average_Age
FROM sleep_efficiency
;

-- Next, let's analyse sleep efficiency by smoking habits

SELECT Smoking_status, AVG(Sleep_efficiency) AS Avg_sleep_efficiency, AVG(REM_sleep_percentage) AS Avg_REM, 
	AVG(Deep_sleep_percentage) AS Avg_Deep, AVG(Light_sleep_percentage) AS Avg_Light, AVG(Awakenings) AS Avg_Awakenings, 
    COUNT(*) AS Num_of_people
FROM sleep_efficiency
GROUP BY Smoking_status
;

-- Now the same as before but for caffeine consumption

SELECT Caffeine_consumption, AVG(Sleep_efficiency) AS Avg_sleep_efficiency, AVG(REM_sleep_percentage) AS Avg_REM, 
	AVG(Deep_sleep_percentage) AS Avg_Deep, AVG(Light_sleep_percentage) AS Avg_Light, AVG(Awakenings) AS Avg_Awakenings, 
    COUNT(*) AS Num_of_people
FROM sleep_efficiency
GROUP BY Caffeine_consumption
ORDER BY Caffeine_consumption
;

-- Now analyse sleep efficiency by alchohol consumption

SELECT Alcohol_consumption, AVG(Sleep_efficiency) AS Avg_sleep_efficiency, AVG(REM_sleep_percentage) AS Avg_REM, 
	AVG(Deep_sleep_percentage) AS Avg_Deep, AVG(Light_sleep_percentage) AS Avg_Light, AVG(Awakenings) AS Avg_Awakenings, 
    COUNT(*) AS Num_of_people
FROM sleep_efficiency
GROUP BY Alcohol_consumption
ORDER BY Alcohol_consumption
;

-- Let's count how many people drank more than 3oz before bedtime

SELECT COUNT(*) AS Num_of_people
FROM sleep_efficiency
WHERE Alcohol_consumption > 3
;

-- Next, Let's take a look at sleep efficiency and exercise frequency

SELECT Exercise_frequency, AVG(Sleep_efficiency) AS Avg_sleep_efficiency, AVG(REM_sleep_percentage) AS Avg_REM, 
	AVG(Deep_sleep_percentage) AS Avg_Deep, AVG(Light_sleep_percentage) AS Avg_Light, AVG(Awakenings) AS Avg_Awakenings, 
    COUNT(*) AS Num_of_people
FROM sleep_efficiency
GROUP BY Exercise_frequency
ORDER BY Exercise_frequency
;

-- Let's take a look at the gender difference in sleep patterns

SELECT Gender, AVG(Sleep_efficiency) AS Avg_sleep_efficiency, AVG(REM_sleep_percentage) AS Avg_REM, 
	AVG(Deep_sleep_percentage) AS Avg_Deep, AVG(Light_sleep_percentage) AS Avg_Light, AVG(Awakenings) AS Avg_Awakenings, 
    COUNT(*) AS Num_of_people
FROM sleep_efficiency
GROUP BY Gender
ORDER BY Gender
;

-- Let's also take a look at the max and min age

SELECT MAX(Age) AS Max_Age, MIN(Age) AS Min_Age
FROM sleep_efficiency
;

-- Now let's analyse the same metrics based on age but for every 10 years 

SELECT FLOOR(age / 10) * 10 AS age_by_decade, AVG(Sleep_efficiency) AS Avg_sleep_efficiency, AVG(REM_sleep_percentage) AS Avg_REM, 
	AVG(Deep_sleep_percentage) AS Avg_Deep, AVG(Light_sleep_percentage) AS Avg_Light, AVG(Awakenings) AS Avg_Awakenings, 
    COUNT(*) AS Num_of_people
FROM sleep_efficiency
GROUP BY age_by_decade
ORDER BY age_by_decade
;


-- Analyze effectiveness of sleep based on sleep duration

SELECT Sleep_duration, AVG(Sleep_efficiency) AS Avg_sleep_efficiency, AVG(REM_sleep_percentage) AS Avg_REM, 
	AVG(Deep_sleep_percentage) AS Avg_Deep, AVG(Light_sleep_percentage) AS Avg_Light, AVG(Awakenings) AS Avg_Awakenings, 
    COUNT(*) AS Num_of_people
FROM sleep_efficiency
GROUP BY Sleep_duration
ORDER BY Sleep_duration
;
