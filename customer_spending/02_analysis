-- =====================================================
-- 1. Average Income & Spending by Gender
-- =====================================================

SELECT 
    gender,
    ROUND(AVG(income), 0)  AS avg_income,
    ROUND(AVG(spending), 2) AS avg_spending
FROM customer_data
GROUP BY gender
ORDER BY avg_spending DESC;


-- =====================================================
-- 2. Continent Lookup Table
-- =====================================================

DROP TABLE IF EXISTS continent_lookup;

CREATE TABLE continent_lookup (
    country   VARCHAR(100) PRIMARY KEY,
    continent VARCHAR(50)
);
INSERT INTO continent_lookup (country, continent)
VALUES
('Aruba', 'South America'),
('Palau', 'Oceania'),
('Italy', 'Europe'),
('San Marino','Europe'),
('Christmas Island','Asia'),
('Nicaragua','North America'),
('Greenland','Europe'),
('Indonesia','Asia'),
('Australia','Oceania'),
('India','Asia'),
('Egypt','Africa'),
('United Arab Emirates','Asia'),
('Nauru','Oceania'),
('Armenia','Asia'),
('Iran','Asia'),
('Faroe Islands','Europe'),
('Svalbard and Jan Mayen','Europe'),
('Ethiopia','Africa'),
('El Salvador','North America'),
('Cocos (Keeling) Islands','Asia'),
('Cook Islands','Oceania'),
('Philippines','Asia'),
('Comoros','Africa'),
('Maldives','Asia'),
('Holy See (Vatican City State)','Europe'),
('United States Minor Outlying Islands','North America'),
('Burundi','Africa'),
('Afghanistan','Asia'),
('Albania','Europe'),
('Algeria','Africa'),
('American Samoa','Oceania'),
('Andorra','Europe'),
('Angola','Africa'),
('Anguilla','North America'),
('Antarctica (the territory South of 60 deg S','Antartica'),
('Antigua and Barbuda','North America'),
('Argentina','South America'),
('Austria','Europe'),
('Azerbaijan','Asia'),
('Bahamas','North America'),
('Bahrain','Asia'),
('Bangladesh','Asia'),
('Barbados','North America'),
('Belarus','Europe'),
('Belgium','Europe'),
('Belize','North America'),
('Benin','Africa'),
('Bermuda','North America'),
('Bhutan','Asia'),
('Bolivia','South America'),
('Bosnia and Herzegovina','Europe'),
('Botswana','Africa'),
('Bouvet Island (Bouvetoya)','Antartica'),
('Brazil','South America'),
('British Indian Ocean Territory(Chagos Archipelago)','Asia'),
('British Virgin Islands','North America'),
('Brunei Darussalam','Asia'),
('Bulgaria','Europe'),
('Burkina Faso','Africa'),
('Cambodia','Asia'),
('Cameroon','Africa'),
('Canada','North America'),
('Cape Verde','Africa'),
('Cayman Islands','North America'),
('Central African Republic','Africa'),
('Chad','Africa'),
('Chile','South America'),
('China','Asia'),
('Colombia','South America'),
('Congo','Africa'),
('Costa Rica','South America'),
('Cote d"Ivoire','Africa'),
('Croatia','Europe'),
('Cuba','South America'),
('Cyprus','Europe'),
('Czech Republic','Europe'),
('Denmark','Europe'),
('Djibouti','Africa'),
('Dominica','North America'),
('Dominican Republic','North America'),
('Ecuador','South America'),
('Equatorial Guinera','Africa'),
('Eritrea','Africa'),
('Estonia','Europe'),
('Falkland Islands(Malvinas)','South America'),
('Fiji','Oceania'),
('Finland','Europe'),
('France','Europe'),
('French Guiana','South America'),
('French Polynesia','Oceania'),
('French Southern Territories','Antartica'),
('Gabon','Africa'),
('Gambia','Africa'),
('Georgia','Europe'),
('Germany','Europe'),
('Ghana','Africa'),
('Gibraltar','Europe'),
('Greece','Europe'),
('Grenada','North America'),
('Guadeloupe','North America'),
('Guam','Oceania'),
('Guatemala','South America'),
('Guernsey','Europe'),
('Guinea','Africa'),
('Guinea-Bissau','Africa'),
('Guyana','South America'),
('Haiti','North America'),
('Heard Island and McDonald Islands','Oceania'),
('Honduras','South America'),
('Hong Kong','Asia'),
('Hungary','Europe'),
('Iceland','Europe'),
('Iraq','Asia'),
('Ireland','Europe'),
('Isle of Man','Europe'),
('Israel','Asia'),
('Jamaica','North America'),
('Japan','Asia'),
('Jersey','Europe'),
('Jordan','Asia'),
('Kazakhstan','Asia'),
('Kenya','Africa'),
('Kiribati','Oceania'),
('Korea','Asia'),
('Kuwait','Asia'),
('Kyrgyz Republic','Asia'),
('Lao People''s Democratic Republic', 'Asia'),
('Latvia','Europe'),
('Lebanon','Asia'),
('Lesotho','Africa'),
('Liberia','Africa'),
('Libyan Arab Jamahiriya','Africa'),
('Liechtenstein','Europe'),
('Lithuania','Europe'),
('Luxembourg','Europe'),
('Madagascar','Africa'),
('Malawi','Africa'),
('Malaysia','Asia'),
('Mali','Africa'),
('Malta','Europe'),
('Marshall Islands','Oceania'),
('Martinique','North America'),
('Mauritania','Africa'),
('Mauritius','Africa'),
('Mayotte','Africa'),
('Mexico','South America'),
('Micronesia','Oceania'),
('Moldova','Europe'),
('Monaco','Europe'),
('Mongolia','Asia'),
('Montserrat','North America'),
('Morocco','Africa'),
('Mozambique','Africa'),
('Myanmar','Asia'),
('Namibia','Africa'),
('Nepal','Asia'),
('Netherlands','Europe'),
('Netherlands Antilles','North America'),
('New Caledonia','Oceania'),
('New Zealand','Oceania'),
('Niger','Africa'),
('Nigeria','Africa'),
('Niue','Oceania'),
('Norfolk Island','Oceania'),
('North Macedonia','Europe'),
('Northern Mariana Islands','Oceania'),
('Norway','Europe'),
('Oman','Asia'),
('Pakistan','Asia'),
('Palestinian Territory','Asia'),
('Panama','North America'),
('Papua New Guinea','Oceania'),
('Paraguay','South America'),
('Peru','South America'),
('Pitcairn Islands','Oceania'),
('Poland','Europe'),
('Portugal','Europe'),
('Puerto Rico','North America'),
('Qatar','Asia'),
('Reunion','Africa'),
('Romania','Europe'),
('Russian Federation','Europe'),
('Rwanda','Africa'),
('Saint Barthelemy','North America'),
('Saint Helena','Africa'),
('Saint Kitts and Nevis','North America'),
('Saint Lucia','North America'),
('Saint Martin','North America'),
('Saint Pierre and Miquelon','North America'),
('Saint Vincent and the Grenadines','North America'),
('Sao Tome and Principe','Africa'),
('Saudi Arabia','Asia'),
('Senegal','Africa'),
('Serbia','Europe'),
('Seychelles','Africa'),
('Sierra Leone','Africa'),
('Singapore','Asia'),
('Slovakia(Slovak Republic)','Europe'),
('Slovenia','Europe'),
('Solomon Islands','Oceania'),
('Somalia','Africa'),
('South Africa','Africa'),
('South Georgia and the South Sandwich Islands','Antartica'),
('Spain','Europe'),
('Sri Lanka','Asia'),
('Sudan','Africa'),
('Suriname','South America'),
('Svalbard & Jan Mayen Islands','Europe'),
('Swaziland','Africa'),
('Sweden','Europe'),
('Switzerland','Europe'),
('Syrian Arab Republic','Asia'),
('Taiwan','Asia'),
('Tajikistan','Asia'),
('Tanzania','Africa'),
('Thailand','Asia'),
('Timor-Leste','Asia'),
('Togo','Africa'),
('Tokelau','Oceania'),
('Tonga','Oceania'),
('Trinidad and Tobago','South America'),
('Turkey','Europe'),
('Turkmenistan','Asia'),
('Turks and Caicos Islands','North America'),
('Tuvalu','Oceania'),
('Uganda','Africa'),
('Ukraine','Europe'),
('United Kingdom','Europe'),
('United States of America','North America'),
('United States Virgin Islands','North America'),
('Uruguay','South America'),
('Ubzbekistan','Asia'),
('Vanuatu','Oceania'),
('Venezuela','South America'),
('Vietnam','Asia'),
('Wallis and Futuna','Oceania'),
('Western Sahara','Africa'),
('Yemen','Asia'),
('Zambia','Africa'),
('Zimbabwe','Africa');


