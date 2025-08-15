-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- INSERT DATA
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- First, delete any existing data to avoid conflicts
DELETE FROM findings;
DELETE FROM consequences;
DELETE FROM disasters;
DELETE FROM country;

-- COUNTRIES (Japan, Pakistan, Bangladesh)
INSERT INTO country(country_id, name, city, latitude, longitude, total_population) VALUES
    -- Japan
    (1, 'Japan', 'Tokyo', 35.6895, 139.6917, '37 million'),
    (2, 'Japan', 'Osaka', 34.6937, 135.5023, '18.9 million'),
    (3, 'Japan', 'Sendai', 38.2682, 140.8694, '2.4 million'),
    -- Pakistan
    (4, 'Pakistan', 'Karachi', 24.8607, 67.0011, '15.7 million'),
    (5, 'Pakistan', 'Islamabad', 33.6844, 73.0479, '1.1 million'),
    (6, 'Pakistan', 'Lahore', 31.5497, 74.3436, '11.1 million'),
    -- Bangladesh
    (7, 'Bangladesh', 'Dhaka', 23.8103, 90.4125, '10.4 million'),
    (8, 'Bangladesh', 'Chittagong', 22.3569, 91.7832, '2.6 million');

-- DISASTERS (2015-2024)
INSERT INTO disasters (disaster_id, type, disaster_date, scale, num_of_affected) VALUES
    -- Japan
    (1, 'earthquake', '2015-03-11', 'Significant', 12000),
    (2, 'heavy rainfall', '2016-07-15', 'Significant', 15000),
    (3, 'sea storm', '2017-09-20', 'Large', 18000),
    (4, 'earthquake', '2018-06-18', 'Large', 25000),
    (5, 'heavy rainfall', '2019-07-20', 'Large', 30000),
    (6, 'sea storm', '2020-09-07', 'Large', 35000),
    (7, 'earthquake', '2021-02-13', 'Large', 42000),
    (8, 'heavy rainfall', '2022-08-03', 'Large', 47000),
    (9, 'sea storm', '2023-09-12', 'Large', 52000),
    (10, 'earthquake', '2024-05-05', 'Large', 58000),
    -- Pakistan
    (11, 'heavy rainfall', '2015-07-15', 'Large', 500000),
    (12, 'sea storm', '2016-08-20', 'Significant', 200000),
    (13, 'earthquake', '2017-10-08', 'Significant', 150000),
    (14, 'tornados', '2018-05-12', 'Small', 30000),
    (15, 'heavy rainfall', '2019-08-25', 'Large', 450000),
    (16, 'sea storm', '2020-09-10', 'Large', 320000),
    (17, 'earthquake', '2021-06-05', 'Significant', 210000),
    (18, 'tornados', '2022-04-22', 'Small', 25000),
    (19, 'heavy rainfall', '2023-08-11', 'Large', 470000),
    (20, 'sea storm', '2024-07-30', 'Significant', 280000),
    -- Bangladesh
    (21, 'sea storm', '2015-06-18', 'Large', 400000),
    (22, 'heavy rainfall', '2016-07-05', 'Large', 350000),
    (23, 'tornados', '2017-04-15', 'Small', 20000),
    (24, 'sea storm', '2018-05-20', 'Large', 420000),
    (25, 'heavy rainfall', '2019-08-15', 'Significant', 300000),
    (26, 'sea storm', '2020-07-25', 'Large', 500000),
    (27, 'tornados', '2021-03-12', 'Small', 15000),
    (28, 'heavy rainfall', '2022-08-10', 'Large', 380000),
    (29, 'sea storm', '2023-06-15', 'Significant', 310000),
    (30, 'heavy rainfall', '2024-07-18', 'Large', 400000);

