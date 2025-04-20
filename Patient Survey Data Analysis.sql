# Patient Survey Data Analysis 

#Identify the number of unique hospital facilities 
SELECT COUNT(DISTINCT Facility_ID)
FROM hs_population;
# Returned 4008 rows

#Show all the unique hospital facilities 
SELECT 
DISTINCT Facility_ID
FROM hs_population;

#Selecting new hospital_analysis table
SELECT *
FROM hospital_analysis;

#Average rating and recommendation score with standard deviation by Hospital
SELECT 
    Facility_Name,
    ROUND(AVG(Overall_Rating), 2) AS avg_overall_rating,
    ROUND(STDDEV(Overall_Rating), 2) AS std_overall_rating,
    ROUND(AVG(Recommendation_Score), 2) AS avg_recommendation_score,
    ROUND(STDDEV(Recommendation_Score), 2) AS std_recommendation_score
FROM hospital_analysis
GROUP BY Facility_Name
ORDER BY avg_overall_rating DESC;

#Average and Standard Deviation by Zip Code
SELECT 
    State,
    ROUND(AVG(Overall_Rating), 2) AS avg_overall_rating,
    ROUND(STDDEV(Overall_Rating), 2) AS std_overall_rating,
    ROUND(AVG(Recommendation_Score), 2) AS avg_recommendation_score,
    ROUND(STDDEV(Recommendation_Score), 2) AS std_recommendation_score
FROM hospital_analysis
GROUP BY State
ORDER BY avg_overall_rating DESC;

#Average rating and recommendation score with standard deviation by County/Parish
SELECT 
    County_Parish,
    ROUND(AVG(Overall_Rating), 2) AS avg_overall_rating,
    ROUND(STDDEV(Overall_Rating), 2) AS std_overall_rating,
    ROUND(AVG(Recommendation_Score), 2) AS avg_recommendation_score,
    ROUND(STDDEV(Recommendation_Score), 2) AS std_recommendation_score
FROM hospital_analysis
GROUP BY County_Parish
ORDER BY avg_overall_rating DESC;

#Average rating and recommendation score with standard deviation by State
SELECT 
    State,
    ROUND(AVG(Overall_Rating), 2) AS avg_overall_rating,
    ROUND(STDDEV(Overall_Rating), 2) AS std_overall_rating,
    ROUND(AVG(Recommendation_Score), 2) AS avg_recommendation_score,
    ROUND(STDDEV(Recommendation_Score), 2) AS std_recommendation_score
FROM hospital_analysis
GROUP BY State
ORDER BY avg_overall_rating DESC;

#Average Average rating and recommendation score by population groups based on 2023 Urban-Rural Classification Scheme
SELECT
  CASE
    WHEN County_Population < 250000 THEN 'Small'
    WHEN County_Population >= 250000 AND County_Population < 1000000 THEN 'Medium'
    ELSE 'Large'
  END AS Population_Group,
  AVG(Overall_Rating) AS Avg_Rating,
  AVG(Recommendation_Score) AS Avg_Recommendation
FROM hospital_analysis
GROUP BY Population_Group;





 

