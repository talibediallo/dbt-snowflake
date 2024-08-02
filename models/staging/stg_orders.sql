SELECT
    o.orderid,
    o.orderdate,
    o.shipdate,
    o.ordersellingprice - o.ordercostprice as orderprofit,
    c.customerid,
    c.customername,
    c.segment,
    c.country,
    p.productid,
    p.category,
    p.productname,
    p.subcategory
FROM
    {{ ref('raw_orders') }} as o
LEFT JOIN
    {{ ref('raw_customers') }} as c
ON o.customerid = c.customerid
LEFT JOIN
    {{ ref('raw_product') }} as p
ON o.productid = p.productid