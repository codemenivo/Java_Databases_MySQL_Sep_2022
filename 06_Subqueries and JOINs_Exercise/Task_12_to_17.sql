CREATE DATABASE IF NOT EXISTS `geography` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `geography`;

/* 12. Highest Peaks in Bulgaria */
SELECT 
    m_c.`country_code`,
    m.`mountain_range`,
    p.`peak_name`,
    p.`elevation`
FROM
    `peaks` AS p
        JOIN
    `mountains` AS m ON p.`mountain_id` = m.`id`
        JOIN
    `mountains_countries` AS m_c ON m_c.`mountain_id` = m.`id`
WHERE
    (m_c.`country_code` = 'BG')
        AND (p.`elevation` > 2835)
ORDER BY p.`elevation` DESC;

/* 13. Count Mountain Ranges */
SELECT 
    m_c.`country_code`,
    COUNT(m.`mountain_range`) AS 'mountain_range'
FROM
    `mountains_countries` AS m_c
        JOIN
    `mountains` AS m ON m_c.`mountain_id` = m.`id`
WHERE
    m_c.`country_code` IN ('BG' , 'US', 'RU')
GROUP BY m_c.`country_code`
ORDER BY 
`mountain_range` DESC;

/* 14. Countries with Rivers */
SELECT 
    c.`country_name`, r.`river_name`
FROM
    `countries` AS c
        LEFT JOIN
    `countries_rivers` AS c_r ON c.`country_code` = c_r.`country_code`
        LEFT JOIN
    `rivers` AS r ON r.`id` = c_r.`river_id`   
WHERE
    (c.`continent_code`) IN ('AF')
ORDER BY 
	c.`country_name`
LIMIT 5;

/* 15. *Continents and Currencies */
# TO DO


/* 16. Countries without any Mountains */
SELECT 
    COUNT(c.`country_code`) AS 'country_count'
FROM
    `countries` AS c
        LEFT JOIN
    `mountains_countries` AS m_c ON c.`country_code` = m_c.`country_code`
        LEFT JOIN
    `mountains` AS m ON m_c.`mountain_id` = m.`id`
WHERE
    m.`id` IS NULL;
    
    /* 17. Highest Peak and Longest River by Country */
SELECT 
    c.`country_name`,
    MAX(p.`elevation`) AS 'highest_peak_elevation',
    MAX(r.`length`) AS 'longest_river_length'
FROM
    `countries` AS c
        LEFT JOIN
    `mountains_countries` AS m_c ON c.`country_code` = m_c.`country_code`
        LEFT JOIN
    `peaks` AS p ON m_c.`mountain_id` = p.`mountain_id`
        LEFT JOIN
    `countries_rivers` AS c_r ON c.`country_code` = c_r.`country_code`
        LEFT JOIN
    `rivers` AS r ON c_r.`river_id` = r.`id`
GROUP BY c.`country_name`
ORDER BY 
	`highest_peak_elevation` DESC , `longest_river_length` DESC , c.`country_name`
LIMIT 5;





