-- IMPACTS/CONSEQUENCES
INSERT INTO consequences (conseq_id, disaster_id, environmental_impact, social_impact, economic_impact) VALUES
    -- Japan
    (1, 1, 'Coastal erosion in Miyagi', 'Loss of homes', 'USD 200M'),
    (2, 2, 'Flooded farmlands', 'Displacement of 500 families', 'USD 250M'),
    (3, 3, 'Severe coastal flooding', 'Injuries and evacuations', 'USD 300M'),
    (4, 4, 'Infrastructure damage', 'Deaths and injuries', 'USD 500M'),
    (5, 5, 'Crop failure', 'Evacuation of villages', 'USD 700M'),
    (6, 6, 'Major coastal destruction', 'Thousands displaced', 'USD 900M'),
    (7, 7, 'Landslides and erosion', 'Significant loss of life', 'USD 1.2B'),
    (8, 8, 'Severe flooding', 'Mass evacuations', 'USD 1.4B'),
    (9, 9, 'Harbor destruction', 'Economic shutdown', 'USD 1.6B'),
    (10, 10, 'Massive infrastructure collapse', 'Widespread homelessness', 'USD 2.0B'),
    -- Pakistan
    (11, 11, 'Flooded streets and damaged crops', 'Thousands displaced', 'Loss of agricultural output worth $200M'),
    (12, 12, 'Coastal erosion', 'Mass evacuations', 'Damage to fishing industry worth $150M'),
    (13, 13, 'Landslides and structural damage', 'Casualties and injuries', 'Reconstruction cost $300M'),
    (14, 14, 'Localized crop destruction', 'Minor injuries', 'Loss of $20M'),
    (15, 15, 'Severe flooding', 'Mass displacement', 'Loss of $250M'),
    (16, 16, 'Shoreline flooding', 'Villages evacuated', 'Loss of $180M'),
    (17, 17, 'Cracked infrastructure', 'Dozens injured', 'Repair cost $220M'),
    (18, 18, 'Tree uprooting', 'Minor home damage', 'Loss of $15M'),
    (19, 19, 'Flash floods', 'Thousands homeless', 'Loss of $270M'),
    (20, 20, 'Port damage', 'Fishing communities displaced', 'Loss of $160M'),
    -- Bangladesh
    (21, 21, 'Shoreline erosion', 'Thousands evacuated', 'Loss of $180M'),
    (22, 22, 'Urban flooding', 'Road closures', 'Loss of $140M'),
    (23, 23, 'Crop damage', 'Dozens injured', 'Loss of $10M'),
    (24, 24, 'Massive tidal surges', 'Mass evacuations', 'Loss of $210M'),
    (25, 25, 'Flooded villages', 'Displacement of families', 'Loss of $160M'),
    (26, 26, 'Severe coastal flooding', 'Thousands homeless', 'Loss of $250M'),
    (27, 27, 'Minor farmland damage', 'Casualties', 'Loss of $12M'),
    (28, 28, 'Widespread flooding', 'Hundreds injured', 'Loss of $200M'),
    (29, 29, 'Damaged coastal infrastructure', 'Mass relocation', 'Loss of $170M'),
    (30, 30, 'Urban flooding', 'Displacement of thousands', 'Loss of $230M');

-- SUMMARY/FINDINGS
INSERT INTO findings (findings_id, country_id, disaster_id, conseq_id, country_yearly_comparison, disaster_yearly_comparison, impact_yearly_comparison, global_warming_impact) VALUES
    -- Japan
    (1, 1, 1, 1, '2015: Significant impact', 'Earthquakes more frequent', 'USD 200M loss', 'Rising temperatures linked to tectonic shifts'),
    (2, 1, 2, 2, '2016: Slight increase', 'Rainfall intensity growing', 'USD 250M loss', 'Warmer oceans causing heavier rainfalls'),
    (3, 1, 3, 3, '2017: Noticeable rise', 'Sea storms worsening', 'USD 300M loss', 'Higher sea temperatures fueling stronger storms'),
    (4, 1, 4, 4, '2018: Significant spike', 'Earthquakes larger magnitude', 'USD 500M loss', 'Increased melting ice impacting earth crust'),
    (5, 1, 5, 5, '2019: Major floods', 'Heavy rainfall disasters', 'USD 700M loss', 'Extreme precipitation events due to warming'),
    (6, 1, 6, 6, '2020: Typhoon record', 'Sea storms stronger', 'USD 900M loss', 'Intensified typhoons from warmer sea surface'),
    (7, 1, 7, 7, '2021: Large scale damage', 'Earthquakes deadlier', 'USD 1.2B loss', 'Global warming stress on geological faults'),
    (8, 1, 8, 8, '2022: Peak flooding', 'Heavy rainfall record', 'USD 1.4B loss', 'Rising sea levels increasing flood risks'),
    (9, 1, 9, 9, '2023: Coastal damage', 'Sea storms historic', 'USD 1.6B loss', 'Warmer waters intensifying coastal storms'),
    (10, 1, 10, 10, '2024: Worst year yet', 'Earthquakes devastating', 'USD 2.0B loss', 'Climate-induced environmental instability'),
    -- Pakistan
    (11, 4, 11, 11, 'Increase in flooding incidents compared to 2014', 'More intense rainfall events', 'Higher crop loss and displacement', 'Attributed to rising sea surface temperatures'),
    (12, 4, 12, 12, 'Sea storms becoming more frequent', 'Wave heights increasing', 'Fishermen facing higher risks', 'Linked to ocean warming'),
    (13, 5, 13, 13, 'Earthquake intensity rising slightly', 'More urban impact', 'Increased reconstruction costs', 'Possibly related to glacial melt pressure changes'),
    (14, 4, 14, 14, 'Unusual tornado activity recorded', 'More storms than average', 'Minor agricultural loss', 'Connected to unusual wind patterns'),
    (15, 6, 15, 15, 'Rainfall duration increasing', 'Larger flood zones', 'Massive crop destruction', 'Linked to shifting monsoon patterns'),
    (16, 4, 16, 16, 'Stronger coastal flooding', 'Storm surge heights increased', 'Fishing industry losses', 'Sea level rise contributing'),
    (17, 5, 17, 17, 'Seismic activity unchanged', 'Urban damage high', 'Repair costs climbing', 'Indirectly linked to environmental stress'),
    (18, 6, 18, 18, 'Tornado incidents stable', 'Storm paths shifting', 'Minor damage', 'Linked to changing atmospheric conditions'),
    (19, 4, 19, 19, 'Floods more destructive', 'Higher water flow', 'More homes destroyed', 'Glacial melt increasing water flow'),
    (20, 4, 20, 20, 'Ports damaged more often', 'Storm frequency rising', 'Fishing villages relocating', 'Sea level rise playing a role'),
    -- Bangladesh
    (21, 7, 21, 21, 'Sea storm damage rising', 'Tidal surges higher', 'Greater fishing losses', 'Warming oceans causing stronger cyclones'),
    (22, 7, 22, 22, 'Rainfall more erratic', 'Urban drainage overwhelmed', 'Economic losses mounting', 'Linked to heavier monsoon rains'),
    (23, 8, 23, 23, 'Tornado activity rare but damaging', 'Increased crop losses', 'Minor financial loss', 'Linked to shifting wind systems'),
    (24, 7, 24, 24, 'Storms more frequent', 'Tidal flood areas expanding', 'Coastal villages disappearing', 'Rising sea levels and warming oceans'),
    (25, 8, 25, 25, 'Heavy rainfall flooding consistent', 'Flood-prone areas growing', 'Agricultural productivity dropping', 'Shifting rainfall patterns'),
    (26, 7, 26, 26, 'Cyclone frequency high', 'More intense storms', 'Large displacement costs', 'Warmer oceans creating stronger storms'),
    (27, 8, 27, 27, 'Tornadoes irregular', 'Rural areas hit hardest', 'Low cost but high human toll', 'Wind pattern anomalies increasing'),
    (28, 7, 28, 28, 'Flood damage severe', 'Wider affected regions', 'Economic burden growing', 'Linked to rising monsoon intensity'),
    (29, 8, 29, 29, 'Sea storms intensifying', 'Infrastructure losses rising', 'Mass relocation costly', 'Sea level rise linked'),
    (30, 7, 30, 30, 'Urban flooding persistent', 'Drainage systems failing', 'Economic burden high', 'Extreme rainfall linked to warming atmosphere');

