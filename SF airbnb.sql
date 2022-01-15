--create table 1
CREATE TABLE abnb (
    ID INT NOT NULL,
     host_response_time VARCHAR NOT NULL,
     host_response_rate INT NOT NULL,
     host_listings_count INT NOT NULL,
     last_name VARCHAR NOT NULL,
     neighbourhood VARCHAR NOT NULL,
     neighbourhood_cleansed VARCHAR NOT NULL,
 PRIMARY KEY (id));
 
 --create table 2
 CREATE TABLE abnbacc (
     ID INT NOT NULL,
     property_type VARCHAR NOT NULL,
     room_type VARCHAR NOT NULL,
     accommodates INT NOT NULL,
     bathrooms INT NOT NULL,
     bedrooms INT NOT NULL,
     beds INT NOT NULL,
	 bed_type VARCHAR NOT NULL,
 PRIMARY KEY (id));

 --left join 
SELECT listings.ID,
 	listings.neighbourhood_cleansed,
    listings.property_type,
    listings.room_type,
    listings.accommodates,
    sfmasszip.Land_area_SqMeters
FROM listings
RIGHT JOIN sfmasszip
ON listings.zipcode = sfmasszip.zip_code;

--left join into new table 'abnb_clean' 
SELECT 
	abnb.ID,
 	abnb.neighbourhood_cleansed,
    abnbacc.property_type,
    abnbacc.room_type,
    abnbacc.accommodates
INTO abnb_clean
FROM abnb
LEFT JOIN abnbacc
ON abnb.ID = abnbacc.ID
;