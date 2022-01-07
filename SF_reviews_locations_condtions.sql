Schema
/*
locations
-
id pk int
listing_url pk VARCHAR FK >- conditions.listing_url
neighbourhood VARCHAR
latitude int
longitude int

conditions
-
id pk int
listing_url pk VARCHAR
price int
property_type VARCHAR
room_type VARCHAR
accommodates int
bathrooms int
bedrooms int	
amenities VARCHAR

reviews
-
id pk int FK >- locations.id
number_of_reviews int	
review_scores_rating int
review_scores_accuracy int
review_scores_value int
reviews_per_month int
*/

CREATE TABLE reviews (
    id INT NOT NULL,
    number_of_reviews INT NOT NULL,	
    review_scores_rating INT NOT NULL,
    review_scores_accuracy INT NOT NULL,
    review_scores_value INT NOT NULL,
    reviews_per_month INT NOT NULL)
    PRIMARY KEY (id));

CREATE TABLE locations(
    id INT NOT NULL,
    listing_url VARCHAR NOT NULL
    neighbourhood VARCHAR NOT NULL
    latitude INT NOT NULL
    longitude INT NOT NULL
    PRIMARY KEY (id, listing_url));

CREATE TABLE conditions(
    id pk INT NOT NULL
    listing_url pk VARCHAR NOT NULL
    price INT NOT NULL
    property_type VARCHAR NOT NULL
    room_type VARCHAR NOT NULL
    accommodates INT NOT NULL
    bathrooms INT NOT NULL
    bedrooms INT NOT NULL	
    amenities VARCHAR NOT NULL
    PRIMARY KEY (id, listing_url));

SELECT l.id, l.listing_url, price, accommodates
FROM locations l
JOIN conditions c
    ON l.id = c.id




