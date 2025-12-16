WITH daily_cases AS (
    SELECT
        state,
        report_date,
        confirmed - LAG(confirmed) OVER (
            PARTITION BY state ORDER BY report_date
        ) AS daily_new_cases
    FROM covid_data
)
SELECT
    state,
    report_date,
    daily_new_cases,
    ROUND(
        AVG(daily_new_cases) OVER (
            PARTITION BY state
            ORDER BY report_date
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ),
        2
    ) AS moving_avg_7_days
FROM daily_cases;
