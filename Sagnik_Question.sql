SELECT
  Region AS Continent,
  Country,
  EXTRACT(YEAR
  FROM
    Order_Date) AS Sale_Year,
  CONCAT("£ ",ROUND(SUM(Total_Profit),0)) AS Net_Profit
FROM
  `salesreport.sales_practice`
WHERE
  Region = "Europe"
  AND Order_Date BETWEEN "2012-01-01"
  AND "2015-12-31"
GROUP BY
  Region,
  Country,
  Sale_Year
ORDER BY
  Sale_Year ASC,
  Country DESC