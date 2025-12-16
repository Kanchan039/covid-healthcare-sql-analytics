SELECT
    state,
    MAX(confirmed) AS total_cases,
    MAX(deaths) AS total_deaths,
    ROUND(
        MAX(deaths) * 100.0 / NULLIF(MAX(confirmed), 0),
        2
    ) AS mortality_rate_percent
FROM covid_data
GROUP BY state;
