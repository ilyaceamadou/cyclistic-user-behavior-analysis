# Cyclistic User Behavior Analysis

**Google Data Analytics Capstone \| September 2021 -- August 2022**

## Project Overview

This project analyzes Cyclistic bike-share trip data to compare how
casual riders and annual members use the service. The objective is to
identify behavioral differences that can inform and help test marketing
strategies designed to convert casual riders into annual members.

The analysis follows the Google Data Analytics process: **Ask, Prepare,
Process, Analyze, Share, and Act**.

## Business Problem

Cyclistic aims to increase annual memberships. The analysis investigates
how casual riders and annual members differ in ride duration, weekly and
hourly usage, monthly patterns, and bike-type preferences.

## Dataset

The project uses twelve monthly Divvy trip-data files covering
**September 2021 through August 2022**.

-   Official data archive:
    https://divvy-tripdata.s3.amazonaws.com/index.html
-   Official system-data page: https://divvybikes.com/system-data
-   Data license: https://divvybikes.com/data-license-agreement

The source files were consolidated into a SQLite table containing
**5,883,043 rides**. After applying the project's ride-duration
validation rule, the analytical dataset contained **5,877,252 rides**.

## Tools and Technologies

- **SQLite:** Database engine
- **SQL:** Data consolidation, quality checks, cleaning, transformation, and analysis
- **DBeaver Community:** SQL development environment
- **Tableau:** Data visualization and dashboard communication
- **GitHub:** Project documentation and portfolio presentation
## Methodology

1. **Ask:** Define the business problem, stakeholders, analytical questions, and metrics.
2. **Prepare:** Obtain and organize the source data and assess its quality.
3. **Process:** Validate records, create a clean analytical dataset, and derive fields for ride duration, day of week, month, and hour.
4. **Analyze:** Compare ride volume and usage patterns by customer type.
5. **Share:** Communicate the findings through a Tableau dashboard.
6. **Act:** Propose testable marketing recommendations and define success metrics.

## Data Preparation and Cleaning

The twelve monthly tables were combined using `UNION ALL` into
`cyclistic_trips`.

The source table was retained for traceability. A separate table,
`cyclistic_trips_clean`, was used for duration-based analysis.

For this analysis, a valid ride duration was defined as **greater than
zero and no more than 24 hours**. A total of 5,791 records were excluded
from duration-based analysis because they had zero duration, negative
duration, or duration greater than 24 hours.

No NULL values were identified in the 13 source variables, and no
duplicate `ride_id` values were found.

## Analysis

The analysis examined:

-   Overall ride volume and customer-type distribution
-   Average ride duration
-   Ride volume by day of week
-   Ride volume by hour of day
-   Monthly usage patterns
-   Bike-type usage

## Key Findings

-   The cleaned analytical dataset contains **5,877,252 rides**.
-   Annual members accounted for **3,413,639 rides**; casual riders
    accounted for **2,463,613 rides**.
-   Casual riders had a higher average ride duration (**23.14 minutes**)
    than annual members (**12.58 minutes**).
-   Casual ride volume was highest on **Saturday**, while member ride
    volume was highest on **Wednesday**.
-   Both groups had their highest hourly ride volume at **5:00 PM**.
    Annual members also showed stronger morning activity.
-   Casual usage was strongly seasonal and peaked in **July 2022**.
-   Classic and electric bikes accounted for most rides. Docked-bike
    usage was concentrated in the casual segment in this dataset.

## Recommendations

The findings suggest several opportunities to test, not assume, the
effectiveness of targeted marketing:

1.  Test membership messaging during periods of high weekend activity.
2.  Evaluate whether longer-duration casual rides can be used as a
    useful targeting signal.
3.  Test seasonal campaigns during periods of higher spring and summer
    demand.
4.  Compare segmented campaign messages and measure their performance.

Campaign decisions should be evaluated using annual membership
purchases, casual-to-member conversion rate, and membership revenue. The
available trip data identifies behavioral patterns but does not by
itself prove that a specific campaign will cause conversion.

## Tableau Dashboard

**Dashboard:** Cyclistic User Behavior Dashboard

**Period:** September 2021 – August 2022

This interactive dashboard compares casual riders and annual members across key usage indicators, including ride volume, average ride duration, day-of-week patterns, hourly usage, monthly trends, and bike-type preferences.

**View the interactive dashboard on Tableau Public:**  
[Open the Cyclistic User Behavior Dashboard](https://public.tableau.com/app/profile/ilyace.amadou/viz/CyclisticUserBehaviorDashboard/CyclisticUserBehaviorDashboard?publish=yes)

## Project Structure

``` text
Cyclistic-capstone/
├── README.md
├── 03_SQL/                      # SQL scripts for validation, cleaning, transformation, analysis
├── 04_Tableau/
│   └── Cyclistic_Dashboard.twbx # Packaged Tableau workbook
└── 05_Documentation/
    └── Cyclistic_Case_Study.docx
```

The folder tree is a suggested public repository structure. Only include
files that are actually present in the published repository. Do not
upload large raw data or the local SQLite database by default; publish
the SQL scripts, documentation, and relevant Tableau deliverables.

## Skills Demonstrated

-   SQL querying and data aggregation
-   Data quality assessment and cleaning
-   Data transformation
-   Exploratory and comparative analysis
-   Tableau dashboard design
-   Business interpretation and data storytelling
-   Reproducible project documentation

## Author

**Data Analytics Portfolio Project**\
Prepared as part of the Google Data Analytics Professional Certificate.
