SELECT        Name AS [Product Name], ListPrice AS [List Price], SellStartDate AS [Sell Start Date], SellEndDate AS [Sell End Date], ProductSubcategoryID
FROM            Production.Product
WHERE        (ProductSubcategoryID IN (@prmProductSubID)) OR
                         (ProductSubcategoryID IS NULL) AND (0 IN (@prmProductSubID))
ORDER BY [Product Name], [List Price]

