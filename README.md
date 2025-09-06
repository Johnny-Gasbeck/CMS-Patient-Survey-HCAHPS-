# United-States-Patient-Survey-HCAHPS-

## Full Project can be found here: [https://oil-octagon-e70.notion.site/Project-Portfolio-194a641f375380478404ef1198f2428c](https://oil-octagon-e70.notion.site/United-States-Patient-Survey-HCAHPS-1c6a641f37538090a850f25b956db0de)

## Tableau Visualizations can be found here: [https://public.tableau.com/views/HospitalSurveyProject/HospitalSurveyProject?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link](https://public.tableau.com/app/profile/johnathon.gasbeck/viz/HospitalSurveyProject/HospitalSurveyProject?publish=yes)

## Link To Datasets

HCAHPS Hospital: ​​https://data.cms.gov/provider-data/dataset/dgck-syfz

U.S. Census Bureau 2024 County Population: https://www.census.gov/data/tables/time-series/demo/popest/2020s-counties-total.html


## Goal

The goal of this project was to identify the key aspects of hospital care that most significantly influence **hospital rating and recommendation scores** and to explore how these scores vary **geographically across U.S. counties**. By understanding the drivers of patient satisfaction, hospital administrators can prioritize high-impact areas to improve **patient trust, financial performance, and operational success**. Public health officials can improve **patient outcomes, allocate resources more effectively, and address systemic inequalities in care quality** by studying counties with the best rating and recommendation scores. 

## Process

- Sourced the **“Patient Survey (HCAHPS) - Hospital” dataset** from the Centers for Medicare & Medicaid Services, covering inpatient experiences from **April 1, 2023, to March 31, 2024.**
- Utilized **MySQL** to clean the data—handle missing values, fix formatting issues, and remove unusable rows to enhance data processing efficiency.
- Integrated **U.S. county population data (2024) from the U.S. Census Bureau** to assess geographical trends.
- After extracting key hospital performance measures, the dataset was exported to **Excel** to create a **correlation matrix** and perform a **regression analysis** to determine which factors most influence hospital rating and recommendation scores. The results were visualized in **Excel** to highlight the strongest predictors of these scores.
- Designed **interactive** **dashboards** using **Tableau** to visualize geographic patterns in scores at the county level and the average hospital scores across small, medium, and large counties.

## Key Insights

1. Care Transition, Nurse Communication, and Doctor Communication have the largest effect on hospital Rating and Recommendation scores.
2. Hospital Rating and Recommendation scores are similar across counties.
3. Hospitals in counties with a small population size have the highest Rating and Recommendation scores.
