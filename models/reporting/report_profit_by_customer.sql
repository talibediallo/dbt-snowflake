SELECT
    customerid,
    customername,
    segment,
    country,
    SUM(orderprofit) as profit
FROM
    {{ ref('stg_orders') }}
GROUP BY
    ALL