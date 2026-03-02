-- Самые дорогие автомобили топ-3 по цене
SELECT brand, model, price
FROM cars
ORDER BY price DESC
LIMIT 3;

-- Средняя цена по марке
SELECT brand, AVG(price) AS "Средняя_цена"
FROM cars
GROUP BY brand
ORDER BY "Средняя_цена" DESC;

-- Автомобили новее 2020 года с ценой ниже 2 млн
SELECT brand, model, year, price
FROM cars
WHERE year > 2020 AND price < 2000000;

-- Количество автомобилей по цвету только цвета, где машин ≥ 2
SELECT color, COUNT(*) AS "Количество"
FROM cars
GROUP BY color
HAVING COUNT(*) >= 2;

-- Возраст автомобиля и категория новый - старый
SELECT 
    brand,
    model,
    year,
    CASE
        WHEN EXTRACT(YEAR FROM CURRENT_DATE) - year <= 3 THEN 'новый'
        ELSE 'старый'
    END AS "Категория"
FROM cars;