# polypropylene_tensile_analysis
Bootcamp Final Project

### Google Slides

https://docs.google.com/presentation/d/1k9lrUEQFpP3Fsoj3PBYExE6TBdMvIXOG2sbPXLs8-Ao/edit?usp=sharing


### Tableau Story
https://public.tableau.com/app/profile/carl.tusz/viz/PolypropyleneTensileAnalysiswithMachineLearning/PolypropyleneTensileAnalysis?publish=yes


## Overview

An extrusion company creates a crosslinked blend of polypropylene and polyethylene using a water-activated catalyst. The cure process takes 10 days, and consists of taking moistened extrudate and placing it in an industrial oven for a period of 10 days. The degree of crosslinking is determined by evaluating the tensile strength and elongation of a material sample. QA acceptance criteria is based on the tensile and elongation results after the curing process.

The tensile and elongation results tend to have considerable variation. This analysis is to use supervised machine learning to identify contributing features, and identify high-risk scenarios for quality failures.

Some factors being examined include the processing equipment, conditions, and operators, the weather conditions for the cure period (the ovens are exposed to the environment), the month of production, and the test results prior to moisture curing.

## Findings

This project did not produce a machine learning model which could accurately predict if a polypropylene sample would pass or fail final quality inspection based on the process variables. It suffered from overfitting in most cases due to a low number of unique records. Additionally, the model failed to identify critical features or variables which might indicate that a material sample is at risk of QC failure. The variables carried different importance depending on the machine learning model in use, and using only the most related by Chi-squared anlaysis failed to improve accuracy.

For a full summary read the Google Slides and Tableau Story linked above.


## Repository Structure

### Code

#### extruder_etl_script.ipynb
This notebook contains the ETL developed using Python for the Machine data.

#### merged_data_ETL.ipynb
This notebook contains the ETL developed using Python for the final dataset to be used for machine learning models.

#### project_machine_learning.ipynb
This notebook contains all code associated with developing and tuning machine learning models.

#### tensile_ETL_script.ipynb
This notebook contains the ETL developed using Python for the Quality data.

#### weather_api_script.ipynb
This notebook contains the ETL developed using Python for the Weather data, including an API call to weather.gc.ca.

#### sql_model_table.sql
This file shows the query to create and update the 'models' table in the project database. It includes two UNION statements.

#### polypropylene_analysis.png
This file is an image showing the ERD of the PostgreSQL database created as part of this project.

### Resources

#### Clean Data
##### encoded_data.csv
This is the output from merged_data_ETL.ipynb

##### final_extruder.csv
This is the output from extruder_etl_script.ipynb

##### final_tensile.csv
This is the output from tensile_ETL_script.ipynb

##### final_weather.csv
This is the output from weather_api_script.ipynb

#### Raw Data
##### extruder_one_7050.csv
This is the provided data for extruder one
##### extruder_two_7050.csv
This is the provided data for extruder two
##### tensile_data.csv
This is the provided data for the quality control tensile and elongation records

### Results
#### chi2_report.csv
This file contains the Chi2 value for each feature.
#### gbc_learning_rates.csv
This file contains the output from generating learning rate curves during Gradient Boosted Classification
#### logistic_curves.csv
This file contains the accuracy curves created during Logstic Regression
#### model_accuracy.csv
THis file contains the overall accuracy, precision and recall scores for all machine learning models created during this exercise, except for the neural network
#### model_features.csv
This file contains a list of all features which are included in each of the machine learning models
#### models.csv
This file is an export from the PostgreSQL database 'models' table
#### mutual_info_classification.csv
This file contains all Mutual Information Classification values for all features in all models
#### nn_machine_features.csv
This file contains the loss and accuracy curves for the neural network
