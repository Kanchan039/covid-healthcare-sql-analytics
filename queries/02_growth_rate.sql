SELECT
    state,
    report_date,
    ROUND(
        (confirmed - LAG(confirmed) OVER (PARTITION BY state ORDER BY report_date))
        * 100.0 / NULLIF(LAG(confirmed) OVER (PARTITION BY state ORDER BY report_date), 0),
        2
    ) AS daily_growth_rate_percent
FROM covid_data;
