CREATE TABLE country (
    country_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    city TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    total_population TEXT NOT NULL,
    UNIQUE (latitude, longitude)
);

--- DISASTERS TABLE
CREATE TABLE disasters (
    disaster_id INTEGER PRIMARY KEY,
    type TEXT NOT NULL CHECK(type IN ('earthquake', 'tsunami', 'volcanic eruption', 'tornados', 'sea storm', 'heavy rainfall')),
    disaster_date DATE NOT NULL,
    scale TEXT NOT NULL CHECK(scale IN ('Small', 'Large', 'Significant')),
    num_of_affected INTEGER NOT NULL
);

--- IMPACT TABLE
CREATE TABLE consequences (
    conseq_id INTEGER PRIMARY KEY,
    disaster_id INTEGER NOT NULL,
    environmental_impact TEXT NOT NULL,
    social_impact TEXT NOT NULL,
    economic_impact TEXT NOT NULL,
    FOREIGN KEY (disaster_id) REFERENCES disasters(disaster_id)
);

--- SUMMARY TABLE
CREATE TABLE findings (
    Findings_id INTEGER PRIMARY KEY,
    country_id INTEGER NOT NULL,
    disaster_id INTEGER NOT NULL,
    conseq_id INTEGER NOT NULL,
    country_yearly_comparison TEXT NOT NULL,
    disaster_yearly_comparison TEXT NOT NULL,
    impact_yearly_comparison TEXT NOT NULL,
    global_warming_impact TEXT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES country(country_id),
    FOREIGN KEY (disaster_id) REFERENCES disasters(disaster_id),
    FOREIGN KEY (conseq_id) REFERENCES consequences(conseq_id)
);

--------------------------------------------------------------------------------------------------------
-- Your original effective indexes (keep these)
CREATE INDEX disaster_location ON disasters(type, scale);
CREATE INDEX comparison_for_date ON findings(country_yearly_comparison);
CREATE INDEX impact_country ON consequences(disaster_id);

-- Strategic additions to fill gaps (only 3 new indexes)
CREATE INDEX idx_country_name_city ON country(name, city);
CREATE INDEX idx_disaster_dates ON disasters(disaster_date);
CREATE INDEX idx_findings_global_warming ON findings(global_warming_impact);
--------------------------------------------------------------------------------------------------------
-- View for Japan's detailed analysis (consistent with your naming)
CREATE VIEW japan_detailed_analysis AS
SELECT
    country.name,
    country.city,
    disasters.num_of_affected,
    consequences.environmental_impact,
    consequences.social_impact,
    findings.country_yearly_comparison,
    findings.disaster_yearly_comparison,
    findings.impact_yearly_comparison,
    findings.global_warming_impact
FROM
    disasters
LEFT JOIN
    findings ON disasters.disaster_id = findings.disaster_id
LEFT JOIN
    country ON findings.country_id = country.country_id
LEFT JOIN
    consequences ON disasters.disaster_id = consequences.disaster_id
WHERE
    country.name = 'Japan'
ORDER BY
    disasters.disaster_date;
    
-- View for Pakistan's detailed analysis (same structure)
CREATE VIEW pakistan_detailed_analysis AS
SELECT
    country.name,
    country.city,
    disasters.num_of_affected,
    consequences.environmental_impact,
    consequences.social_impact,
    findings.country_yearly_comparison,
    findings.disaster_yearly_comparison,
    findings.impact_yearly_comparison,
    findings.global_warming_impact
FROM
    disasters
LEFT JOIN
    findings ON disasters.disaster_id = findings.disaster_id
LEFT JOIN
    country ON findings.country_id = country.country_id
LEFT JOIN
    consequences ON disasters.disaster_id = consequences.disaster_id
WHERE
    country.name = 'Pakistan'
ORDER BY
    disasters.disaster_date;

-- View for Bangladesh's detailed analysis (identical format)
CREATE VIEW bangladesh_detailed_analysis AS
SELECT
    country.name,
    country.city,
    disasters.num_of_affected,
    consequences.environmental_impact,
    consequences.social_impact,
    findings.country_yearly_comparison,
    findings.disaster_yearly_comparison,
    findings.impact_yearly_comparison,
    findings.global_warming_impact
FROM
    disasters
LEFT JOIN
    findings ON disasters.disaster_id = findings.disaster_id
LEFT JOIN
    country ON findings.country_id = country.country_id
LEFT JOIN
    consequences ON disasters.disaster_id = consequences.disaster_id
WHERE
    country.name = 'Bangladesh'
ORDER BY
    disasters.disaster_date;


--- VIEW FOR REPRESENTING DATA
CREATE VIEW detailed_analysis AS
SELECT
    country.name,
    country.city,
    disasters.num_of_affected,
    consequences.environmental_impact,
    consequences.social_impact,
    findings.country_yearly_comparison,
    findings.disaster_yearly_comparison,
    findings.impact_yearly_comparison,
    findings.global_warming_impact
FROM
    disasters
LEFT JOIN
    findings ON disasters.disaster_id = findings.disaster_id
LEFT JOIN
    country ON findings.country_id = country.country_id
LEFT JOIN
    consequences ON disasters.disaster_id = consequences.disaster_id;