-- =====================================================
-- 3. Average Income by Continent
-- =====================================================

SELECT
    cl.continent,
    ROUND(AVG(cd.income), 0) AS avg_income
FROM customer_data cd
JOIN continent_lookup cl
    ON cd.country = cl.country
GROUP BY cl.continent
ORDER BY avg_income DESC;


-- =====================================================
-- 4. Education Level vs Income Level (by Continent Threshold)
-- =====================================================

WITH education_income AS (
    SELECT
        cd.education,
        cl.continent,
        cd.income,
        CASE  
            WHEN education IN ('Master', 'PhD', 'Bachelor') THEN 'high_education'
            ELSE 'low_education'
        END AS education_level,
        CASE 
            WHEN income >= 58840 AND continent = 'Europe'        THEN 'high_income'
            WHEN income >= 59844 AND continent = 'South America' THEN 'high_income'
            WHEN income >= 57901 AND continent = 'Oceania'       THEN 'high_income'
            WHEN income >= 59268 AND continent = 'Africa'        THEN 'high_income'
            WHEN income >= 55302 AND continent = 'North America' THEN 'high_income'
            WHEN income >= 65486 AND continent = 'Antartica'     THEN 'high_income'
            ELSE 'low_income'
        END AS income_group
    FROM customer_data cd
    JOIN continent_lookup cl
        ON cd.country = cl.country
)

