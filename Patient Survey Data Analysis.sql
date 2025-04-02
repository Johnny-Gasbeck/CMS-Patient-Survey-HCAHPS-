# Patient Survey Data Analysis 

SELECT * 
FROM hs_population;


SELECT COUNT(DISTINCT Facility_ID)
FROM hs_population;
# 4008
SELECT 
DISTINCT Facility_ID
FROM hs_population;

# Extract overall hospital ratings and recommendation scores by joining various performance measures
# to allow analysis of which factors correlate with higher hospital ratings. 
SELECT 
    o.Facility_ID,  
    o.City_Town,
    o.State,
    o.ZIP_Code,
    o.County_Parish,
    o.County_Population,
    o.HCAHPS_Linear_Mean_Value AS Overall_Rating,  
    r.HCAHPS_Linear_Mean_Value AS Recommendation_Score,  
    n.HCAHPS_Linear_Mean_Value AS Nurse_Communication,  
    d.HCAHPS_Linear_Mean_Value AS Doctor_Communication,  
    s.HCAHPS_Linear_Mean_Value AS Staff_Responsiveness,  
    m.HCAHPS_Linear_Mean_Value AS Medicine_Communication,
	di.HCAHPS_Linear_Mean_Value AS Discharge_Information,
    ct.HCAHPS_Linear_Mean_Value AS Care_Transition, 
    c.HCAHPS_Linear_Mean_Value AS Cleanliness,  
    q.HCAHPS_Linear_Mean_Value AS Quietness  
FROM hs_population o
LEFT JOIN hs_population r ON o.Facility_ID = r.Facility_ID AND r.HCAHPS_Measure_ID = 'H_RECMND_LINEAR_SCORE'  
LEFT JOIN hs_population n ON o.Facility_ID = n.Facility_ID AND n.HCAHPS_Measure_ID = 'H_COMP_1_LINEAR_SCORE'  
LEFT JOIN hs_population d ON o.Facility_ID = d.Facility_ID AND d.HCAHPS_Measure_ID = 'H_COMP_2_LINEAR_SCORE'  
LEFT JOIN hs_population s ON o.Facility_ID = s.Facility_ID AND s.HCAHPS_Measure_ID = 'H_COMP_3_LINEAR_SCORE' 
LEFT JOIN hs_population m ON o.Facility_ID = m.Facility_ID AND m.HCAHPS_Measure_ID = 'H_COMP_5_LINEAR_SCORE'
LEFT JOIN hs_population di ON o.Facility_ID = di.Facility_ID AND di.HCAHPS_Measure_ID = 'H_COMP_6_LINEAR_SCORE'
LEFT JOIN hs_population ct ON o.Facility_ID = ct.Facility_ID AND ct.HCAHPS_Measure_ID = 'H_COMP_7_LINEAR_SCORE'
LEFT JOIN hs_population c ON o.Facility_ID = c.Facility_ID AND c.HCAHPS_Measure_ID = 'H_CLEAN_LINEAR_SCORE'  
LEFT JOIN hs_population q ON o.Facility_ID = q.Facility_ID AND q.HCAHPS_Measure_ID = 'H_QUIET_LINEAR_SCORE'   
WHERE o.HCAHPS_Measure_ID = 'H_HSP_RATING_LINEAR_SCORE';
# 3197 rows

#Create table from previous query
CREATE TABLE hospital_analysis AS
SELECT 
    o.Facility_ID,  
    o.City_Town,
    o.State,
    o.ZIP_Code,
    o.County_Parish,
    o.County_Population,
    o.HCAHPS_Linear_Mean_Value AS Overall_Rating,  
    r.HCAHPS_Linear_Mean_Value AS Recommendation_Score,  
    n.HCAHPS_Linear_Mean_Value AS Nurse_Communication,  
    d.HCAHPS_Linear_Mean_Value AS Doctor_Communication,  
    s.HCAHPS_Linear_Mean_Value AS Staff_Responsiveness,  
    m.HCAHPS_Linear_Mean_Value AS Medicine_Communication,
	di.HCAHPS_Linear_Mean_Value AS Discharge_Information,
    ct.HCAHPS_Linear_Mean_Value AS Care_Transition, 
    c.HCAHPS_Linear_Mean_Value AS Cleanliness,  
    q.HCAHPS_Linear_Mean_Value AS Quietness  
