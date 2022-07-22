SELECT
  Country,
  AVG(Total_Profit) AS Avg_Gain
FROM
  `salesreport.sales_practice`
WHERE
  Order_Priority IN ("C",
    "H")
GROUP BY
  Country
ORDER BY
  Avg_Gain DESC
LIMIT
  1
OFFSET
  2
