USE [master]
GO
/****** Object:  Database [OOO_Parfumer]    Script Date: 05.11.2022 10:18:53 ******/
CREATE DATABASE [OOO_Parfumer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OOO_Parfumer', FILENAME = N'C:\Users\sasha\OOO_Parfumer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OOO_Parfumer_log', FILENAME = N'C:\Users\sasha\OOO_Parfumer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OOO_Parfumer] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OOO_Parfumer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OOO_Parfumer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET ARITHABORT OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OOO_Parfumer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OOO_Parfumer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OOO_Parfumer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OOO_Parfumer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OOO_Parfumer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OOO_Parfumer] SET  MULTI_USER 
GO
ALTER DATABASE [OOO_Parfumer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OOO_Parfumer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OOO_Parfumer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OOO_Parfumer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OOO_Parfumer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OOO_Parfumer] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OOO_Parfumer] SET QUERY_STORE = OFF
GO
ALTER AUTHORIZATION ON DATABASE::[OOO_Parfumer] TO [DESKTOP-25F6OD6\sasha]
GO
USE [OOO_Parfumer]
GO
/****** Object:  Table [dbo].[Order_]    Script Date: 05.11.2022 10:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CodeForSeparation] [nvarchar](20) NOT NULL,
	[Current_Date_] [datetime] NOT NULL,
	[DateOfSeparation] [date] NOT NULL,
	[Status_] [nvarchar](20) NOT NULL,
	[FIO] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Order_] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Order_In_Points]    Script Date: 05.11.2022 10:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_In_Points](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Points] [int] NOT NULL,
	[ID_Order] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Order_In_Points] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PointOfIssue]    Script Date: 05.11.2022 10:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointOfIssue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](6) NOT NULL,
	[Address_] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[PointOfIssue] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.11.2022 10:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description_] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](100) NOT NULL,
	[Current_Sale] [int] NOT NULL,
	[Count_] [int] NOT NULL,
	[Price] [nvarchar](100) NULL,
	[Image_] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Product] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Product_In_Order]    Script Date: 05.11.2022 10:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_In_Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Product] [int] NOT NULL,
	[ID_Order] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Product_In_Order] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[User_]    Script Date: 05.11.2022 10:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](200) NOT NULL,
	[Login_] [nvarchar](50) NOT NULL,
	[Password_] [nvarchar](200) NOT NULL,
	[Role_] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[User_] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[User_Orders]    Script Date: 05.11.2022 10:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_User] [int] NOT NULL,
	[ID_Order] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[User_Orders] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Order_] ON 

INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (1, N'201', CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10' AS Date), N'Новый ', N'Новиков Матвей Маркович')
INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (2, N'202', CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11' AS Date), N'Новый ', N'')
INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (3, N'203', CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12' AS Date), N'Новый ', N'Соловьев Пётр Никитич')
INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (4, N'204', CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13' AS Date), N'Новый ', N'')
INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (5, N'205', CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14' AS Date), N'Новый ', N'Васильева Софья Глебовна')
INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (6, N'206', CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15' AS Date), N'Новый ', N'')
INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (7, N'207', CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16' AS Date), N'Новый ', N'')
INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (8, N'208', CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17' AS Date), N'Новый ', N'')
INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (9, N'209', CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18' AS Date), N'Новый ', N'Львов Роман Павлович')
INSERT [dbo].[Order_] ([ID], [CodeForSeparation], [Current_Date_], [DateOfSeparation], [Status_], [FIO]) VALUES (10, N'210', CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19' AS Date), N'Завершен', N'')
SET IDENTITY_INSERT [dbo].[Order_] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_In_Points] ON 

INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (11, 24, 1)
INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (12, 25, 2)
INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (13, 26, 3)
INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (14, 27, 4)
INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (15, 28, 5)
INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (16, 29, 6)
INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (17, 30, 7)
INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (18, 31, 8)
INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (19, 32, 9)
INSERT [dbo].[Order_In_Points] ([ID], [ID_Points], [ID_Order]) VALUES (20, 33, 10)
SET IDENTITY_INSERT [dbo].[Order_In_Points] OFF
GO
SET IDENTITY_INSERT [dbo].[PointOfIssue] ON 

INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (1, N'344288', N'г. Ангарск, ул. Чехова, 1')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (2, N'614164', N'г.Ангарск,  ул. Степная, 30')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (3, N'394242', N'г. Ангарск, ул. Коммунистическая, 43')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (4, N'660540', N'г. Ангарск, ул. Солнечная, 25')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (5, N'125837', N'г. Ангарск, ул. Шоссейная, 40')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (6, N'125703', N'г. Ангарск, ул. Партизанская, 49')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (7, N'625283', N'г. Ангарск, ул. Победы, 46')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (8, N'614611', N'г. Ангарск, ул. Молодежная, 50')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (9, N'454311', N'г.Ангарск, ул. Новая, 19')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (10, N'660007', N'г.Ангарск, ул. Октябрьская, 19')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (11, N'603036', N'г. Ангарск, ул. Садовая, 4')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (12, N'450983', N'г.Ангарск, ул. Комсомольская, 26')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (13, N'394782', N'г. Ангарск, ул. Чехова, 3')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (14, N'603002', N'г. Ангарск, ул. Дзержинского, 28')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (15, N'450558', N'г. Ангарск, ул. Набережная, 30')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (16, N'394060', N'г.Ангарск, ул. Фрунзе, 43')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (17, N'410661', N'г. Ангарск, ул. Школьная, 50')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (18, N'625590', N'г. Ангарск, ул. Коммунистическая, 20')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (19, N'625683', N'г. Ангарск, ул. 8 Марта')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (20, N'400562', N'г. Ангарск, ул. Зеленая, 32')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (21, N'614510', N'г. Ангарск, ул. Маяковского, 47')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (22, N'410542', N'г. Ангарск, ул. Светлая, 46')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (23, N'620839', N'г. Ангарск, ул. Цветочная, 8')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (24, N'443890', N'г. Ангарск, ул. Коммунистическая, 1')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (25, N'603379', N'г. Ангарск, ул. Спортивная, 46')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (26, N'603721', N'г. Ангарск, ул. Гоголя, 41')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (27, N'410172', N'г. Ангарск, ул. Северная, 13')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (28, N'420151', N'г. Ангарск, ул. Вишневая, 32')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (29, N'125061', N'г. Ангарск, ул. Подгорная, 8')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (30, N'630370', N'г. Ангарск, ул. Шоссейная, 24')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (31, N'614753', N'г. Ангарск, ул. Полевая, 35')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (32, N'426030', N'г. Ангарск, ул. Маяковского, 44')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (33, N'450375', N'г. Ангарск ул. Клубная, 44')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (34, N'625560', N'г. Ангарск, ул. Некрасова, 12')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (35, N'630201', N'г. Ангарск, ул. Комсомольская, 17')
INSERT [dbo].[PointOfIssue] ([ID], [Number], [Address_]) VALUES (36, N'190949', N'г. Ангарск, ул. Мичурина, 26')
SET IDENTITY_INSERT [dbo].[PointOfIssue] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (1, N'Одеколон Dragon Parfums Dragon Noir, 100 мл', N'Мужской парфюм', 5, 6, N'500', N'А112Т4.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (2, N'Туалетная вода Paris Line Parfums Cosa Nostra Platinum, 100 мл', N'Женский парфюм', 2, 14, N'500', N'F893T5.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (3, N'Туалетная вода Paris Line Parfums Vodka Extreme, 100 мл', N'Женский парфюм', 4, 7, N'500', N'G832G6.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (4, N'Парфюмерная вода Parfums Constantine Mademoiselle 5, 50 мл', N'Женский парфюм', 3, 9, N'500', N'E530Y6.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (5, N'Туалетная вода Today Parfum G-Club Egoist, 100 мл', N'Женский парфюм', 3, 18, N'500', N'F346G5.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (6, N'Туалетная вода Paris Line Parfums Dollar, 100 мл', N'Женский парфюм', 2, 4, N'500', N'J432E4.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (7, N'Парфюмерная вода Today Parfum Prestige №6 Eclat, 17 мл', N'Женский парфюм', 5, 16, N'500', N'D344Y7.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (8, N'Парфюмерная вода Parfums Constantine Mademoiselle 7, 50 мл', N'Женский парфюм', 3, 5, N'500', N'V324R5.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (9, N'Туалетная вода Dilis Parfum Mila, 100 мл', N'Женский парфюм', 5, 2, N'500', N'E245R5.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (10, N'Духи Dilis Parfum Classic Collection №18, 30 мл', N'Женский парфюм', 3, 16, N'500', N'D378D3.jpg')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (11, N'Парфюмерная вода TRUSSARDI Donna Trussardi (2011), 50 мл', N'Мужской парфюм', 4, 8, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (12, N'Туалетная вода Paris Line Parfums Cosa Nostra, 100 мл', N'Женский парфюм', 5, 7, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (13, N'Духи Dilis Parfum Ночная Фиалка, 9.5 мл', N'Женский парфюм', 2, 11, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (14, N'Туалетная вода Dilis Parfum Steelman Zone, 100 мл', N'Мужской парфюм', 4, 12, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (15, N'Парфюмерная вода Yves de Sistelle Incidence pour Femme, 65 мл', N'Женский парфюм', 2, 5, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (16, N'Парфюмерная вода Parfums Constantine New York Perfume Six, 50 мл', N'Мужской парфюм', 3, 16, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (17, N'Туалетная вода Dilis Parfum Cool&Grey, 100 мл', N'Мужской парфюм', 4, 6, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (18, N'Туалетная вода Today Parfum G-Club Millioner, 100 мл', N'Мужской парфюм', 4, 9, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (19, N'Духи Dilis Parfum Classic Collection №34, 30 мл', N'Женский парфюм', 5, 13, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (20, N'Туалетная вода Parfums Constantine Gentleman №3, 100 мл', N'Женский парфюм', 4, 6, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (21, N'Туалетная вода Today Parfum Cola Cherry, 50 мл', N'Женский парфюм', 2, 9, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (22, N'Туалетная вода HUGO BOSS Boss Bottled, 50 мл', N'Мужской парфюм', 4, 15, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (23, N'Парфюмерная вода DOLCE & GABBANA Dolce&Gabbana pour', N'Женский парфюм', 3, 6, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (24, N'Парфюмерная вода DOLCE & GABBANA Dolce Shine, 75 мл', N'Женский парфюм', 4, 3, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (25, N'Туалетная вода Paris Line Parfums Dollar Diamond, 100 мл', N'Мужской парфюм', 2, 14, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (26, N'Парфюмерная вода LACOSTE Lacoste pour Femme, 30 мл', N'Мужской парфюм', 4, 7, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (27, N'Туалетная вода Dilis Parfum Aqua Cool, 100 мл', N'Мужской парфюм', 4, 12, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (28, N'Dilis Parfum Мужской Walker Breeze', N'Мужской парфюм', 2, 5, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (29, N'Туалетная вода HUGO BOSS Boss Bottled, 100 мл', N'Мужской парфюм', 5, 3, N'500', N'')
INSERT [dbo].[Product] ([ID], [Description_], [Category], [Current_Sale], [Count_], [Price], [Image_]) VALUES (30, N'Туалетная вода DOLCE & GABBANA 3 L''Imperatrice, 50 мл', N'Женский парфюм', 2, 8, N'500', N'')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_In_Order] ON 

INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (1, 1, 1)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (2, 2, 1)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (3, 3, 1)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (4, 4, 2)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (5, 5, 2)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (6, 6, 2)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (7, 7, 3)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (8, 8, 3)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (9, 9, 3)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (10, 10, 4)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (11, 11, 4)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (12, 12, 4)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (13, 13, 5)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (14, 14, 5)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (15, 15, 5)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (16, 16, 6)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (17, 17, 6)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (18, 18, 6)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (19, 19, 7)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (20, 20, 7)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (21, 21, 7)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (22, 22, 8)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (23, 23, 8)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (24, 24, 8)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (25, 25, 9)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (26, 26, 9)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (27, 27, 9)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (28, 28, 10)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (29, 29, 10)
INSERT [dbo].[Product_In_Order] ([ID], [ID_Product], [ID_Order]) VALUES (30, 30, 10)
SET IDENTITY_INSERT [dbo].[Product_In_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[User_] ON 

INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (11, N'Федоров Глеб Михайлович', N'o@outlook.com', N'2L6KZG', N'Администратор')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (12, N'Семенова Софья Дмитриевна', N'hr6zdl@yandex.ru', N'uzWC67', N'Администратор')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (13, N'Васильев Егор Германович', N'kaft93x@outlook.com', N'8ntwUp', N'Администратор')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (14, N'Смирнова Ирина Александровна', N'dcu@yandex.ru', N'YOyhfR', N'Менеджер')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (15, N'Петров Андрей Владимирович', N'19dn@outlook.com', N'RSbvHv', N'Менеджер')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (16, N'Егоров Максим Андреевич', N'pa5h@mail.ru', N'rwVDh9', N'Менеджер')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (17, N'Никитин Артур Алексеевич', N'281av0@gmail.com', N'LdNyos', N'Клиент')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (18, N'Киселев Максим Сергеевич', N'8edmfh@outlook.com', N'gynQMT', N'Клиент')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (19, N'Борисов Тимур Егорович', N'sfn13i@mail.ru', N'AtnDjr', N'Клиент')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (20, N'Климов Арсений Тимурович', N'g0orc3x1@outlook.com', N'JlFRCZ', N'Клиент')
INSERT [dbo].[User_] ([ID], [FIO], [Login_], [Password_], [Role_]) VALUES (21, N'Guest', N'Guest', N'qqqqwwww', N'Клиент')
SET IDENTITY_INSERT [dbo].[User_] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Orders] ON 

INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (2, 11, 1)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (3, 12, 2)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (4, 13, 3)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (5, 14, 4)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (6, 15, 5)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (7, 16, 6)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (8, 17, 7)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (9, 18, 8)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (10, 19, 9)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (11, 20, 10)
INSERT [dbo].[User_Orders] ([ID], [ID_User], [ID_Order]) VALUES (12, 21, 1)
SET IDENTITY_INSERT [dbo].[User_Orders] OFF
GO
ALTER TABLE [dbo].[Order_In_Points]  WITH CHECK ADD FOREIGN KEY([ID_Order])
REFERENCES [dbo].[Order_] ([ID])
GO
ALTER TABLE [dbo].[Order_In_Points]  WITH CHECK ADD FOREIGN KEY([ID_Points])
REFERENCES [dbo].[PointOfIssue] ([ID])
GO
ALTER TABLE [dbo].[Product_In_Order]  WITH CHECK ADD FOREIGN KEY([ID_Order])
REFERENCES [dbo].[Order_] ([ID])
GO
ALTER TABLE [dbo].[Product_In_Order]  WITH CHECK ADD FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[User_Orders]  WITH CHECK ADD FOREIGN KEY([ID_Order])
REFERENCES [dbo].[Order_] ([ID])
GO
ALTER TABLE [dbo].[User_Orders]  WITH CHECK ADD FOREIGN KEY([ID_User])
REFERENCES [dbo].[User_] ([ID])
GO
USE [master]
GO
ALTER DATABASE [OOO_Parfumer] SET  READ_WRITE 
GO
