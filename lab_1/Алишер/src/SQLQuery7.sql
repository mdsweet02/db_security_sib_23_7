CREATE TABLE dbo.Product (
    ProductID INT PRIMARY KEY,         -- Идентификатор продукта
    Name NVARCHAR(255) NOT NULL,       -- Название продукта
    ListPrice DECIMAL(18,2),           -- Цена продукта

);
