CREATE TABLE dbo.WorkOrder (
    WorkOrderID INT PRIMARY KEY,
    ProductID INT NOT NULL,
    OrderQty INT,
    StartDate DATETIME,

);