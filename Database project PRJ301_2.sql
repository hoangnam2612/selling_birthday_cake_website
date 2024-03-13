CREATE DATABASE Project3_PRJ301
USE Project3_PRJ301
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
  [uID] [int] IDENTITY(1, 1) PRIMARY KEY CLUSTERED, -- Định nghĩa khóa chính tại đây
  [user] [varchar](255) NULL,
  [pass] [varchar](255) NULL,
  [isSell] [int] NOT NULL DEFAULT 0, -- Thiết lập giá trị mặc định là 0 cho isSell
  [isAdmin] [int] NOT NULL DEFAULT 0  -- Thiết lập giá trị mặc định là 0 cho isAdmin
) ON [PRIMARY];
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'sa', N'123', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Nam Hoang', N'2612', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Duc', N'456', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Nhu', N'3011', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Sam', N'2310', 1, 1)

SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'BIRTHDAY CAKE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'EVENT CAKE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'CAKE FOR CHILDREN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'ACCESSORY')
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (1, N'Flower Of Love Cake', N'https://product.hstatic.net/200000411281/product/13-02_77c7c970cfcd4043bd4a5b451adea3bb_grande.png', 320000, N'Bánh kem tươi cốt bánh 5 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hoa kem tươi.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (2, N'LiLy Garden Cake', N'https://product.hstatic.net/200000411281/product/lily_garden_d3608a4d05be411098c5f62202a6cf14_grande.png', 380000, N'Bánh kem tươi cốt bánh 4 lớp chiffon phô mai, nhân kem phô mai, trang hoa kem tươi.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (3, N'Princess Cake', N'https://product.hstatic.net/200000411281/product/13-03_eee16cd2465944e9b27b82ac92f2271d_grande.png', 380000, N'Bánh kem tươi cốt bánh 3 lớp, chiffon vani, nhân cocktail hoa quả, trang trí hoa kem tươi.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (4, N'Endless Love Cake', N'https://product.hstatic.net/200000411281/product/13-01_6c0d083ac2cc4497934dd8afed0c7486_master.png', 380000, N'Bánh kem tươi cốt bánh 3 lớp chiffon vani, nhân cocktail hoa quả khô, trang trí kem tươi.', 1, 12)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (5, N'Rosie Love Cake', N'https://product.hstatic.net/200000411281/product/rosie_love_24e1cc3a3aab4b65a82a2d080e4d2785_master.png', 380000, N'Bánh kem tươi cốt bánh 4 lớp chiffon phô mai, nhân kem phô mai, trang hoa kem tươi.', 1, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (6, N'Chocolate Lover Cake', N'https://product.hstatic.net/200000411281/product/banh_kem_amazing_chocolate_c89da3fb2deb4060be34f42b054922f7_master.png', 380000, N'Bánh kem tươi cốt bánh 3 lớp chiffon sô cô la chip, kem nhân phô mai, phủ ganat và trang trí sô cô la trắng.', 1, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (7, N'Amazing Chocolate Cake', N'https://product.hstatic.net/200000411281/product/banh_kem_amazing_chocolate__1__c6e8edf9331b4ef486135b4aedc7a01d_master.png', 380000, N'Bánh kem tươi cốt bánh 3 lớp chiffon sô cô la chip, kem nhân phô mai, phủ ganat đen và trang trí sô cô la màu.', 1, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (8, N'Kiss Me More Cake', N'https://product.hstatic.net/200000411281/product/kiss_me_more_2d409f52f6954f478c120d35dc15ed6a_master.png', 150000, N'Bánh kem tươi cốt bánh 3 lớp chiffon caramen, trang trí kem tươi.', 1, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (9, N'Sweet Heart 4 Cake', N'https://product.hstatic.net/200000411281/product/2-removebg-preview__1__ba51f7d4eaf74031877384148b2a7a9f_master.png', 150000, N'Bánh kem tươi cốt bánh 3 lớp chiffon caramen, trang trí ganache caramen, macaron và sô cô la.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (10, N'Tasty Love Cake', N'https://product.hstatic.net/200000411281/product/tasty_love_3aff1f0711d94c519a7b16412843752b_master.png', 150000, N'Bánh kem tươi cốt bánh 3 lớp chiffon phô mai, trang trí hoa quả tươi.', 1, 13)

INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (11, N'Pink Floral Cake', N'https://product.hstatic.net/200000411281/product/1_a660132a629c42feae95dd82ab3c85b5_master.png', 320000, N'Bánh kem tươi cốt bánh 6 lớp chiffon hoa quả khô, nhân kem tươi, trang trí hoa kem tươi.', 2, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (12, N'Kiss Of Lady Cake', N'https://product.hstatic.net/200000411281/product/banh_kem_kiss_of_lady_3_168240099cd1488fbf8a85b890a44bde_master.png', 380000, N'Bánh kem tươi cốt bánh chiffon vani, nhân cocktail hoa quả, trang trí bánh cupcake, sô cô la và bông đường bi bạc.', 2, 13)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (13, N'Passion Fruit Mousse', N'https://product.hstatic.net/200000411281/product/2_6021e843fcb8458aa4f889525b3b2ff2_master.png', 390000, N'Bánh mousse chanh leo, cốt bánh 1 lớp chiffon phô mai, trang trí socola và mứt chuối.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (14, N'Pink Lady Cake', N'https://product.hstatic.net/200000411281/product/3_902553bd4ee8436a9acf34642cc167e6_master.png', 380000, N'Bánh kem tươi cốt bánh 4 lớp chiffon hoa quả khô, nhân kem tươi, trang trí kẹo bông đường, sô cô la và macaron.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (15, N'Dreamy Lady Cake', N'https://product.hstatic.net/200000411281/product/banh_kem_dreamy_lady_7754385160e94854bd34ea30f15b0c2d_master.png', 380000, N'Bánh kem tươi cốt bánh 3 lớp chiffon caramen, nhân kem tươi bánh caramen, phủ ganat caramen và trang trí sô cô la', 2, 12)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (16, N'Macaron Delight Cake', N'https://product.hstatic.net/200000411281/product/10_d7039cd288ac4c6a844771d4f448b4aa_master.png', 380000, N'Bánh kem tươi cốt bánh 4 lớp chiffon hoa quả khô, nhân kem tươi, trang trí kẹo bông đường, sô cô la và macaron.', 2, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (17, N'Beloved Cake', N'https://product.hstatic.net/200000411281/product/8_e791f1fb133f47548b7a85ac6174b503_master.png', 320000, N'Bánh kem tươi cốt bánh 4 lớp chiffon phô mai, kem nhân phô mai, trang trí kẹo bông đường, sô cô la và macaron.', 2, 6)

INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (18, N'Cloudy Doraemon Cake', N'https://product.hstatic.net/200000411281/product/1-03_9153eb9828514f419bdccc9dbe49e410_master.jpg', 320000, N'Bánh kem tươi cốt bánh chiffon phô mai, kem tươi nhân phô mai, trang trí phụ kiện hình Doraemon, sô cô la và bông đường bi bạc.', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (19, N'Pink Angel Cake', N'https://product.hstatic.net/200000411281/product/1-01_3a81a0864ccc48adbad99820677e1133_master.jpg', 320000, N'Bánh kem tươi cốt bánh chiffon phô mai, kem tươi nhân phô mai, trang trí phụ kiện búp bê thiên thần, sô cô la và bông đường bi bạc.', 3, 1)

INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (20, N'Knife and Fork Set for 6 People with Candles', N'https://product.hstatic.net/200000411281/product/z3186933416425_58f0d7321b592361fb7f3514de78a48b_33ec742aa0b84cd0922302152a55512a_master.jpg', 13000, '', 4, 9)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (21, N'Knife and Fork Set for 6 People', N'https://product.hstatic.net/200000411281/product/z3186933402260_039cb5d0c0c486e5b29b5babe57705a7_18ef7a34fa5143d3b03ef180fbed69ac_master.jpg', 11000, '', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (22, N'Happy Birthday Candle Set', N'https://product.hstatic.net/200000411281/product/z3180685170648_461ee660c21479311e59ea0ab8a06b2d_63e56118b47b44e6aa2c296834a6d20e_master.jpg', 23000, '', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (23, N'Baby Girl Birthday Hat', N'https://product.hstatic.net/200000411281/product/z3180699185366_91fa69a4f7f851b8306f16601d65b7e6_43da349a880945f09da99d6045934f91_master.jpg', 6000, N'Mũ sinh nhật ngộ nghĩnh cho bé gái.', 4, 13)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (24, N'Boys Birthday Hat', N'https://product.hstatic.net/200000411281/product/z3180697588588_82728ad8f57acc3f5975126872069a6e_f369defeaf444eb1abbb58aeaf0ae0fd_master.jpg', 6000, N'Mũ sinh nhật bé trai nhiều màu ngộ nghĩnh.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (25, N'Beeswax Stick Candles', N'https://product.hstatic.net/200000411281/product/z3180687197873_0222b2edecb38460cd6e398a9e17e458_af549051e48a463b9da3951a9a0bd021_master.jpg', 13000, N'Thành phần: Sáp ong nguyên chất; bấc bông, tăm tre', 4, 11)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [cateID], [sell_ID]) VALUES (26, N'Number Candle', N'https://product.hstatic.net/200000411281/product/z3180684435428_3a4ce2edb81e0e90cdf2948313d147bc_09d4580e330240c386c4e23d8dd64b86_master.jpg', 21000, N'Thành phần: Sắp ong tinh khiết, bấc bông, nhựa PP thực phẩm', 4, 19)

SET IDENTITY_INSERT [dbo].[product] OFF

-- Tạo mối quan hệ một-nhiều giữa bảng Product và bảng Category
ALTER TABLE product
ADD CONSTRAINT fk_product_category
FOREIGN KEY (cateID)
REFERENCES category (cid);

-- Create the Order table
CREATE TABLE [dbo].[Order](
    [orderID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
    [accountID] [int] NOT NULL,
    [orderDate] [datetime] NOT NULL,
    [totalAmount] [money] NOT NULL
);

-- Create the OrderDetail table
CREATE TABLE [dbo].[OrderDetail](
    [orderDetailID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[orderID] [int] NOT NULL,
    [productID] [int] NOT NULL,
    [quantity] [int] NOT NULL,
    [unitPrice] [money] NOT NULL
);


-- Create a foreign key constraint in the OrderDetail table to link it to the Product table
ALTER TABLE [dbo].[OrderDetail]
ADD CONSTRAINT fk_orderdetail_product
FOREIGN KEY ([productID])
REFERENCES [dbo].[product] ([id]);

-- Add a foreign key constraint to connect OrderDetail to Order
ALTER TABLE [dbo].[OrderDetail]
ADD CONSTRAINT FK_OrderDetail_Order FOREIGN KEY (orderID)
REFERENCES [dbo].[Order] (orderID);


ALTER TABLE [dbo].[Cart]
ADD CONSTRAINT fk_cart_product
FOREIGN KEY ([ProductID])
REFERENCES [dbo].[product] ([id]);







