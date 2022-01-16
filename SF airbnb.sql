SELECT listings.id,
	listings.zipcode,
 	listings.neighbourhood_cleansed,
	sfmasszip.land_area_sqmeters	
FROM listings
LEFT JOIN sfmasszip
ON listings.zipcode = sfmasszip.zip_code;


ALTER TABLE listings
ALTER COLUMN zipcode TYPE VARCHAR; 

ALTER TABLE sfmasszip
ALTER COLUMN zip_code TYPE VARCHAR; 

SELECT * FROM sfmasszip;

SELECT * FROM listings;