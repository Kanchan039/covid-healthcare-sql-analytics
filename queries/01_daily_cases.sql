SELECT
    state,
    report_date,
    confirmed,
    confirmed - LAG(confirmed) OVER (
        PARTITION BY state ORDER BY report_date
    ) AS daily_new_cases
FROM covid_data;
