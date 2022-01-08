-- Creating tables for ABNB_DB

CREATE TABLE abb_review (
    id INT NOT NULL,
    number_of_reviews INT NOT NULL,
	number_of_reviews_ltm INT NOT NULL,
	review_scores_rating FLOAT NOT NULL,
	review_scores_location FLOAT NOT NULL,
	review_scores_value FLOAT NOT NULL,
	reviews_per_month FLOAT NOT NULL,
     PRIMARY KEY (id),
     UNIQUE (id)
);

CREATE TABLE abb_price (
    id INT NOT NULL,
    price INT NOT NULL,
	minimum_nights INT NOT NULL,
	maximum_nights INT NOT NULL,
     PRIMARY KEY (id),
     UNIQUE (id)
);

CREATE TABLE abb_profile (
	id INT NOT NULL,
    name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	neighborhood_overview VARCHAR NOT NULL,
	neighbourhood VARCHAR NOT NULL,
	neighbourhood_cleansed VARCHAR NOT NULL,
	host_name VARCHAR NOT NULL,
	host_location VARCHAR NOT NULL,
	latitude FLOAT NOT NULL,
	longitude FLOAT NOT NULL,
     PRIMARY KEY (id),
     UNIQUE (id)
);