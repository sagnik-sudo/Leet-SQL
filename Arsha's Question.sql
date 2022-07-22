SELECT
  COUNT(Order_ID) AS Total_Entries,
  SUM(Total_Profit) AS Net_Profit,
  MIN(Total_Profit) AS Min_Profit,
  AVG(Total_Profit) AS Avg_Profit
FROM
  `salesreport.sales_practice`
WHERE
  Country = "Chad"
