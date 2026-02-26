SELECT metal_name, ROUND((melting_point_fahrenheit - 32) * 5 / 9, 1) AS melting_point_celsius
FROM measurements 
ORDER BY melting_point_celsius DESC;

SELECT CONCAT(UPPER(name), ' - ', type, ': ', direction) AS summary
FROM programming_languages
WHERE INSTR(direction,'веб-разработка')
ORDER BY popularity DESC, name;

SELECT * FROM orders 
WHERE delivery_date IS NULL AND TIMESTAMPDIFF(DAY, order_date, '2023-07-28') > 10
ORDER BY order_date;

SELECT SUM(passengers) AS total, ROUND(AVG(passengers)) AS average, MIN(passengers) AS min, MAX(passengers) AS max, GROUP_CONCAT(station_name ORDER BY station_name) AS stations
FROM passenger_traffic
WHERE date = '2023-10-01'
ORDER BY station_name;