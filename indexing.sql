\c indexed_cars indexed_cars_user;

\timing

-- 1
SELECT DISTINCT make_title 
FROM car_models
WHERE make_code='LAM';

-- 2
SELECT DISTINCT model_title
FROM car_models
WHERE make_code='NISSAN' AND model_code='GT-R';

-- 3
SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code='LAM';

-- 4
SELECT  *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;

--5
SELECT  *
FROM car_models
WHERE year=2010;


CREATE INDEX idx_make_code
ON car_models (make_code);

CREATE INDEX idx_make_code_model_code
ON car_models (make_code, model_code);

CREATE INDEX idx_year
ON car_models (year);


-- 1
SELECT DISTINCT make_title 
FROM car_models
WHERE make_code='LAM';

-- 2
SELECT DISTINCT model_title
FROM car_models
WHERE make_code='NISSAN' AND model_code='GT-R';

-- 3
SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code='LAM';

-- 4
SELECT  *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;

--5
SELECT  *
FROM car_models
WHERE year=2010;