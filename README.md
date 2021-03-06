# Project : Analyzing San Francisco Airbnb listings and evaluating pricing, popularity, features and accommodations by listing
 
# Project Outline:
 
Since its inception in 2008, Airbnb has disrupted the traditional hospitality industry as more travelers decide to use Airbnb as their primary means of accommodation. Airbnb offers travelers a more unique and personalized way of accommodation and experience.
 
![Insider AirBNB Data](images/insider_airbnb.png)
 
 
# Project Resources and Acknowledgements:
 
1. This dataset has one file- sf_airbnblistings.csv which has columns describing features such as host id, hostname, listing id, listing name, latitude and longitude of listing, the neighborhood, price, room type, minimum number of nights, number of reviews, last review date, reviews per month, availability, host listings and city.
 
2. This dataset is a compilation of multiple datasets found on Inside Airbnb.( http://insideairbnb.com/get-the-data.html)
 
3. stack overflow

# Presentation: 

  - Presentation: [View Googleslides](https://docs.google.com/presentation/d/1YdTfHFZa4LuGV4T-gGrehBDw-RvZP2CwBLBRZTNz02M/edit#slide=id.p)

# Dashboard: 

  - Dashboard: [View Dashboard on Tableau](https://public.tableau.com/app/profile/david.nathanael/viz/SFAirBNBProject/SFairbnbStory?publish=yes)
 
# Team Communication channels:
 
1. Zoom calls
   
2. Slack
   
3. Mobile and Emails
 
 
# Team Questions Summary:
 
Does this data contain enough information?
 
Looking at different columns which data cleaning techniques can we utilize the best? Via Excel or Pandas?
 
What can we learn about the neighborhoods" e.g. like close to GG Park, close to Union Sq / financial district etc?
 
Based on different factors is it possible to recommend a title to the host for his/her listing?
 
Based on data can we do geographical analysis?
 
What storage technique will be best for data storage? postgres or MongoDB or AWS or GWS?
 
Can we use different machine learning techniques?
 
What area of database will be best for Tableau dashboard presentation?
 
# Description of the data exploration phase of the project:


1. Data is more in detail in terms of features, geographical location, pricing, amenities etc..
   
2. Data needs cleaning in some areas as there are 106 columns and about 6121  listings. We will be using excel or pandas for this purpose to identify the correlation between
   variables ( Continuous and categorical)
   
3. We also decided to use graphical displays of data, such as bar charts and scatter plots, which are valuable tools in visual data exploration.
 
4. We really need to see what can we do to target current database and possible future searches and begin the process of excluding irrelevant data points and search paths that may
 
   turn up no results
 
#  Technologies, languages, tools, and algorithms used throughout the project:
 
![Technology Used](images/tech2.png)
 

 # Images for our initial approach to project:
 
1. Importing dependencies and Reading csv
 
![ Data Reading](images/reading_csv.png)
 
2. Initial cleaning of some data columns types which are least concern to deliverables
   
![Data Cleaning](images/datacleaning_dropping_columns.png)
 
3. ERD Diagram
   
![Entity Relationship Diagram](images/ERD.png)
 
![ERD BETA](images/ERD_Beta.png)
 
4. Database table creation
 
![Database Table creation](images/DB_Table.png)
 
5. Database Tables in pgAdmin using join function
 
![DB Tables using Join](images/pgAdmin_tableANDjoins.png)
 
6. Provisional DB to pgAdmin
   
![ DB to pgAdmin](images/ProvisionalDB_to_pgAdmin.png)
 
7. pgAdmin data reading
 
![pgAdmin table reading ](images/pgAdmin_Data_Output.png)
 
8. ![Project Outline](images/map.png)

9.  Label Encoder
 
![Label Encoder](images/label_encoder.png)
 
10. DB to ML
   
![DB to ML](images/DB_to_ML.png)
 
# Deliverables:
 
1. Predictions:
   
   
   a) San Francisco hosts joining Airbnb each month

   ![SF Hosts Joining Airbnb each Month](images/host_joining_eachmonth.png)
   
 
   b) San Francisco hosts joining Airbnb and listings getting their first review in each month

   ![Hosts Getting First Reviews](images/firstreview_eachmonth.png)
 
   
 
   c) Number of listings per host and Change per year

   ![ Host Change per year](images/listingperhost_change_peryear.png)
 
   d) Nightly price change/year

   ![Nighty Rate Change](images/nightly_pricechange.png)
 
   e) Advertised Price range and Distribution

   ![ Price Range Distribution](images/pricerage_distribution.png)
 