FROM hs_population o
LEFT JOIN hs_population r ON o.Facility_ID = r.Facility_ID AND r.HCAHPS_Measure_ID = 'H_RECMND_LINEAR_SCORE'  
LEFT JOIN hs_population n ON o.Facility_ID = n.Facility_ID AND n.HCAHPS_Measure_ID = 'H_COMP_1_LINEAR_SCORE'  
LEFT JOIN hs_population d ON o.Facility_ID = d.Facility_ID AND d.HCAHPS_Measure_ID = 'H_COMP_2_LINEAR_SCORE'  
LEFT JOIN hs_population s ON o.Facility_ID = s.Facility_ID AND s.HCAHPS_Measure_ID = 'H_COMP_3_LINEAR_SCORE' 
LEFT JOIN hs_population m ON o.Facility_ID = m.Facility_ID AND m.HCAHPS_Measure_ID = 'H_COMP_5_LINEAR_SCORE'
LEFT JOIN hs_population di ON o.Facility_ID = di.Facility_ID AND di.HCAHPS_Measure_ID = 'H_COMP_6_LINEAR_SCORE'
LEFT JOIN hs_population ct ON o.Facility_ID = ct.Facility_ID AND ct.HCAHPS_Measure_ID = 'H_COMP_7_LINEAR_SCORE'
LEFT JOIN hs_population c ON o.Facility_ID = c.Facility_ID AND c.HCAHPS_Measure_ID = 'H_CLEAN_LINEAR_SCORE'  
LEFT JOIN hs_population q ON o.Facility_ID = q.Facility_ID AND q.HCAHPS_Measure_ID = 'H_QUIET_LINEAR_SCORE'   
WHERE o.HCAHPS_Measure_ID = 'H_HSP_RATING_LINEAR_SCORE';

SELECT *
FROM hospital_analysis;

#Create Table from previous query
CREATE TABLE hospital_ratings AS  
SELECT 
    o.Facility_ID,  
    o.HCAHPS_Linear_Mean_Value AS Overall_Rating,  
    r.HCAHPS_Linear_Mean_Value AS Recommendation_Score,  
    n.HCAHPS_Linear_Mean_Value AS Nurse_Communication,  
    d.HCAHPS_Linear_Mean_Value AS Doctor_Communication,  
    s.HCAHPS_Linear_Mean_Value AS Staff_Responsiveness,  
    m.HCAHPS_Linear_Mean_Value AS Medicine_Communication,
	di.HCAHPS_Linear_Mean_Value AS Discharge_Information,
    ct.HCAHPS_Linear_Mean_Value AS Care_Transition, 
    c.HCAHPS_Linear_Mean_Value AS Cleanliness,  
    q.HCAHPS_Linear_Mean_Value AS Quietness  
FROM hs_population o
LEFT JOIN hs_population r ON o.Facility_ID = r.Facility_ID AND r.HCAHPS_Measure_ID = 'H_RECMND_LINEAR_SCORE'  
LEFT JOIN hs_population n ON o.Facility_ID = n.Facility_ID AND n.HCAHPS_Measure_ID = 'H_COMP_1_LINEAR_SCORE'  
LEFT JOIN hs_population d ON o.Facility_ID = d.Facility_ID AND d.HCAHPS_Measure_ID = 'H_COMP_2_LINEAR_SCORE'  
LEFT JOIN hs_population s ON o.Facility_ID = s.Facility_ID AND s.HCAHPS_Measure_ID = 'H_COMP_3_LINEAR_SCORE' 
LEFT JOIN hs_population m ON o.Facility_ID = m.Facility_ID AND m.HCAHPS_Measure_ID = 'H_COMP_5_LINEAR_SCORE'
LEFT JOIN hs_population di ON o.Facility_ID = di.Facility_ID AND di.HCAHPS_Measure_ID = 'H_COMP_6_LINEAR_SCORE'
LEFT JOIN hs_population ct ON o.Facility_ID = ct.Facility_ID AND ct.HCAHPS_Measure_ID = 'H_COMP_7_LINEAR_SCORE'
LEFT JOIN hs_population c ON o.Facility_ID = c.Facility_ID AND c.HCAHPS_Measure_ID = 'H_CLEAN_LINEAR_SCORE'  
LEFT JOIN hs_population q ON o.Facility_ID = q.Facility_ID AND q.HCAHPS_Measure_ID = 'H_QUIET_LINEAR_SCORE'   
WHERE o.HCAHPS_Measure_ID = 'H_HSP_RATING_LINEAR_SCORE';


SELECT * 
FROM hospital_ratings;

#Determine which factors have the greatest correlation with Overall Rating and Recommendation Score 


 