------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SELECT QUERIES

-- Leveraging index
-- 1. Japan's large earthquakes
SELECT type, disaster_date, scale, num_of_affected
FROM disasters
WHERE type = 'earthquake' AND scale = 'Large'
AND disaster_id IN (SELECT disaster_id FROM findings WHERE country_id = 1);

-- 2. Japan's peak flooding events
SELECT country_yearly_comparison, disaster_yearly_comparison, global_warming_impact
FROM findings
WHERE country_yearly_comparison LIKE '%Peak flooding%'
AND country_id = 1;

-- 3. Japan's sea storm impacts
SELECT environmental_impact, social_impact, economic_impact
FROM consequences
WHERE disaster_id IN (
    SELECT disaster_id FROM disasters
    WHERE type = 'sea storm' AND disaster_id IN (
        SELECT disaster_id FROM findings WHERE country_id = 1
    )
);

-- 1. Pakistan's significant disasters
SELECT type, disaster_date, scale, num_of_affected
FROM disasters
WHERE scale = 'Significant'
AND disaster_id IN (SELECT disaster_id FROM findings WHERE country_id IN (4,5,6));

-- 2. Pakistan's heavy rainfall impacts
SELECT environmental_impact, social_impact, economic_impact
FROM consequences
WHERE disaster_id IN (
    SELECT disaster_id FROM disasters
    WHERE type = 'heavy rainfall' AND disaster_id IN (
        SELECT disaster_id FROM findings WHERE country_id IN (4,5,6)
    )
);

-- 3. Pakistan's yearly trends
SELECT country_yearly_comparison, impact_yearly_comparison
FROM findings
WHERE country_id IN (4,5,6) AND country_yearly_comparison LIKE '%increase%';

-- 1. Bangladesh's sea storms
SELECT type, disaster_date, scale, num_of_affected
FROM disasters
WHERE type = 'sea storm'
AND disaster_id IN (SELECT disaster_id FROM findings WHERE country_id IN (7,8));

-- 2. Bangladesh's urban flooding
SELECT environmental_impact, social_impact, economic_impact
FROM consequences
WHERE environmental_impact LIKE '%urban flooding%'
AND disaster_id IN (SELECT disaster_id FROM findings WHERE country_id IN (7,8));

-- 3. Bangladesh's climate impacts
SELECT disaster_yearly_comparison, global_warming_impact
FROM findings
WHERE country_id IN (7,8) AND global_warming_impact LIKE '%monsoon%';
;

-- DETAILED_ANALYSIS

SELECT * FROM japan_detailed_analysis;
SELECT * FROM pakistan_detailed_analysis;
SELECT * FROM bangladesh_detailed_analysis;
SELECT * FROM detailed_analysis;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------