2. Describe a region using the names of listings in that region
 
   a) Plotting the number of listings in each SF neighbor

   ![Plotting](images/TB1.png)
 
   b)  Finding Median price of Airbnb listings in SF neighborhood

   ![Media Price](images/median_price.png)
 
   
3. Estimate the popularity of a listing based on given features
   
   a) price by neighborhood

   ![Price by Neighbour](images/TB2.png)
 
4. Features based accommodation: The number of guests, number of bedrooms, bathrooms, beds, price, minimum_nights, maximum_nights, number_of_reviews
 
 
# Recommendation for future analysis
 
1. ETL process using geojson file as well that is added to our resource folder
 
2. Predicting accuracy of results using different data modeling techniques
   
3. Adding more current data to file if available in regards to see how a pandemic can affect businesses
 
# Anything the team would have done differently:
 
A question that has always been a center of attention but at this point we are sure that we want to move forward with the dataset and focus more on how to make this project
 
successful using available technology that we learned so far.
 

 
# Machine Learning Model:
 
1. Description of preliminary data preprocessing:
   
   a) Stage:
   
   ![ Data Processing Model](images/ML%20Model.png)
 
   b) Process used:
 
   ![Data Processing](images/Data_Processing_%20Method.png)
 
 
2. Description of preliminary feature engineering and preliminary feature selection, including their decision making process
 
a) Preliminary feature engineering:
 
The process of creating new features from raw data to increase the predictive power of the learning algorithm was not easily apparent. To capture additional engineered features in
 
in the original feature set we selected a key subset of features to reduce the dimensionality of the training problem by eliminating irrelevant, redundant, or highly correlated features.
 
Training data consists of a matrix composed of rows and columns. Although many of the raw data fields can be used directly to train a model, it was important for us to create additional (engineered) features for an enhanced training dataset to provide information that better differentiates the patterns in the data.
 
b) Preliminary feature selection:
 
With the goal of constructing effective features in the training data, two regression models are built using the same algorithm but with two different training datasets. The two datasets represent the same raw input data, but with an increasing number of features set. These features are grouped into two categories:
 
1) All columns to see overall accuracy score against price
   
      
![All Cols](images/all%20Cols_selection.png)


 
1) Only columns that can contribute to predictics better pricing model
   
![Selected Cols for Predictions ](images/selected_cols.png)
 
3. Decision Making process:
   
a) Selecting Data: Integrate data, de-normalize it into a dataset, collect it together.
 
b) Preprocess Data: Format it, clean it, sample it to make it work.
 
c) Transform Data: Feature Engineer can be possible or not
 
d) Model Data: Create models, evaluate them and tune them.
 
3.  Description of how data was split into training and testing sets:
 
We used the scikit-learn Python machine learning library to provides an implementation of the train-test split evaluation procedure via the train_test_split() function.
 
![ Data Split Using train test Model](images/splidata_train_test_model.png)
 
The train-test split procedure is appropriate here due to large dataset
 
Also Sklearn provided the functionality to split the dataset for training and testing. Splitting the dataset is essential for an unbiased evaluation of prediction performance.
 
4. Different Machine learnig Models Accuracy Score:
   
 ![ML Models ACC Score](images/all_ml_models.png)
 
5. Explanation of model choice, including limitations and benefits:
 
Model used: Logistic Regression
 
Logistic regression can help find the probability of event success and event failure. In our dataset the dependent variable are binary(0/1) in nature. It supports categorizing data into discrete classes by studying the relationship from a given set of labeled data. This model learns a linear relationship from the given dataset and then introduces a non-linearity in the form of the Sigmoid function.
 
![Why Logistic Regression](images/model_choice.png)
 
 
# A blueprint for the dashboard
 
![Tableau Dashboard](images/tableau_dashboard.png)

# Summary and Conclusion:

1. Factors affecting the number of listings and neighborhood popularity are:
   
- Strategic and convenient locations.
  
- Sceneries and well known landmarks and attractions.
  
- Price.
  
- Easy access to public transportation and places to eat.
  
- Entertainment and nightlife.
  
- Safety/security.

Machine Learning:

1. Gradient boosting model was able to predict best 80% of the variation in price with an RMSE of 0.17.
   
2. We still have a remaining 20% to work on.
   
3. This is due to several other variables that are not part of our cleaned dataset or analysing features  differently 

# Suggestions:

Including image quality as a feature using supervised learning analyses on a dataset, May be more better images can generate additional revenue per year.

We notice  that reviews about listing location, rather than the location features themselves, were higher in the feature importance list. This finding could perhaps be used by hosts when writing their listing's description.

Highlighting accessibility and location can generate more profits with higher listing price








