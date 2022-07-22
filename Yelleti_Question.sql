SELECT
  *
FROM (
  SELECT
    Country,
    COUNT(Order_ID) AS Total_Count
  FROM
    `elliptical-feat-353310.salesreport.sales_practice`
  WHERE
    Sales_Channel = "Offline"
  GROUP BY
    Country)
WHERE
  Total_Count >= 300