SELECT * FROM housing.h;


# count the number of rows in data
SELECT COUNT(*) 
FROM housing.h;

# select top 10 rows of data 

SELECT * 
FROM housing.h 
LIMIT 10;

# Statistical analysis on price column

SELECT MIN(price), MAX(price), AVG(price), STDDEV(price) 
FROM housing.h;

# number of houses with different number of bedrooms 

SELECT bedrooms, COUNT(*) 
FROM housing.h 
GROUP BY bedrooms;

# check the price of houses by the number of bedrooms

SELECT bedrooms, AVG(price) 
FROM housing.h 
GROUP BY bedrooms;

# check the price of houses by the number of batrooms

SELECT bathrooms, AVG(price) 
FROM housing.h 
GROUP BY bathrooms;

# count of houses with airconditioning

SELECT airconditioning, COUNT(*) 
FROM housing.h 
GROUP BY airconditioning;

# checking the price of houses with airconditioning
SELECT airconditioning, AVG(price) 
FROM housing.h 
GROUP BY airconditioning;

# I am goingto explore the data that either it has null values or not

SELECT COUNT(*) 
FROM housing.h 
WHERE area IS NULL OR 
price IS NULL OR
area IS NULL OR
bedrooms IS NULL OR 
bathrooms IS NULL OR 
stories IS NULL OR 
mainroad IS NULL OR 
guestroom IS NULL OR 
basement IS NULL OR 
hotwaterheating IS NULL OR 
airconditioning IS NULL OR 
parking IS NULL OR 
prefarea IS NULL OR 
furnishingstatus IS NULL;


# checking the duplicates

SELECT area, bedrooms, bathrooms, stories, 
mainroad, guestroom, basement, hotwaterheating, 
airconditioning, parking, prefarea, furnishingstatus, MAX(price), COUNT(*) 
FROM housing.h 
GROUP BY area, bedrooms, bathrooms, stories, 
mainroad, guestroom, basement, 
hotwaterheating, airconditioning, parking, prefarea, furnishingstatus 
HAVING COUNT(*) > 1;

# Checking the price of the houses in terms of parking 

SELECT parking, AVG(price) 
FROM housing.h 
GROUP BY parking;


SELECT furnishingstatus, airconditioning, AVG(price) AS avg_price
FROM housing.h
GROUP BY furnishingstatus, airconditioning;


SELECT stories, AVG(price) 
FROM housing.h 
GROUP BY stories;


SELECT bedrooms, bathrooms, stories, airconditioning, furnishingstatus, AVG(price) AS avg_price
FROM housing.h
GROUP BY bedrooms, bathrooms, stories, airconditioning, furnishingstatus;

























