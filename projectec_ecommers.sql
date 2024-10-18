USE SPECTRA
GO
--PROJECTECOMMERCE

--SELECT * FROM StatusPart;
--SELECT * FROM BrandPart;
--SELECT * FROM CategoryPart;
--SELECT * FROM SubCategoryPart;
--SELECT * FROM ProductTypePart;
--SELECT * FROM UsersPart;
--SELECT * FROM ProductsPart;
--SELECT * FROM OrdersPart;
--SELECT * FROM OrderDetailsPart;

-------------------------------------------Status Part--------------------------------
--Creating table for Status of the Orders

--CREATE TABLE Ecommerce_Status(
--	OrderStatusID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--	StatusType NVARCHAR(20) UNIQUE NOT NULL
--);

--Inserting table for Status of the Orders

--INSERT INTO Ecommerce_Status(StatusType)
--SELECT StatusType FROM StatusPart;

--SELECT * FROM Ecommerce_Status;

------------------------------------------Brand Part-----------------------------------------------

--Creating table for product brands

--CREATE TABLE Ecommerce_Brand(
--	BrandID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--	BrandName NVARCHAR(50) UNIQUE NOT NULL
--);

--Inserting table for product brands

--INSERT INTO Ecommerce_Brand(BrandName)
--SELECT BrandName FROM BrandPart;

--SELECT * FROM Ecommerce_Brand;

----------------------------------------Category Part----------------------------------------------
--Creating table for the category of products

--CREATE TABLE Ecommerce_Category(
--	CategoryID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--	CategoryName NVARCHAR(50) UNIQUE NOT NULL
--);

--Inserting table for the category of products

--INSERT INTO Ecommerce_Category(CategoryName)
--SELECT CategoryName FROM CategoryPart;

--SELECT * FROM Ecommerce_Category;



--------------------------------------Sub-Category Part--------------------------------------------

--Creating table for the subcategory of products

--CREATE TABLE Ecommerce_SubCategory(
--	SubCategoryID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--	SubCategoryName NVARCHAR(50) UNIQUE NOT NULL
--);

--Inserting table for the subcategory of products

--INSERT INTO Ecommerce_SubCategory(SubCategoryName)
--SELECT SubCategory FROM SubCategoryPart;

--SELECT * FROM Ecommerce_SubCategory;

--------------------------------------Product Type Part---------------------------------------------

--Creating table for the type of products

--CREATE TABLE Ecommerce_ProductType(
--	TypeID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--	TypeName NVARCHAR(50) UNIQUE NOT NULL
--);

--Inserting table for the type of products

--INSERT INTO Ecommerce_ProductType(TypeName)
--SELECT [Type] FROM ProductTypePart;

--SELECT * FROM Ecommerce_ProductType;

-----------------------------------------Users Part--------------------------------------
--Creating table for user Data 
--CREATE TABLE Ecommerce_Users(
--UserID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
--FirstName NVARCHAR(50) NOT NULL,
--LastName NVARCHAR(50),
--UserName NVARCHAR(50),
--Email NVARCHAR(100) UNIQUE NOT NULL,
--UserPassword NVARCHAR(50) NOT NULL,
--UserAddress NVARCHAR(100) NOT NULL,
--Phone BIGINT NOT NULL
--);
-------Inserting table for users data
--INSERT INTO Ecommerce_Users(FirstName, LastName, Username, Email, UserPassword, UserAddress, Phone)
--SELECT FirstName, LastName, Username, Email, [Password], [Address], Phone FROM UsersPart;

--SELECT * FROM Ecommerce_Users;

----------------------------------------------Products Part-----------------------------------------
--Creating table for products 

--CREATE TABLE Ecommerce_Products(
--	ProductID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--	ProductName NVARCHAR(100) NOT NULL,
--	BrandID INT NOT NULL,
--	TypeID INT NOT NULL,
--	Rating DECIMAL(4,1),
--	MarketPrice DECIMAL(10,2) NOT NULL,
--	SalePrice DECIMAL(10,2) NOT NULL,
--	CategoryID INT NOT NULL,
--	SubCategoryID INT NOT NULL,
--	ProductDescription NVARCHAR(350)
--	FOREIGN KEY (BrandID) REFERENCES Ecommerce_Brand(BrandID),
--	FOREIGN KEY (TypeID) REFERENCES Ecommerce_ProductType(TypeID),
--	FOREIGN KEY (CategoryID) REFERENCES Ecommerce_Category(CategoryID),
--	FOREIGN KEY (SubCategoryID) REFERENCES Ecommerce_SubCategory(SubCategoryID),
);
--Inserting table for products

--INSERT INTO Ecommerce_Products (ProductName, BrandID, TypeID, Rating, MarketPrice, SalePrice, CategoryID, SubCategoryID, ProductDescription)
--SELECT [Name], BrandID, TypeID, Rating, MarketPrice, SalePrice, CategoryID, SubCategoryID, [Description] 
--FROM ProductsPart;

--SELECT * FROM Ecommerce_Products

------------------------------------------Orders Part-----------------------------------------

--Creating table for orders part

--CREATE TABLE Ecommerce_Orders(
--	OrderID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--	UserID INT NOT NULL,
--	Orders_date DATE,
--	Shipping_date DATE,
--	OrderStatusID INT,
--	FOREIGN KEY (UserID) REFERENCES Ecommerce_Users(UserID),
--	FOREIGN KEY (OrderStatusID) REFERENCES Ecommerce_Status(OrderStatusID)
--);

--Inserting table for orders part

--INSERT INTO Ecommerce_Orders(UserID, Orders_date, Shipping_date, OrderStatusID)
--SELECT UserID, Orders_date, Shipping_date, [Status] FROM OrdersPart;

--SELECT * FROM Ecommerce_Orders;

----------------------------------------Order Details Part----------------------------------------

--Creating table for order details part

--CREATE TABLE Ecommerce_OrderDetails(
--	OrderDetailsID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--	OrderID INT,
--	ProductID INT,
--	Quantity INT,
--	Product_Price DECIMAL(10,2),
--	Total_Price DECIMAL(10,2),
--	FOREIGN KEY (OrderID) REFERENCES Ecommerce_Orders(OrderID),
--	FOREIGN KEY (ProductID) REFERENCES Ecommerce_Products(ProductID)
);

--Inserting table for order details part

--INSERT INTO Ecommerce_OrderDetails(OrderID, ProductID, Quantity, Product_Price, Total_Price)
--SELECT OrderID, ProductID, Quantity, Product_Price, Total_Price FROM OrderDetailsPart;

--SELECT * FROM Ecommerce_OrderDetails;














