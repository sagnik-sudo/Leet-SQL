WITH
  summary AS (
  SELECT
    Item_Type,
    SUM(Units_Sold) AS Net_Sold_Count,
    EXTRACT (YEAR
    FROM
      Order_Date) AS Order_Year
  FROM
    `salesreport.sales_practice`
  GROUP BY
    Item_Type,
    Order_Year)
SELECT
  *
FROM (
  SELECT
    *,
    LAG(Net_Sold_Count) OVER (ORDER BY Order_Year) AS Last_Year_Sold
  FROM
    summary)
WHERE
  Net_Sold_Count > Last_Year_Sold
