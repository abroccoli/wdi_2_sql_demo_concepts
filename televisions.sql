-- In case there is already a televisions_lab database, drop it
DROP DATABASE televisions_lab;


-- Create a televisions_lab database
CREATE DATABASE televisions_lab;


-- Connect to the televisions_lab databases
\c televisions_lab

-- Create a tv_models table
--  The table should have id, make, model, screen_size, resolution,
--  price, release_date, photo_url
CREATE TABLE tv_models (
  id serial PRIMARY KEY,
  make TEXT,
  model TEXT,
  screen_size TEXT,
  resolution TEXT,
  price NUMERIC,
  release_date DATE,
  photo_url TEXT
);


-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns

ALTER TABLE tv_models DROP COLUMN resolution;
ALTER TABLE tv_models ADD COLUMN vertical_resolution NUMERIC;
ALTER TABLE tv_models ADD COLUMN horizontal_resolution NUMERIC;


-- Insert 4 televisions into the tv_models table
INSERT INTO tv_models (make, model, screen_size, price, release_date, photo_url, vertical_resolution, horizontal_resolution)
  VALUES ('Samsung', 'T-1000', '60in', '2000', '2013-02-01', 'samsung.com/T-1000', '4000', '6000'),
        ('Sony', 'WIT9', '55in', '3000', '2013-06-01', 'sony.com/WIT9', '4000', '6000'),
        ('Vizio', 'Supreme', '60in', '1500', '2013-04-01', 'vizio.com/Supreme', '4000', '6000');


-- Select all entries from the tv_models table
SELECT * FROM tv_models;