SELECT 
    COUNT(CASE WHEN education_level = 'high_education' AND income_group = 'high_income' THEN 1 END) AS highEdu_highInc,
    COUNT(CASE WHEN education_level = 'high_education' AND income_group = 'low_income'  THEN 1 END) AS highEdu_lowInc,
    COUNT(CASE WHEN education_level = 'low_education'  AND income_group = 'high_income' THEN 1 END) AS lowEdu_highInc,
    COUNT(CASE WHEN education_level = 'low_education'  AND income_group = 'low_income'  THEN 1 END) AS lowEdu_lowInc
FROM education_income;


-- =====================================================
-- 5. Education vs Purchase Frequency
-- =====================================================

SELECT
    CASE 
        WHEN education IN ('Master', 'PhD', 'Bachelor') THEN 'high_education'
        ELSE 'low_education'
    END AS education_level,
    ROUND(AVG(purchase_frequency), 2) AS avg_purchase_frequency
FROM customer_data
GROUP BY education_level
ORDER BY avg_purchase_frequency DESC;


-- =====================================================
-- 6. Age Groups vs Purchase Frequency
-- =====================================================

SELECT
    CASE 
        WHEN age BETWEEN 18 AND 40 THEN 'young_customers'
        WHEN age BETWEEN 41 AND 65 THEN 'older_customers'
    END AS age_group,
    ROUND(AVG(purchase_frequency), 2) AS avg_purchase_frequency
FROM customer_data
GROUP BY age_group
ORDER BY avg_purchase_frequency DESC;


-- =====================================================
-- 7. Top 10 Countries by Average Spending
-- =====================================================

SELECT 
    country,
    ROUND(AVG(spending), 2) AS avg_spending
FROM customer_data
GROUP BY country
ORDER BY avg_spending DESC
LIMIT 10;


-- =====================================================
-- 8. Income Level vs Purchase Frequency
-- =====================================================

WITH income_frequency AS (
    SELECT 
        cd.purchase_frequency,
        CASE 
            WHEN income >= 58840 AND continent = 'Europe'        THEN 'high_income'
            WHEN income >= 59844 AND continent = 'South America' THEN 'high_income'
            WHEN income >= 57901 AND continent = 'Oceania'       THEN 'high_income'
            WHEN income >= 59268 AND continent = 'Africa'        THEN 'high_income'
            WHEN income >= 55302 AND continent = 'North America' THEN 'high_income'
            WHEN income >= 65486 AND continent = 'Antartica'     THEN 'high_income'
            ELSE 'low_income'
        END AS income_group
    FROM customer_data cd
    JOIN continent_lookup cl
        ON cd.country = cl.country
)

SELECT 
    income_group,
    ROUND(AVG(purchase_frequency), 2) AS avg_purchase_frequency
FROM income_frequency
GROUP BY income_group
ORDER BY avg_purchase_frequency DESC;


-- =====================================================
-- 9. Customer Segmentation (Spending vs Frequency)
-- =====================================================

SELECT 
    name,
    country,
    spending,
    purchase_frequency,
    CASE 
        WHEN spending > 9613 AND purchase_frequency <= 0.5 THEN 'high_spend_low_freq'
        WHEN spending <= 9613 AND purchase_frequency > 0.5 THEN 'low_spend_high_freq'
        ELSE 'balanced'
    END AS customer_segment
FROM customer_data;


-- =====================================================
-- 10. Generation Analysis
-- =====================================================

WITH generation_data AS (
    SELECT
        income,
        spending,
        purchase_frequency,
        CASE 
            WHEN age <= 25 THEN 'Gen Z'
            WHEN age BETWEEN 26 AND 40 THEN 'Millennials'
            WHEN age BETWEEN 41 AND 55 THEN 'Gen X'
            ELSE 'Boomers'
        END AS generation
    FROM customer_data
)

-- Spending by Generation
SELECT 
    generation,
    ROUND(AVG(spending), 2) AS avg_spending
FROM generation_data
GROUP BY generation
ORDER BY avg_spending DESC;


-- Purchase Frequency by Generation
SELECT 
    generation,
    ROUND(AVG(purchase_frequency), 2) AS avg_purchase_frequency
FROM generation_data
GROUP BY generation
ORDER BY avg_purchase_frequency DESC;


-- Income by Generation & Frequency Group
SELECT 
    generation,
    CASE 
        WHEN purchase_frequency <= 0.5 THEN 'low_frequency'
        ELSE 'high_frequency'
    END AS frequency_group,
    ROUND(AVG(income), 2) AS avg_income
FROM generation_data
GROUP BY generation, frequency_group
ORDER BY avg_income DESC;
