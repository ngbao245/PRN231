CREATE DATABASE MyStoreDB
GO
USE [MyStoreDB]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/22/2024 4:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/22/2024 4:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/22/2024 4:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/22/2024 4:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/22/2024 4:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/22/2024 4:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/22/2024 4:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/22/2024 4:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](40) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/22/2024 4:58:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[UnitsInStock] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b0aa7be0-9f8e-4abd-b183-bf5014e8972d', N'Admin', N'ADMIN', N'28f5543f-3291-435b-b396-1c6c56505b0e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'da2d4169-d0be-4062-8d6a-71422edd000f', N'User', N'USER', N'3b296cfb-5907-425a-9e2e-4e7df48b0b0a')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (1, N'Beverages', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (2, N'Condiments', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (3, N'Confections', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (4, N'Dairy Products', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (5, N'Grains/Cereals', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (6, N'Meat/Poultry', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (7, N'Produce', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (8, N'Seafood', 0, NULL)

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (9, N'Spices', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (10, N'Snacks', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (11, N'Bakery', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (12, N'Beverage', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (13, N'Fruits', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (14, N'Vegetables', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (15, N'Frozen Foods', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (16, N'Sweets', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (17, N'Organic', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (18, N'Grains', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (19, N'Dairy', 0, NULL)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [IsDeleted], [DeletedAt]) VALUES (20, N'Seafood', 0, NULL);
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitsInStock], [UnitPrice], [IsDeleted], [DeletedAt]) VALUES (1, N'Pizza', 1, 1, CAST(5.00 AS Decimal(18, 2)), 0, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitsInStock], [UnitPrice], [IsDeleted], [DeletedAt]) VALUES (2, N'Hamburger', 2, 2, CAST(6.00 AS Decimal(18, 2)), 0, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitsInStock], [UnitPrice], [IsDeleted], [DeletedAt]) VALUES (3, N'Sushi', 3, 3, CAST(7.00 AS Decimal(18, 2)), 0, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitsInStock], [UnitPrice], [IsDeleted], [DeletedAt]) VALUES (5, N'Fried Chicken', 5, 5, CAST(8.00 AS Decimal(18, 2)), 0, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitsInStock], [UnitPrice], [IsDeleted], [DeletedAt]) VALUES (6, N'Salmon', 6, 6, CAST(8.00 AS Decimal(18, 2)), 0, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitsInStock], [UnitPrice], [IsDeleted], [DeletedAt]) VALUES (7, N'Steak', 7, 7, CAST(9.00 AS Decimal(18, 2)), 0, NULL)

DECLARE @CategoryIds TABLE (RowNum INT, CategoryId INT);

INSERT INTO @CategoryIds (RowNum, CategoryId)
VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), 
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20);

-- Tạo bảng tạm để lưu danh sách tên sản phẩm tiếng Việt với cột chỉ mục
DECLARE @ProductNames TABLE (RowNum INT, ProductName NVARCHAR(50));

INSERT INTO @ProductNames (RowNum, ProductName)
VALUES
(1, N'Bánh mì'), (2, N'Phở'), (3, N'Bún bò Huế'), (4, N'Gỏi cuốn'), (5, N'Chả giò'), 
(6, N'Nem rán'), (7, N'Bánh xèo'), (8, N'Bánh cuốn'), (9, N'Bánh chưng'), (10, N'Bánh tét'),
(11, N'Cà phê'), (12, N'Trá xanh'), (13, N'Trá sữa'), (14, N'Sữa đậu nành'), (15, N'Sữa chua'), 
(16, N'Nước mía'), (17, N'Nước dừa'), (18, N'Bánh bao'), (19, N'Bánh ngọt'), (20, N'Bánh bông lan'),
(21, N'Cháo lòng'), (22, N'Cháo gà'), (23, N'Cháo vịt'), (24, N'Cơm tấm'), (25, N'Cơm chiên'),
(26, N'Cơm gà'), (27, N'Cơm bò'), (28, N'Cơm cá'), (29, N'Cơm sườn'), (30, N'Cơm hến'),
(31, N'Bún chả'), (32, N'Bún thịt nướng'), (33, N'Bún riêu'), (34, N'Bún ốc'), (35, N'Bún mọc'),
(36, N'Bún mắm'), (37, N'Bún thái'), (38, N'Bún tôm'), (39, N'Bún măng'), (40, N'Bún mắm nêm'),
(41, N'Mì Quảng'), (42, N'Hủ tiếu'), (43, N'Mì tôm'), (44, N'Mì gà'), (45, N'Mì vịt tiềm'),
(46, N'Canh chua'), (47, N'Canh khổ qua'), (48, N'Canh cải'), (49, N'Canh bí'), (50, N'Canh cua'),
(51, N'Canh rau đay'), (52, N'Canh bầu'), (53, N'Canh hến'), (54, N'Canh cá'), (55, N'Canh gà'),
(56, N'Bánh bèo'), (57, N'Bánh khọt'), (58, N'Bánh đúc'), (59, N'Bánh ít'), (60, N'Bánh ít trần'),
(61, N'Bánh ít lá gai'), (62, N'Bánh tằm'), (63, N'Bánh tráng'), (64, N'Bánh ướt'), (65, N'Bánh giò');


-- Tạo thêm 200 bản ghi mẫu cho bảng Product
SET IDENTITY_INSERT [dbo].[Product] ON;

DECLARE @i INT = 8;
DECLARE @j INT = 1; -- Biến để duyệt qua danh sách tên sản phẩm
DECLARE @k INT = 1; -- Biến để duyệt qua danh sách CategoryId

WHILE @i <= 222
BEGIN
    DECLARE @CategoryId INT = (SELECT CategoryId FROM @CategoryIds WHERE RowNum = @k);
    DECLARE @ProductName NVARCHAR(50) = (SELECT ProductName FROM @ProductNames WHERE RowNum = @j);

    INSERT INTO [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitsInStock], [UnitPrice], [IsDeleted], [DeletedAt])
    VALUES (@i, @ProductName, @CategoryId, FLOOR(RAND() * 100), CAST(RAND() * 100 AS Decimal(18, 2)), 0, NULL);

    SET @i = @i + 1;
    SET @j = @j + 1;
    SET @k = @k + 1;

    -- Nếu @j vượt quá số lượng tên sản phẩm, quay lại tên sản phẩm đầu tiên
    IF @j > (SELECT COUNT(*) FROM @ProductNames)
    BEGIN
        SET @j = 1;
    END

    -- Nếu @k vượt quá số lượng CategoryId, quay lại CategoryId đầu tiên
    IF @k > (SELECT COUNT(*) FROM @CategoryIds)
    BEGIN
        SET @k = 1;
    END
END
-- done
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryId]
GO
