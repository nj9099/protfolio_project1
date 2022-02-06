/****** Cleaned FACT_InternetSales  ******/
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey] 
  --,[PromotionKey]
  --,[CurrencyKey]
  --,[SalesTerritoryKey]
  , 
  [SalesOrderNumber] 
  --,[SalesOrderLineNumber]
  --,[RevisionNumber]
  --,[OrderQuantity]
  --,[UnitPrice]
  --,[ExtendedAmount]
  --,[UnitPriceDiscountPct]
  --,[DiscountAmount]
  --,[ProductStandardCost]
  --,[TotalProductCost]
  , 
  [SalesAmount] 
  --,[TaxAmt]
  --,[Freight]
  --,[CarrierTrackingNumber]
  --,[CustomerPONumber]
  --,[OrderDate]
  --,[DueDate]
  --,[ShipDate]
FROM 
  [dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE())-2 -- to filter data that is generated in that past two years.
ORDER BY 
  OrderDateKey ASC
