CREATE TABLE abnb (
     host_response_time VARCHAR NOT NULL,
     host_response_rate INT NOT NULL,
     host_listings_count INT NOT NULL,
     last_name VARCHAR NOT NULL,
     neighbourhood VARCHAR NOT NULL,
     neighbourhood_cleansed VARCHAR NOT NULL,
 PRIMARY KEY (id));
 
 
 CREATE TABLE abnbacc (
     property_type VARCHAR NOT NULL,
     room_type VARCHAR NOT NULL,
     accommodates INT NOT NULL,
     bathrooms INT NOT NULL,
     bedrooms INT NOT NULL,
     beds VARCHAR NOT NULL,
	 bed_type VARCHAR NOT NULL,
 PRIMARY KEY (id));