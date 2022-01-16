-- alter column type
ALTER TABLE listings
ALTER COLUMN zipcode TYPE VARCHAR; 

ALTER TABLE sfmasszip
ALTER COLUMN land_area_sqmeters TYPE VARCHAR;

SELECT * FROM listings
LEFT JOIN sfmasszip
ON listings.zipcode = sfmasszip.zip_code;

 


--change column type date varchar
ALTER TABLE listings 
ALTER COLUMN first_review SET DATA TYPE date
      USING to_date(first_review, 'mm-dd-yyyy');

ALTER TABLE listings
ALTER COLUMN host_is_superhost TYPE VARCHAR; 



SELECT listings.id,
	listings.host_since,
	listings.host_response_time,
	listings.host_response_rate,
	listings.host_is_superhost,
	listings.host_listings_count,
	listings.host_total_listings_count,
	listings.host_identity_verified,
 	listings.neighbourhood_cleansed,
	listings.zipcode,
	listings.latitude,
	listings.longitude,
	sfmasszip.land_area_sqmeters	
FROM listings
LEFT JOIN sfmasszip
ON listings.zipcode = sfmasszip.zip_code;