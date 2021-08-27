USE [ProductsDB]
GO

/****** Object:  Table [dbo].[Product]    Script Date: 27.08.2021 15:48:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NULL,
	[ProductInfo] [varchar](200) NULL,
	[ProductCategory] [varchar](100) NULL,
	[ProductImgUrl] [varchar](300) NULL,
	[LanguageCode] [varchar](10) NULL,
	[ProductPrice] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('Apple MacBook Air M1'
           ,'8GB 256GB SSD macOS 13" QHD Taþýnabilir Bilgisayar Uzay Grisi MGN63TU/A'
           ,'Bilgisayar'
           ,'https://productimages.hepsiburada.net/s/49/550/10983949860914.jpg/format:webp'
           ,'Türkçe'
           ,'9499 TL')
GO


USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('Apple MacBook Air M1'
           ,'8GB 256GB SSD macOS 13" QHD Portable Computer Space Gray MGN63TU/A'
           ,'Computer'
           ,'https://productimages.hepsiburada.net/s/49/550/10983949860914.jpg/format:webp'
           ,'English'
           ,'$ 1135')
GO

USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('Samsung Galaxy A51'
           ,'256 GB (Samsung Türkiye Garantili)'
           ,'Telefon'
           ,'https://productimages.hepsiburada.net/s/76/550/110000018010309.jpg/format:webp'
           ,'Türkçe'
           ,'3624 TL')
GO

USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('Samsung Galaxy A51'
           ,'256 GB (Samsung Turkey Guaranteed)'
           ,'Phone'
           ,'https://productimages.hepsiburada.net/s/76/550/110000018010309.jpg/format:webp'
           ,'English'
           ,'$ 430')
GO

USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('iPhone 12 Pro 128 GB'
           ,'Ceramic Shield ön yüzey
			Dokulu mat cam arka yüzey ve
			paslanmaz çelik tasarým'
           ,'Telefonv'
           ,'https://productimages.hepsiburada.net/s/66/550/110000007422559.jpg/format:webp'
           ,'Türkçe'
           ,'14999 TL')
GO

USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('iPhone 12 Pro 128 GB'
           ,'Ceramic Shield front
			Textured matte glass back and
			stainless steel design'
           ,'Phone'
           ,'https://productimages.hepsiburada.net/s/66/550/110000007422559.jpg/format:webp'
           ,'English'
           ,'$ 1790')
GO

USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('Apple Airpods Pro'
           ,'Bluetooth Kulaklýk MWP22TU/A (Apple Türkiye Garantili)'
           ,'Kulaklýk'
           ,'https://productimages.hepsiburada.net/s/75/1500/110000017040122.jpg'
           ,'Türkçe'
           ,'2099 TL')
GO

USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('Apple Airpods Pro'
           ,'Bluetooth Headphone MWP22TU/A (Apple Turkey Guaranteed)'
           ,'Headphone'
           ,'https://productimages.hepsiburada.net/s/75/1500/110000017040122.jpg'
           ,'English'
           ,'$ 250')
GO

USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('Monster Abra A5'
           ,'V17.2 Intel Core i5 11400H 8GB 500GB SSD RTX 3050Ti Freedos 15.6 FHD Taþýnabilir Bilgisayar'
           ,'Bilgisayar'
           ,'https://productimages.hepsiburada.net/s/98/1500/110000040847611.jpg'
           ,'Türkçe'
           ,'9299 TL')
GO

USE [ProductsDB]
GO

INSERT INTO [dbo].[Product]
           ([ProductName]
           ,[ProductInfo]
           ,[ProductCategory]
           ,[ProductImgUrl]
           ,[LanguageCode]
           ,[ProductPrice])
     VALUES
           ('Monster Abra A5'
           ,'V17.2 Intel Core i5 11400H 8GB 500GB SSD RTX 3050Ti Freedos 15.6" FHD Portable Computer'
           ,'Computer'
           ,'https://productimages.hepsiburada.net/s/98/1500/110000040847611.jpg'
           ,'English'
           ,'$ 1109')
GO