SELECT brand, GROUP_CONCAT(model) AS models
FROM cars
GROUP BY brand;

SELECT user_id, GROUP_CONCAT(SUBSTRING_INDEX(connect_url, '//', -1) SEPARATOR '; ') AS user_contact
FROM user_social_providers
WHERE INSTR(connect_url, 'vk') OR INSTR(connect_url, 't.me')
GROUP BY user_id;