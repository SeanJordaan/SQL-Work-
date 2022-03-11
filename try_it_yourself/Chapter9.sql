CREATE TABLE meat_poultry_egg_inspect (
    est_number varchar(50) CONSTRAINT est_number_key PRIMARY KEY,
    company varchar(100),
    street varchar(100),
    city varchar(30),
    st varchar(2),
    zip varchar(5),
    phone varchar(14),
    grant_date date,
    activities text,
    dbas text
);

COPY meat_poultry_egg_inspect FROM 'C:\Users\Sean\OneDrive - Reboss\Desktop\PostgresSQL - Copy\SQL\Analysis\MPI_Directory_by_Establishment_Name.csv' WITH (FORMAT CSV, HEADER, DELIMITER ',');

select * from meat_poultry_egg_inspect;

ALTER TABLE meat_poultry_egg_inspect ADD COLUMN meat_processing boolean, add column poultry_processing boolean;

UPDATE meat_poultry_egg_inspect inspect
SET meat_processing = TRUE
where activities ilike '%meat processing%'

UPDATE poultry_processing 
SET poultry_processing= TRUE
where activities ilike '%poultry processing%'

select count (meat_processing), count (poultry_processing)
from meat_poultry_egg_inspect;

select count (*) 
from meat_poultry_egg_inspect
where meat_processing = true and poultry_processing = true;
