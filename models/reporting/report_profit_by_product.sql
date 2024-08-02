SELECT
    productid
    category,
    productname,
    subcategory,
    SUM(orderprofit) AS profit
FROM
    {{ ref('stg_orders') }}
GROUP BY
    ALL
