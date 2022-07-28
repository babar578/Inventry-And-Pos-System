USE [Dock27PosWebPortal]
GO
/****** Object:  User [new]    Script Date: 8/11/2021 7:33:14 AM ******/
CREATE USER [new] FOR LOGIN [new] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [saa]    Script Date: 8/11/2021 7:33:14 AM ******/
CREATE USER [saa] FOR LOGIN [saa] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ReturnToVendorDetail]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnToVendorDetail](
	[Id] [int] NOT NULL,
	[VoucherLineNo] [varchar](4) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Quantity] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[TotalRate] [float] NOT NULL,
	[LineRemarks] [nvarchar](200) NULL,
	[Gst] [float] NULL,
	[AdjustmentIN] [float] NULL,
	[AdjustmentOUT] [float] NULL,
 CONSTRAINT [PK_ReturnToVendorDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[VoucherLineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorToWarehouseDetail]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorToWarehouseDetail](
	[Id] [int] NOT NULL,
	[VoucherLineNo] [varchar](4) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Quantity] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[TotalRate] [float] NOT NULL,
	[LineRemarks] [nvarchar](200) NULL,
	[Gst] [float] NULL,
	[AdjustmentIN] [float] NULL,
	[AdjustmentOUT] [float] NULL,
 CONSTRAINT [PK_PurchaseFromVendorDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[VoucherLineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WastageDetail]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WastageDetail](
	[Id] [int] NOT NULL,
	[VoucherLineNo] [varchar](4) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Quantity] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[TotalRate] [float] NOT NULL,
	[LineRemarks] [nvarchar](200) NULL,
	[Gst] [float] NULL,
	[AdjustmentIN] [float] NULL,
	[AdjustmentOUT] [float] NULL,
 CONSTRAINT [PK_WastageDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[VoucherLineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueToLocationDetail]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueToLocationDetail](
	[Id] [int] NOT NULL,
	[VoucherLineNo] [varchar](4) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Quantity] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[TotalRate] [float] NOT NULL,
	[LineRemarks] [nvarchar](200) NULL,
	[Gst] [float] NULL,
	[AdjustmentIN] [float] NULL,
	[AdjustmentOUT] [float] NULL,
 CONSTRAINT [PK_IssueToLocationDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[VoucherLineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WastageHead]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WastageHead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[LocationId] [int] NULL,
	[DepartmentId] [int] NULL,
	[TransactionDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_WastageHead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClosingInventoryHead]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosingInventoryHead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_ClosingInventoryHead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClosingInventoryDetail]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosingInventoryDetail](
	[Id] [int] NOT NULL,
	[VoucherLineNo] [varchar](4) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Quantity] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[TotalRate] [float] NOT NULL,
	[LineRemarks] [nvarchar](200) NULL,
 CONSTRAINT [PK_ClosingInventoryDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[VoucherLineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueToLocationHead]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueToLocationHead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[LocationId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[IssuanceDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_IssueToLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeningHead]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningHead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NOT NULL,
	[Discount] [float] NULL,
	[SurCharge] [float] NULL,
	[GstCharges] [float] NULL,
	[GrossAmount] [float] NULL,
	[TotalNetAmount] [float] NULL,
	[TransactionDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_PurchaseFromOpeningHead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeningDetail]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningDetail](
	[Id] [int] NOT NULL,
	[VoucherLineNo] [varchar](4) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Quantity] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[TotalRate] [float] NOT NULL,
	[LineRemarks] [nvarchar](200) NULL,
	[Gst] [float] NULL,
	[AdjustmentIN] [float] NULL,
	[AdjustmentOUT] [float] NULL,
 CONSTRAINT [PK_PurchaseFromOpeningDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[VoucherLineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorToWarehouseHead]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorToWarehouseHead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorId] [int] NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NOT NULL,
	[Discount] [float] NOT NULL,
	[SurCharge] [float] NOT NULL,
	[GstCharges] [float] NOT NULL,
	[GrossAmount] [float] NOT NULL,
	[TotalNetAmount] [float] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_PurchaseFromVendorHead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnToWarehouseHead]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnToWarehouseHead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[LocationId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_ReturnToWarehouseHead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnToWarehouseDetail]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnToWarehouseDetail](
	[Id] [int] NOT NULL,
	[VoucherLineNo] [varchar](4) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Quantity] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[TotalRate] [float] NOT NULL,
	[LineRemarks] [nvarchar](200) NULL,
	[Gst] [float] NULL,
	[AdjustmentIN] [float] NULL,
	[AdjustmentOUT] [float] NULL,
 CONSTRAINT [PK_ReturnToWarehouseDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[VoucherLineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnToVendorHead]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnToVendorHead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorId] [int] NULL,
	[DocNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[LocationId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[Discount] [float] NOT NULL,
	[SurCharge] [float] NOT NULL,
	[GstCharges] [float] NOT NULL,
	[GrossAmount] [float] NOT NULL,
	[TotalNetAmount] [float] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_ReturnToVendorHead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[UnitId] [int] NULL,
	[Price] [float] NOT NULL,
	[Tax] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[PromotionStartDate] [datetime] NULL,
	[PromotionEndDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[DepartmentId] [int] NOT NULL,
	[IsRawMaterial] [bit] NOT NULL,
	[ItemGroupId] [int] NULL,
	[Remarks] [nvarchar](500) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ItemsStockInHand]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_ItemsStockInHand] (@DateFrom DATETIME,@DateTo DATETIME )
RETURNS TABLE 
AS
RETURN 
(

    Select ItemId,	ItemName,	(select CategoryId from Items where id=ItemId) as CategoriesID,
    SUM(OpeningQuantity) As OpeningQuantity,
    SUM(VendorToWarehouseQuantity) As VendorToWarehouseQuantity,
    SUM(IssueToLocationQuantity) As IssueToLocationQuantity,
    SUM(ReturnToWarehouseQuantity) As ReturnToWarehouseQuantity,
    SUM(ReturnToVendorQuantity) As ReturnToVendorQuantity,
    SUM(WastageQuantity) As WastageQuantity,
    SUM(ClosingInventoryQuantity) As ClosingInventoryQuantity,

    ISNULL(SUM((OpeningQuantity + VendorToWarehouseQuantity - IssueToLocationQuantity + ReturnToWarehouseQuantity - ReturnToVendorQuantity - WastageQuantity - ClosingInventoryQuantity )),0) AS BalanceQuantity,
    --SUM(Rate) As Rate, SUM(TotalRate) As TotalRate,
	
	(
	SELECT 
	
	ROUND
	(
	SUM(w.TotalRate)
	/
	--NULLIF(SUM(w.Quantity),0)
	nullif(ISNULL(SUM((OpeningQuantity + VendorToWarehouseQuantity - IssueToLocationQuantity + ReturnToWarehouseQuantity - ReturnToVendorQuantity - WastageQuantity - ClosingInventoryQuantity )),0),0) 
	
	,2) 
	FROM VendorToWarehouseDetail w 
	WHERE w.ItemId=a.ItemId) AverageRate

    from(
    
        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks,
			d.Quantity AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from OpeningHead h
        INNER JOIN OpeningDetail d ON h.Id= d.Id
            
		UNION ALL
    
        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks,
			0 AS OpeningQuantity,
            d.Quantity AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from VendorToWarehouseHead h
        INNER JOIN VendorToWarehouseDetail d ON h.Id= d.Id

        UNION ALL

        select 
            h.Id,	DocNo , IssuanceDate As TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks,
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        d.Quantity As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from IssueToLocationHead h
        INNER JOIN IssueToLocationDetail d ON h.id= d.Id

        UNION ALL

        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks,
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            d.Quantity As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from ReturnToWarehouseHead h
        INNER JOIN ReturnToWarehouseDetail d ON h.Id= d.Id

        UNION ALL


        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName,	Rate,	TotalRate,	LineRemarks,
     
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            d.Quantity As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from ReturnToVendorHead h
        INNER JOIN ReturnToVendorDetail d ON h.id= d.Id

        UNION ALL

        select 
            h.Id,	DocNo,TransactionDate,	CreatedBy,
            ItemId,	ItemName,	Rate,	TotalRate,	LineRemarks,
		
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            d.Quantity As WastageQuantity,
            0 As ClosingInventoryQuantity

        from WastageHead h
        INNER JOIN WastageDetail d ON h.id= d.Id
        
        UNION ALL

        select 
            h.Id,	DocNo,TransactionDate,	CreatedBy,
            ItemId,	ItemName,	Rate,	TotalRate,	LineRemarks,
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            d.Quantity As ClosingInventoryQuantity

        from ClosingInventoryHead h
        INNER JOIN ClosingInventoryDetail d ON h.id= d.Id

    )a

Group by 
	ItemId, ItemName 
	
)





GO
/****** Object:  Table [dbo].[Units]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[IsRawMaterial] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_InventoryBal_Simple]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE FUNCTION [dbo].[fn_InventoryBal_Simple] (@DateFrom DATETIME,@DateTo DATETIME )

RETURNS TABLE 
AS
RETURN 
(


	 WITH tbl AS(
     
     
 Select 1 AS IsOpening, MyUnion.TransactionDate , MyUnion.VendorId ,  MyUnion.ItemId,	MyUnion.ItemName,	
    0 As OpeningQuantity,
    0 As VendorToWarehouseQuantity,
    0 As IssueToLocationQuantity,
    0 As ReturnToWarehouseQuantity,
    0 As ReturnToVendorQuantity,
    0 As WastageQuantity,
    0 As ClosingInventoryQuantity,
    ISNULL(OpeningQuantity,0) + ISNULL(VendorToWarehouseQuantity,0) - ISNULL (IssueToLocationQuantity,0) + ISNULL (ReturnToWarehouseQuantity,0) - ISNULL (ReturnToVendorQuantity,0) - ISNULL (WastageQuantity,0) + ISNULL (ClosingInventoryQuantity,0) AS OpeningBalanceQuantity,
    0 As ClosingBalanceQuantity,
	0 As Rate,
    0 As TotalRate,
    0 As AverageRate

    from(
    
        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks, null AS VendorId, 
    
            d.Quantity AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from OpeningHead  h
        INNER JOIN OpeningDetail d ON h.Id= d.Id
        where 1 = 1  AND TransactionDate < @DateFrom	
		
		UNION ALL 
		
        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks, h.VendorId, 
    
            0 AS OpeningQuantity,
            d.Quantity AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from VendorToWarehouseHead h
        INNER JOIN VendorToWarehouseDetail d ON h.Id= d.Id              
        where 1 = 1  AND TransactionDate < @DateFrom
        
        
        UNION ALL

        select 
            h.Id,	DocNo , IssuanceDate As TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks, '' AS VendorId, 
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        d.Quantity As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from IssueToLocationHead h
        INNER JOIN IssueToLocationDetail d ON h.id= d.Id
        where 1 = 1  AND IssuanceDate < @DateFrom

        UNION ALL

        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks, '' AS  VendorId, 
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            d.Quantity As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from ReturnToWarehouseHead h
        INNER JOIN ReturnToWarehouseDetail d ON h.Id= d.Id
        where 1 = 1  AND TransactionDate < @DateFrom

        UNION ALL


        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName,	Rate,	TotalRate,	LineRemarks, h.VendorId, 
     
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            d.Quantity As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from ReturnToVendorHead h
        INNER JOIN ReturnToVendorDetail d ON h.id= d.Id
        where 1 = 1  AND TransactionDate < @DateFrom

        UNION ALL

        select 
            h.Id,	DocNo,TransactionDate,	CreatedBy,
            ItemId,	ItemName,	Rate,	TotalRate,	LineRemarks, '' AS VendorId, 
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            d.Quantity As WastageQuantity,
            0 As ClosingInventoryQuantity

        from WastageHead h
        INNER JOIN WastageDetail d ON h.id= d.Id
        where 1 = 1  AND TransactionDate < @DateFrom

        UNION ALL

        select 
            h.Id,	DocNo,TransactionDate,	CreatedBy,
            ItemId,	ItemName,	Rate,	TotalRate,	LineRemarks, '' AS VendorId, 
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            d.Quantity As ClosingInventoryQuantity

        from ClosingInventoryHead h
        INNER JOIN ClosingInventoryDetail d ON h.id= d.Id
        where 1 = 1  AND TransactionDate < @DateFrom
    )MyUnion


    UNION ALL

     
 Select 0 AS IsOpening, MyUnion.TransactionDate,  MyUnion.VendorId ,  MyUnion.ItemId, MyUnion.ItemName,	
   
	ISNULL((OpeningQuantity),0) As OpeningQuantity,
    ISNULL((VendorToWarehouseQuantity),0) As VendorToWarehouseQuantity,
    ISNULL((IssueToLocationQuantity),0) As IssueToLocationQuantity,
    ISNULL((ReturnToWarehouseQuantity),0) As ReturnToWarehouseQuantity,
    ISNULL((ReturnToVendorQuantity),0) As ReturnToVendorQuantity,
    ISNULL((WastageQuantity),0) As WastageQuantity,
    ISNULL((ClosingInventoryQuantity),0) As ClosingInventoryQuantity,
    0 As OpeningBalanceQuantity,
    ISNULL((OpeningQuantity + VendorToWarehouseQuantity - IssueToLocationQuantity + ReturnToWarehouseQuantity - ReturnToVendorQuantity - WastageQuantity + ClosingInventoryQuantity ),0) AS ClosingBalanceQuantity,
	ISNULL((Rate),0) As Rate,
    ISNULL(TotalRate,0) As TotalRate,
    (SELECT ROUND(SUM(w.TotalRate)/NULLIF(SUM(w.Quantity),0),2) FROM VendorToWarehouseDetail w WHERE w.ItemId=MyUnion.ItemId) As AverageRate
    
    from(
    
        
        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks, null as VendorId, 
    
			d.Quantity AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from OpeningHead h
        INNER JOIN OpeningDetail d ON h.Id= d.Id
        where 1 = 1  AND (convert(date, TransactionDate) BETWEEN @DateFrom AND @DateTo)    
        
        UNION ALL 
        
        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks, h.VendorId, 
    
			0 AS OpeningQuantity,
            d.Quantity AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from VendorToWarehouseHead h
        INNER JOIN VendorToWarehouseDetail d ON h.Id= d.Id
        where 1 = 1  AND (convert(date, TransactionDate) BETWEEN @DateFrom AND @DateTo)
        
        
        
        UNION ALL

        select 
            h.Id,	DocNo , IssuanceDate As TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks, '' AS VendorId, 
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        d.Quantity As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from IssueToLocationHead h
        INNER JOIN IssueToLocationDetail d ON h.id= d.Id
        where 1 = 1  AND (convert(date, IssuanceDate) BETWEEN @DateFrom AND @DateTo)

        UNION ALL

        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName, Rate,	TotalRate,	LineRemarks, '' AS VendorId, 
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            d.Quantity As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from ReturnToWarehouseHead h
        INNER JOIN ReturnToWarehouseDetail d ON h.Id= d.Id
        where 1 = 1  AND (convert(date, TransactionDate) BETWEEN @DateFrom AND @DateTo)

        UNION ALL


        select 
            h.Id,	DocNo, TransactionDate,	CreatedBy,
            ItemId,	ItemName,	Rate,	TotalRate,	LineRemarks, h.VendorId, 
     
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            d.Quantity As ReturnToVendorQuantity,
            0 As WastageQuantity,
            0 As ClosingInventoryQuantity

        from ReturnToVendorHead h
        INNER JOIN ReturnToVendorDetail d ON h.id= d.Id
        where 1 = 1  AND (convert(date, TransactionDate) BETWEEN @DateFrom AND @DateTo)

        UNION ALL

        select 
            h.Id,	DocNo,TransactionDate,	CreatedBy,
            ItemId,	ItemName,	Rate,	TotalRate,	LineRemarks, '' AS VendorId, 
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            d.Quantity As WastageQuantity,
            0 As ClosingInventoryQuantity

        from WastageHead h
        INNER JOIN WastageDetail d ON h.id= d.Id
        where 1 = 1  AND (convert(date, TransactionDate) BETWEEN @DateFrom AND @DateTo)

        UNION ALL

        select 
            h.Id,	DocNo,TransactionDate,	CreatedBy,
            ItemId,	ItemName,	Rate,	TotalRate,	LineRemarks, '' AS VendorId, 
    
			0 AS OpeningQuantity,
            0 AS VendorToWarehouseQuantity, 
	        0 As IssueToLocationQuantity, 
            0 As ReturnToWarehouseQuantity,
            0 As ReturnToVendorQuantity,
            0 As WastageQuantity,
            d.Quantity As ClosingInventoryQuantity

        from ClosingInventoryHead h
        INNER JOIN ClosingInventoryDetail d ON h.id= d.Id
        where 1 = 1  AND (convert(date, TransactionDate) BETWEEN @DateFrom AND @DateTo)
    )MyUnion

)

SELECT 
		t.IsOpening, t.TransactionDate, t.VendorId ,t.ItemId, t.ItemName, u.Name As UnitName,
		c.Name As CategoryName,  
            
				t.OpeningQuantity,
                t.OpeningBalanceQuantity,
				t.VendorToWarehouseQuantity, 
				t.IssueToLocationQuantity,
                t.ReturnToWarehouseQuantity,
				t.ReturnToVendorQuantity, 
				t.WastageQuantity,
				t.ClosingInventoryQuantity, 
                t.ClosingBalanceQuantity,
				t.Rate, 
				t.TotalRate,
                t.AverageRate,
                
                (t.ClosingBalanceQuantity * t.AverageRate) AS InventoryValue

	FROM 
		tbl t 
		left outer JOIN Items It on (t.ItemId = It.Id)
		left outer JOIN Categories c on (It.CategoryId = c.Id)
		left outer JOIN Units u on (It.UnitId = u.Id)


)



GO
/****** Object:  UserDefinedFunction [dbo].[fn_InventoryBal]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE FUNCTION [dbo].[fn_InventoryBal] (@DateFrom DATETIME,@DateTo DATETIME )
RETURNS TABLE 
AS
RETURN 
(
	SELECT 
		ItemId, ItemName, CategoryName , UnitName, AverageRate,
		SUM(OpeningQuantity) As OpeningQuantity,
        SUM(OpeningBalanceQuantity) As OpeningBalanceQuantity,
        SUM(VendorToWarehouseQuantity) As VendorToWarehouseQuantity,
        SUM(IssueToLocationQuantity) As IssueToLocationQuantity,
        SUM(ReturnToWarehouseQuantity) As ReturnToWarehouseQuantity,
        SUM(ReturnToVendorQuantity) As ReturnToVendorQuantity,
        SUM(WastageQuantity) As WastageQuantity,
        SUM(ClosingInventoryQuantity) As ClosingInventoryQuantity,
        SUM(ClosingBalanceQuantity) As ClosingBalanceQuantity,
        SUM(InventoryValue) As InventoryValue

		
	FROM 
		fn_InventoryBal_Simple (@DateFrom, @DateTo)
	GROUP BY 
		ItemId,	ItemName, CategoryName ,UnitName,AverageRate
)



GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [nvarchar](50) NOT NULL,
	[ContactPerson] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NOT NULL,
	[CityId] [int] NOT NULL,
	[Mobile] [nvarchar](20) NULL,
	[Telephone1] [nvarchar](20) NULL,
	[Telephone2] [nvarchar](20) NULL,
	[GstNo] [nvarchar](20) NULL,
	[CNIC] [nvarchar](20) NULL,
	[NTN] [nvarchar](20) NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[BusinessStartDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorPayments]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorPayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[VendorId] [int] NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[PaymentTypeId] [int] NOT NULL,
	[Payment] [float] NOT NULL,
	[RemainingBalance] [float] NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_VendorPayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_VenderPaymentLedger]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[fn_VenderPaymentLedger] (@DateFrom DATETIME, @DateTo DATETIME )
RETURNS TABLE 
AS
RETURN 
(
	with tbl AS (
    SELECT 1 AS IsOpening, NULL AS TransactionDate, MyUnion.VendorId, 
	'** OPENING BALANCE **' AS Narration,
	SUM(MyUnion.TotalNetBalance) TotalNetBalance, 
	SUM(MyUnion.TotalPayment) TotalPayment, 
	SUM(MyUnion.TotalNetBalance - MyUnion.TotalPayment) RemainingBalance
    FROM 
    ( 
        Select TransactionDate, VendorId, 
        TotalRate As TotalNetBalance, 
        0 AS TotalPayment
        from fn_InventoryBal_Simple('01/01/2000', @DateFrom-1)

        UNION All

        Select TransactionDate, VendorId, 
        0 As TotalNetBalance, 
        Payment AS TotalPayment
        from VendorPayments
        where TransactionDate < @DateFrom
    )MyUnion
	GROUP BY MyUnion.VendorId

    UNION ALL

    SELECT  0 AS IsOpening, MyUnion.TransactionDate, MyUnion.VendorId, 
	Narration,
	SUM(MyUnion.TotalNetBalance) TotalNetBalance, 
	SUM(MyUnion.TotalPayment) TotalPayment, 
	SUM(MyUnion.TotalNetBalance-MyUnion.TotalPayment) RemainingBalance
    FROM 
    (   
        Select TransactionDate, VendorId, 
		'BUYING' AS Narration,
        TotalRate As TotalNetBalance, 
        0 AS TotalPayment
        from fn_InventoryBal_Simple(@DateFrom, @DateTo)
        where 1 = 1  AND (TransactionDate BETWEEN @DateFrom AND @DateTo)

        UNION All

        Select TransactionDate, VendorId, 
		'PAYMENT' AS Narration,
        0 As TotalNetBalance, 
        Payment AS TotalPayment
        from VendorPayments
        where 1 = 1  AND (TransactionDate BETWEEN @DateFrom AND @DateTo)
    )MyUnion
	GROUP BY MyUnion.TransactionDate, 
	Narration, MyUnion.VendorId

)
SELECT t.VendorId, v.VendorName, t.Narration,
       t.TransactionDate, 
       t.TotalNetBalance AS TotalNetBalance, 
       t.TotalPayment AS TotalPayment,
       t.RemainingBalance
FROM tbl t
INNER JOIN Vendors v on (t.VendorId = v.Id)

)
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[CarNumber] [nvarchar](50) NOT NULL,
	[Reading] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NOT NULL,
	[CityId] [int] NOT NULL,
	[Mobile] [nvarchar](20) NULL,
	[Telephone1] [nvarchar](20) NULL,
	[CNIC] [nvarchar](20) NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designations]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Designations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dock_OpeningDetail]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dock_OpeningDetail](
	[ItemID] [float] NULL,
	[ItemName] [nvarchar](255) NULL,
	[Qty] [float] NULL,
	[Rate] [float] NULL,
	[Amount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Floors]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_TableTypes_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FloorTables]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloorTables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FloorId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[IsHold] [bit] NOT NULL,
 CONSTRAINT [PK_FloorTables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemGroups]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ItemGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainMenu]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[URL] [nvarchar](100) NOT NULL,
	[Icon] [nvarchar](50) NULL,
	[Priority] [int] NULL,
	[ParentId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_MainMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderFeedbacks]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderFeedbacks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[FoodExcellence] [int] NULL,
	[ServiceLevel] [int] NULL,
	[AmbienceTheme] [int] NULL,
	[SelectionOfMusic] [int] NULL,
	[OverallExperience] [int] NULL,
	[Comments] [nvarchar](1000) NULL,
	[GuestName] [nvarchar](50) NOT NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IsEmailMarketing] [bit] NOT NULL,
	[IsSmsMarketing] [bit] NOT NULL,
	[IsWhatsAppMarketing] [bit] NOT NULL,
	[IsPhoneMarketing] [bit] NOT NULL,
 CONSTRAINT [PK_OrderFeedbacks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderFeedbackStatuses]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderFeedbackStatuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_OrderFeedbackStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](50) NULL,
	[Quantity] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[TaxAmount] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[TableId] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[Remarks] [nvarchar](500) NULL,
	[IsVoid] [bit] NOT NULL,
	[IsComplimentary] [bit] NOT NULL,
	[Reason] [nvarchar](500) NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [nvarchar](50) NOT NULL,
	[PaymentTypeId] [int] NULL,
	[GSTPerentage] [float] NOT NULL,
	[FOCDiscount] [float] NOT NULL,
	[DiscountPercentage] [float] NOT NULL,
	[BankDiscount] [float] NOT NULL,
	[DiscountVoucher] [float] NOT NULL,
	[Tip] [float] NOT NULL,
	[ServiceChargesPerentage] [float] NOT NULL,
	[GstCharged] [float] NOT NULL,
	[DiscountCharged] [float] NOT NULL,
	[ServiceCharged] [float] NOT NULL,
	[GrossAmount] [float] NOT NULL,
	[TotalNetAmount] [float] NOT NULL,
	[ReceiptTotalCash] [float] NOT NULL,
	[ReceiptTotalCredit] [float] NOT NULL,
	[Change] [float] NOT NULL,
	[TableId] [int] NULL,
	[CreateBy] [int] NULL,
	[CreationDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ModifyDate] [datetime] NULL,
	[IsUpdateMode] [bit] NOT NULL,
	[IsPayment] [bit] NOT NULL,
	[ShopOpenOrderDate] [datetime] NULL,
	[OrderTypeId] [int] NULL,
	[NoOfGuest] [int] NULL,
	[IsVoid] [bit] NOT NULL,
	[IsComplimentary] [bit] NOT NULL,
	[Reason] [nvarchar](500) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderTableHistories]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTableHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[TableId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_OrderTableHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderTypes]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TaxPercentage] [float] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrintInfo]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrinterName] [nvarchar](50) NOT NULL,
	[IP_Address] [nvarchar](50) NOT NULL,
	[Port] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_PrintInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Payment] [nvarchar](50) NOT NULL,
	[TransationDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[ModificationDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Process] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Payment] [nvarchar](50) NOT NULL,
	[TransationDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[ModificationDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Purchases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Payment] [nvarchar](50) NOT NULL,
	[TransationDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[ModificationDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopStatuses]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopStatuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateOpen] [datetime] NULL,
	[OpenStatus] [bit] NULL,
	[DateClosed] [datetime] NULL,
	[ClosedStatus] [bit] NULL,
	[ShopOpenUserId] [int] NULL,
	[ShopCloseUserId] [int] NULL,
 CONSTRAINT [PK_ShopStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffFoodDetail]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffFoodDetail](
	[Id] [int] NOT NULL,
	[VoucherLineNo] [varchar](4) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Quantity] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[TotalRate] [float] NOT NULL,
	[LineRemarks] [nvarchar](200) NULL,
 CONSTRAINT [PK_StaffFoodDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[VoucherLineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffFoodHead]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffFoodHead](
	[Id] [int] NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_StaffFoodHead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CategoryId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRights]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRights](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[MenuId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserRights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[FatherName] [nvarchar](50) NULL,
	[CNIC] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[UserTypeId] [int] NOT NULL,
	[DesignationId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorPaymentTypes]    Script Date: 8/11/2021 7:33:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorPaymentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_VendorPaymentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (58, N'Mobil Oil', 1, CAST(N'2021-07-24T19:22:09.927' AS DateTime), NULL, 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (59, N'Mobil Oil', 1, CAST(N'2021-07-24T19:22:42.407' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (60, N'zic', 1, CAST(N'2021-07-24T19:34:47.650' AS DateTime), NULL, 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (61, N'shall', 1, CAST(N'2021-07-24T19:35:06.763' AS DateTime), NULL, 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (62, N'zic', 1, CAST(N'2021-07-24T19:38:07.280' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (63, N'shall', 1, CAST(N'2021-07-24T19:38:17.127' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Name], [IsActive]) VALUES (6, N'LAHORE', 1)
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (1, N'0001', 260, N'85% CHOCOLATE  ', 1, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (1, N'0002', 435, N'A4 PAPER  ', 1, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (1, N'0003', 402, N'AA  CELL ', 1, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (1, N'0004', 403, N'AAA CELL  ', 1, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (1, N'0005', 405, N'AIR FRESHNER  ', 1, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (1, N'0006', 23, N'ALMOND   ', 1, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (1, N'0007', 406, N'ALUMIN FOIL ', 1, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (1, N'0008', 25, N'ANCHOVIES FISH  ', 1, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (1, N'0009', 323, N'ARTICHOKE  ', 1, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (2, N'0001', 260, N'85% CHOCOLATE  ', 2, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (2, N'0002', 402, N'AA  CELL ', 2, 0, 0, NULL)
INSERT [dbo].[ClosingInventoryDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks]) VALUES (2, N'0003', 403, N'AAA CELL   ', 2, 0, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[ClosingInventoryHead] ON 

INSERT [dbo].[ClosingInventoryHead] ([Id], [DocNo], [Remarks], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (1, N'0786', N'SDAASD', CAST(N'2021-07-07T00:00:00.000' AS DateTime), 5, CAST(N'2021-07-08T16:05:14.337' AS DateTime), CAST(N'2021-07-08T16:05:14.337' AS DateTime))
INSERT [dbo].[ClosingInventoryHead] ([Id], [DocNo], [Remarks], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (2, N'0786', N'222', CAST(N'2021-07-06T00:00:00.000' AS DateTime), 5, CAST(N'2021-07-08T16:05:35.677' AS DateTime), CAST(N'2021-07-08T16:05:35.677' AS DateTime))
SET IDENTITY_INSERT [dbo].[ClosingInventoryHead] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [CustomerName], [CarNumber], [Reading], [Email], [Address], [CityId], [Mobile], [Telephone1], [CNIC], [CreationDate], [ModifyDate], [IsActive]) VALUES (1, N'babar ali', N'babar ali', N'2', N'mbabarali02@gmail.com', N'w', 6, N'123', NULL, N'2', CAST(N'2021-08-05T00:20:13.013' AS DateTime), NULL, 1)
INSERT [dbo].[Customer] ([Id], [CustomerName], [CarNumber], [Reading], [Email], [Address], [CityId], [Mobile], [Telephone1], [CNIC], [CreationDate], [ModifyDate], [IsActive]) VALUES (2, N'ali', N'ali', N'2', N'mbabarali02@gmail.com', N'w', 6, N'12', NULL, N'34501-9881380-3', CAST(N'2021-08-08T02:45:41.973' AS DateTime), CAST(N'2021-08-08T02:45:41.973' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [CustomerName], [CarNumber], [Reading], [Email], [Address], [CityId], [Mobile], [Telephone1], [CNIC], [CreationDate], [ModifyDate], [IsActive]) VALUES (3, N'admn admin', N'admn admin', NULL, N'pakturget12@gmail.com', N'21', 6, N'12', NULL, NULL, CAST(N'2021-08-08T02:45:57.943' AS DateTime), CAST(N'2021-08-08T02:45:57.943' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Name], [IsActive]) VALUES (4, N'Kitchen', 1)
INSERT [dbo].[Departments] ([Id], [Name], [IsActive]) VALUES (5, N'Bar', 1)
INSERT [dbo].[Departments] ([Id], [Name], [IsActive]) VALUES (6, N'Bakery', 1)
INSERT [dbo].[Departments] ([Id], [Name], [IsActive]) VALUES (7, N'Staff-Food', 1)
INSERT [dbo].[Departments] ([Id], [Name], [IsActive]) VALUES (8, N'Front-End', 1)
INSERT [dbo].[Departments] ([Id], [Name], [IsActive]) VALUES (9, N'Dishwashing', 1)
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Designations] ON 

INSERT [dbo].[Designations] ([Id], [Name], [IsActive]) VALUES (1, N'Manager', 1)
INSERT [dbo].[Designations] ([Id], [Name], [IsActive]) VALUES (2, N'CEO', 1)
INSERT [dbo].[Designations] ([Id], [Name], [IsActive]) VALUES (3, N'CFO', 1)
SET IDENTITY_INSERT [dbo].[Designations] OFF
GO
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (25, N'ANCHOVIES FISH', 1, 317, 317)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (26, N'APPLE CIDER VINEGAR ', 3, 300, 900)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (28, N'BABY CORN ', 6, 133, 798)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (29, N'BACKLE SUPREME', 10.3, 181, 1864.3)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (31, N'BALSAMIC VINEGAR BLACK', 4, 570, 2280)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (32, N'BASIL DRY', 1, 600, 600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (33, N'BBQ SAUCE', 7, 590, 4130)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (34, N'BLACK SALT', 1, 80, 80)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (35, N'BLACK CHOCOLATE CHIP', 2, 300, 600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (36, N'BLACK MUSHROOM', 1, 3000, 3000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (37, N'BLACK OLIVE', 2, 850, 1700)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (38, N'BLACK PEPPER POWDER', 2, 900, 1800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (39, N'BLACK SESMI SEEDS', 1, 350, 350)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (40, N'BLACK PEPPER WHOLE', 2, 850, 1700)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (41, N'BLUE BERRY FILLING', 2, 900, 1800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (43, N'BREAD CRUMBS', 10, 380, 3800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (45, N'BROWN SUGAR', 10, 100, 1000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (47, N'BUTTER MUSHROOMS ', 6, 850, 5100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (50, N'CANDERAL SUGAR SACHET', 2, 200, 400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (51, N'CAPER IN VINEGAR', 10, 350, 3500)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (52, N'CARAMEL CHOCLATE SYRUP', 1, 350, 350)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (53, N'CASHEWNUT', 3.3, 2000, 6600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (54, N'CASTER SUGAR', 8, 100, 800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (56, N'RICE STICK', 8, 343, 2744)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (57, N'CHICKEN POWDER', 18, 760, 13680)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (60, N'CHILLI SAUCE', 3, 186, 558)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (61, N'CHILLI WHOLE', 4, 900, 3600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (62, N'CHOCLATE POWDER', 2, 714, 1428)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (63, N'CHOCLATE SYRUP LOCAL', 4, 350, 1400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (64, N'CINAMON POWDER', 1, 800, 800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (65, N'COCONUT MILK TIN', 29, 235, 6815)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (66, N'COCONUT POWDER SANTAN', 7, 450, 3150)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (67, N'NUTELLA CHOCOLATE', 1, 600, 600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (69, N'COOKING OIL 16LTR', 1, 4600, 4600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (70, N'CORIANDER POWDER', 0.2, 350, 70)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (71, N'ONION POWDER ', 1, 225, 225)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (72, N'CORIANDER WHOLE', 0.5, 280, 140)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (73, N'OREGANO DAY', 1, 480, 480)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (74, N'CORNFLOUR', 60, 120, 7200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (75, N'OYSTER SAUCE MAMA SITA ', 2, 3800, 7600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (76, N'PAPRIKA POWDER ', 1, 1100, 1100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (77, N'SPAGHETTI PASTA', 5, 116, 580)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (78, N'CRUSHED CHILLI ', 1, 800, 800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (79, N'PEACH HALVES ', 4, 220, 880)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (80, N'CUCMBER PICKLE', 2, 900, 1800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (82, N'DARK CHOCLATE 1KG', 6, 1200, 7200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (84, N'DARK SOYA SAUCE', 10, 600, 6000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (85, N'PEANUT ', 0.3, 460, 138)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (86, N'DEMI GLACE ', 2, 750, 1500)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (87, N'PEELED TOMATO', 7, 140, 980)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (89, N'COMMENTS CARD', 1000, 5, 5000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (91, N'EDAMMAME', 5, 1050, 5250)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (92, N'PENNE PASTA', 7, 170, 1190)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (93, N'EMLI SAUCE', 2, 280, 560)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (94, N'PINEAPPLE SLICE SMALL', 16, 250, 4000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (98, N'FISH SAUCE', 1, 500, 500)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (99, N'POLAC CONDENSED MILK', 7, 300, 2100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (100, N'FOOD COLOUR POWDER', 2, 350, 700)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (101, N'FOOD COLOUR LIQUID', 2, 100, 200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (102, N'KSCHRI POWDER ', 1.6, 700, 1120)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (103, N'WHEAT WHOLE ', 1, 100, 100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (104, N'FRENCH MUSTARD GLN', 1, 2300, 2300)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (105, N'FRIES', 13, 1068, 13884)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (108, N'GARAM MASALA WHOLE', 0.4, 800, 320)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (111, N'CHICKEN PEPPERONI ', 8, 249, 1992)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (112, N'GHEE FOR STAFF', 4, 250, 1000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (114, N'GLUCOSE', 1, 200, 200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (115, N'CHICKEN PEPPERONI LARGE', 2, 635, 1270)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (116, N'CHICKEN THAI', 4, 674, 2696)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (117, N'CHICKEN WHOLE ', 14, 335, 4690)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (118, N'FAT', 1, 300, 300)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (120, N'GREEN CURRY PASTE', 1, 690, 690)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (122, N'TURKEY BACON ', 6, 1300, 7800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (124, N'TURKEY SMOKE ', 10, 925, 9250)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (127, N'HEINS BEANS', 4, 220, 880)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (128, N'RUBI SNAPPER ', 6, 1750, 10500)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (129, N'HISON SAUCE', 3, 760, 2280)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (131, N'HONEY', 1, 760, 760)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (132, N'HORS RADISH SAUCE', 1, 820, 820)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (133, N'HOT CHOCLATE', 1, 2750, 2750)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (134, N'PANGASIUS FISH ', 6, 550, 3300)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (135, N'PINK SALMON FISH', 3, 4571, 13713)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (136, N'PRAWN 21/25', 10, 700, 7000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (137, N'PRAWN 8/12', 10, 1400, 14000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (139, N'SOLE FISH', 10, 1700, 17000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (140, N'SQUID FISH (CALAMARI) ', 10, 950, 9500)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (141, N'HOT SAUCE', 2, 480, 960)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (144, N'ICING SUGAR', 8, 100, 800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (145, N'JAFAL POWDER', 1.5, 2031, 3046.5)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (146, N'JALAPENO Can', 3, 650, 1950)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (147, N'JAPANESE MAYONNAISE ', 6, 1300, 7800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (148, N'JAPANESE RICE IMP', 3, 1200, 3600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (149, N'TUNNA FISH', 5, 6000, 30000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (150, N'JAPANIES TEMPORA FLOUR', 27, 1150, 31050)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (151, N'KALWANJI', 0.5, 400, 200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (152, N'KETCHUP 4KG PKT', 2, 942, 1884)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (153, N'CRAB STICK ', 2, 2500, 5000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (155, N'KISHMISH', 0.24, 500, 120)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (156, N'LIME SEASONING POWDER', 20, 403, 8060)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (157, N'CRABE WHOLE', 9.5, 750, 7125)
GO
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (158, N'MACRONI PASTA', 8, 120, 960)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (159, N'MAIDA', 60, 80, 4800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (160, N'KASURI METHI', 3, 100, 300)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (161, N'MAYONIES BEST FOOD', 4, 1734, 6936)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (162, N'MEETENDRISER POWDER', 1, 180, 180)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (163, N'WHOLE SALMON', 9, 3600, 32400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (164, N'METHA SODA', 0.5, 100, 50)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (165, N'MUSTARD SAUCE BTL', 4, 440, 1760)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (168, N'KASOMI PASTA SMALL ', 3, 90, 270)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (182, N'VERMICELLI', 13, 27, 351)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (198, N'BEEF PUPRONI', 8, 264, 2112)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (200, N'CHICKEN BREAST FILLET', 30, 600, 18000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (201, N'CHICKEN MALAI BOTI', 2, 600, 1200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (202, N'CHICKEN NIBLET', 14, 380, 5320)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (225, N'WHEAT BISCUITS ', 4, 50, 200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (228, N'WHITE CHOCOLATE', 4, 1000, 4000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (229, N'WHITE CHOCOLATE CHIP', 2, 300, 600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (230, N'YELLOW CHEESE SLICE', 2, 950, 1900)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (233, N'WHITE QUINWA', 2, 1090, 2180)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (235, N'WHITE VINEGAR (SHEZAN)', 2, 280, 560)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (236, N'CASTIC SODA', 4, 140, 560)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (238, N'WHOLE GRAIN MUSTERD', 2, 500, 1000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (243, N'WORCESTERSHIRE SAUCE', 6, 450, 2700)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (246, N'YEAST', 1, 450, 450)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (248, N'DAAL MASOOR', 10, 130, 1300)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (250, N'DAIRY MILK', 5, 105, 525)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (252, N'KIDNEY BEAND STAFF', 9, 180, 1620)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (254, N'ZERA POWDER ', 0.9, 560, 504)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (255, N'HAND WASH STAFF', 5, 100, 500)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (256, N'RICE FOR STAFF', 3, 140, 420)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (257, N'STAFF TEA', 0.75, 1000, 750)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (259, N'NUR PUR BUTTER 200G', 0.2, 1242, 248.4)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (260, N'85% CHOCOLATE', 4, 450, 1800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (262, N'GUR', 2.4, 140, 336)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (264, N'CHEDAR CHEESE', 1, 1600, 1600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (265, N'COOKING CREAM', 51, 530, 27030)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (266, N'CREAM CHEESE', 3, 1700, 5100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (268, N'EGGS', 115, 14, 1610)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (270, N'FETA CHEESE', 2, 1350, 2700)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (271, N'FRESH MOZELA', 3, 1250, 3750)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (272, N'MARGRINE BUTTER', 2, 400, 800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (273, N'MILK PAK CREAM', 71, 116, 8236)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (274, N'MILK PAK', 5, 160, 800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (275, N'MOZELA CHEESE ADAMS', 1, 2100, 2100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (276, N'NESTLE YOUGRT', 1.5, 190, 285)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (277, N'PERMIZAN CHEESE', 0.4, 3400, 1360)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (278, N'PREMA MILK', 3, 150, 450)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (279, N'PUCK CHEESE', 11, 460, 5060)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (280, N'PUFF PASTRY', 3, 400, 1200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (282, N'HONDASHI', 2, 4200, 8400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (283, N'TOGARASHI', 2, 4200, 8400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (286, N'LIGHT SOYA SAUCE ', 2, 2900, 5800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (288, N'TOBIKKO ORANGE', 1, 4000, 4000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (289, N'TRUFFLE OIL', 3, 5200, 15600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (290, N'STRAWBERRY TOPPING FILLING ', 2, 900, 1800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (291, N'STRAWBERRY TOPPING FILLING  LOCAL', 1, 350, 350)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (292, N'SUGAR ', 10, 100, 1000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (295, N'SUMAC POWDER BTL', 1, 350, 350)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (296, N'SUN DRIED TOMATO LARGE ', 12, 6500, 78000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (298, N'SUPREMO PLUS ', 10, 2500, 25000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (301, N'SWEET CORN LARGE ', 2, 667, 1334)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (303, N'TANDOORI MASLA', 2, 130, 260)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (304, N'TARRAGON DRY', 1, 2100, 2100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (307, N'TABASCO SAUCE ', 1, 325, 325)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (308, N'TOMATO PASTE', 1, 202, 202)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (311, N'VANILLA CUSTARD ', 1.5, 320, 480)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (314, N'RICHI CREAM', 2.5, 1050, 2625)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (315, N'YELLOW BUTTER', 21, 430, 9030)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (316, N'WHITE CHEESE SLICE', 5, 950, 4750)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (317, N'YELLOW CHEESE SLICE', 2, 950, 1900)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (318, N'CRANBERRY SYRUP', 1, 2100, 2100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (320, N'BAMBO MAT JAPANIES', 2, 1600, 3200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (321, N'YAMASA SAUCE 18LTR', 1, 26000, 26000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (322, N'MIZKAN VINEGAR JAPANIES', 3, 2700, 8100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (323, N'ARTICHOKE', 3, 570, 1710)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (324, N'COFFEE BEANS', 2, 2700, 5400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (325, N'COKE CAN', 132, 39, 5148)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (326, N'FANTA CAN', 12, 39, 468)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (328, N'JASMINE GREEN TEA', 3, 315, 945)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (329, N'LIPTON TEA BOX', 0.5, 1800, 900)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (330, N'PEACH JUICE', 2, 160, 320)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (331, N'ORANGE JUICE', 11, 160, 1760)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (332, N'PINE APPLE JUICE', 5, 160, 800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (333, N'MANGO JUICE', 4, 160, 640)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (334, N'SPRITE 1.5LTR', 24, 100, 2400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (335, N'SPRITE CAN', 72, 39, 2808)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (337, N'WATER SMALL', 252, 24, 6048)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (338, N'WATER LARGE', 72, 45, 3240)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (339, N'ZERO COKE CAN', 144, 39, 5616)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (340, N'ZERO SPRITE CAN', 60, 39, 2340)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (341, N'LIPTON TEA PKT GUST', 2, 500, 1000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (342, N'RASPBERRY JAM', 8, 270, 2160)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (344, N'RED JALAPINO', 1, 290, 290)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (345, N'RED KIDNEY BEANS', 16, 170, 2720)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (346, N'RED VINE VINGAR', 2, 350, 700)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (349, N'RICE NOODLE ', 7, 380, 2660)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (350, N'RICE VINEGAR', 5, 320, 1600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (353, N'ROSE MARRY ', 1, 600, 600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (355, N'SALT', 24, 28, 672)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (356, N'SAMBALOELEK SAUCE', 63, 430, 27090)
GO
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (357, N'PLAIN BREAD', 2, 59, 118)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (359, N'SESAME OIL', 3, 500, 1500)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (360, N'SESAME SEEDS', 0.5, 350, 175)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (361, N'SHUSH SHEET JAPANESES ', 2, 4950, 9900)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (362, N'SIRACHA SAUCE', 21, 590, 12390)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (363, N'SODA WATER', 45, 64, 2880)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (365, N'SOYA SAUCE', 12, 450, 5400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (369, N'DUSTER', 5, 180, 900)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (370, N'FACE MASK', 35, 250, 8750)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (372, N'GLINT', 1, 130, 130)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (373, N'GLOVE PLASTIC', 2, 40, 80)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (374, N'GLOVE SURGICAL', 4, 1500, 6000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (375, N'HAIR NET CAP', 5, 250, 1250)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (378, N'HI JEANS TISSUE', 35, 80, 2800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (379, N'JALI', 54, 8, 432)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (380, N'LIGHTER WITH LIGHT', 18, 29, 522)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (381, N'MECA GAS', 3, 650, 1950)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (385, N'PIPING BAG', 2, 300, 600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (386, N'PIZZA BOX', 450, 58, 26100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (389, N'DISHWASHING LTR', 40, 60, 2400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (391, N'FOAM', 50, 15, 750)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (393, N'HAND SANITIZER', 6, 400, 2400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (394, N'MAX LIQUID', 2, 160, 320)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (395, N'GARBAGE BAG ', 10, 140, 1400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (397, N'2portion box', 200, 38, 7600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (399, N'4portion box', 100, 54, 5400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (400, N'750ml box', 50, 22, 1100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (402, N'AA  CELL', 120, 20, 2400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (403, N'AAA CELL', 648, 14, 9072)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (406, N'ALUMIN FOIL', 15, 180, 2700)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (409, N'BENDING STRAW WHITE', 10, 70, 700)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (411, N'F1 BOX', 100, 6, 600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (412, N'F2 BOX', 100, 11, 1100)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (413, N'F3 BOX', 300, 13, 3900)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (414, N'BURGER BOX', 150, 19, 2850)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (415, N'BUTTER PAPER', 1, 400, 400)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (416, N'CAKE BOX', 4, 50, 200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (417, N'CAKE BOARD', 4, 50, 200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (418, N'shopping bag', 5, 250, 1250)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (419, N'surf', 1, 110, 110)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (420, N'table napkin', 22, 112, 2464)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (421, N'TAKE WAY BAG BROWN', 150, 28, 4200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (422, N'TEA LIGHT CANDLE', 300, 6, 1800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (423, N'GATE PASS BOOK', 100, 100, 10000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (424, N'TISSUE JUMBO ROLL', 18, 160, 2880)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (425, N'TOILET ROLL', 8, 15, 120)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (426, N'TOOTH PICKS', 4, 180, 720)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (427, N'TOWEL', 10, 180, 1800)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (429, N'VIM', 6, 80, 480)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (432, N'SPRIT', 20, 100, 2000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (433, N'SCOTCH BRIGHT', 22, 30, 660)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (434, N'chopstick imp', 13, 245, 3185)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (435, N'A4 PAPER', 3, 560, 1680)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (436, N'PRINTER ROLL', 60, 100, 6000)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (437, N'CLING FILM LARGE', 2, 800, 1600)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (438, N'CLING FILM SMALL', 4, 550, 2200)
INSERT [dbo].[Dock_OpeningDetail] ([ItemID], [ItemName], [Qty], [Rate], [Amount]) VALUES (440, N'COIN CELL', 9, 80, 720)
GO
SET IDENTITY_INSERT [dbo].[Floors] ON 

INSERT [dbo].[Floors] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (7, N'1st Floor', 1, CAST(N'2021-06-15T12:27:26.707' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Floors] OFF
GO
SET IDENTITY_INSERT [dbo].[FloorTables] ON 

INSERT [dbo].[FloorTables] ([Id], [Name], [FloorId], [IsActive], [CreationDate], [ModifyDate], [IsHold]) VALUES (19, N'b-1', 7, 1, CAST(N'2021-06-15T12:27:51.967' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[FloorTables] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemGroups] ON 

INSERT [dbo].[ItemGroups] ([Id], [Name], [IsActive]) VALUES (12, N'oils', 1)
SET IDENTITY_INSERT [dbo].[ItemGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (471, N'mobil super 10/40', 59, NULL, 26, 1000, 0, 0, NULL, NULL, 1, CAST(N'2021-07-24T19:37:30.793' AS DateTime), CAST(N'2021-07-24T20:00:38.880' AS DateTime), 8, 1, 12, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (472, N'zic x7 10w40', 62, NULL, 26, 870, 0, 0, NULL, NULL, 1, CAST(N'2021-07-24T19:39:14.410' AS DateTime), CAST(N'2021-07-24T19:43:43.227' AS DateTime), 8, 1, 12, NULL)
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [Name], [IsActive]) VALUES (5, N'GULBERG', 1)
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[MainMenu] ON 

INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (31, N'Dashboard
', N'/Home/Index
', N'fas fa-tachometer-alt
', NULL, NULL, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (32, N'Setups', N'javascript: void(0)
', N'fas fa-file-alt
', NULL, NULL, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (33, N'POS Panel
', N'/Home/POS
', N'fas fa-desktop
', NULL, NULL, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (34, N'Orders
', N'javascript: void(0)
', N'fas fa-shopping-cart
', NULL, NULL, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (35, N'Inventory', N'javascript: void(0)
', N'fas fa-file-alt
', NULL, NULL, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (36, N'Reports
', N'javascript: void(0)
', N'fas fa-pencil-ruler
', NULL, NULL, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (37, N'Users
', N'javascript: void(0)
', N'fas fa-user-shield', NULL, NULL, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (39, N'Menu-Items
', N'/Menu/Items
', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (40, N'Categories
', N'/Menu/Categories
', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (41, N'Sub-Categories
', N'/Menu/SubCategories
', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (42, N'Unit
', N'/Menu/Units
', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (43, N'Tables
', N'/Menu/FloorTables
', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (44, N'Floors
', N'/Menu/Floors
', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (45, N'Departments', N'javascript: void(0)
', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (47, N'Raw-Items', N'/Vendor/RawItems', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (48, N'Raw-Categories', N'/Vendor/RawCategories', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (49, N'Cities', N'/Vendor/Cities', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (50, N'Vendors', N'/Vendor/Vendors', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (51, N'Locations', N'/Vendor/Locations', N'far fa-circle
', NULL, 32, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (52, N'Closed Orders', N'/Home/AllOrders
', N'far fa-circle
', NULL, 34, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (53, N'Open Orders
', N'/Home/OpenOrders
', N'far fa-circle
', NULL, 34, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (54, N'Draft Orders', N'/Home/DraftOrders
', N'far fa-circle
', NULL, 34, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (55, N'Vendor To Warehouse', N'/Inventory/VendorToWarehouse', N'far fa-circle
', NULL, 35, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (56, N'Issue To Department', N'/Inventory/IssueItemsToLocation', N'far fa-circle
', NULL, 35, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (57, N'Return To Warehouse', N'/Inventory/ReturnToWarehouse', N'far fa-circle
', NULL, 35, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (58, N'Return To Vendor', N'/Inventory/ReturnToVendor', N'far fa-circle
', NULL, 35, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (59, N'Wastage Material', N'/Inventory/Wastage', N'far fa-circle
', NULL, 35, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (60, N'Consumption', N'/Inventory/ClosingInventory', N'far fa-circle
', NULL, 35, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (61, N'Sale Inovice
', N'javascript: void(0)
', N'far fa-circle
', NULL, 36, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (62, N'User Management', N'/User/AllUsers
', N'far fa-circle
', NULL, 37, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (63, N'User Rights
', N'/User/UserRights
', N'far fa-circle
', NULL, 37, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (64, N'User Designations
', N'/User/Designations
', N'far fa-circle
', NULL, 37, 1, CAST(N'2021-01-29T10:26:00.000' AS DateTime), CAST(N'2021-01-29T10:26:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (67, N'Item Groups', N'/Menu/ItemGroups', N'far fa-circle', NULL, 32, 1, CAST(N'2021-02-04T00:00:00.000' AS DateTime), CAST(N'2021-02-04T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (68, N'Setup-01', N'javascript: void(0)
', N'far fa-circle', NULL, 32, 1, CAST(N'2021-02-05T00:00:00.000' AS DateTime), CAST(N'2021-02-05T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (69, N' All Warehouse Items', N'/Inventory/WarehouseItems', N'far fa-circle', NULL, 35, 1, CAST(N'2021-03-15T00:00:00.000' AS DateTime), CAST(N'2021-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (70, N'All Issuance Items', N'/Inventory/AllIssueItems', N'far fa-circle', NULL, 35, 1, CAST(N'2021-03-16T00:00:00.000' AS DateTime), CAST(N'2021-03-16T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (72, N'All Return Items To Warehouse', N'/Inventory/AllReturnItemsToWarehouse', N'far fa-circle', NULL, 35, 1, CAST(N'2021-03-19T00:00:00.000' AS DateTime), CAST(N'2021-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (74, N'All Return Items To Vendor', N'/Inventory/AllReturnItemsToVendor', N'far fa-circle', NULL, 35, 1, CAST(N'2021-03-22T00:00:00.000' AS DateTime), CAST(N'2021-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (75, N'All Wastage Items', N'/Inventory/AllWastageItems', N'far fa-circle', NULL, 35, 1, CAST(N'2021-03-22T00:00:00.000' AS DateTime), CAST(N'2021-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (76, N'All Closing Inventories', N'/Inventory/AllClosingInventory', N'far fa-circle', NULL, 35, 1, CAST(N'2021-03-30T00:00:00.000' AS DateTime), CAST(N'2021-03-30T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (77, N'Inventory Stock In Hand', N'/Report/InventoryBalance', N'far fa-circle', NULL, 36, 1, CAST(N'2021-03-30T00:00:00.000' AS DateTime), CAST(N'2021-03-30T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (78, N'Vendor Payments', N'javascript: void(0)
', N'fas fa-users', NULL, NULL, 1, CAST(N'2021-04-06T00:00:00.000' AS DateTime), CAST(N'2021-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (79, N'New Payment', N'/Vendor/VendorPayment', N'far fa-circle', NULL, 78, 1, CAST(N'2021-04-06T00:00:00.000' AS DateTime), CAST(N'2021-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (80, N'All Vendors Payment', N'/Vendor/VendorPayments', N'far fa-circle', NULL, 78, 1, CAST(N'2021-04-09T00:00:00.000' AS DateTime), CAST(N'2021-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (81, N'Add Opening Stock', N'/Inventory/OpeningStockIndex', N'far fa-circle', NULL, 35, 1, CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[MainMenu] ([Id], [Name], [URL], [Icon], [Priority], [ParentId], [IsActive], [CreationDate], [ModifyDate]) VALUES (82, N'All Opening Stock', N'/Inventory/GetAllOpeningStockItems', N'far fa-circle', NULL, 35, 1, CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(N'2021-02-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[MainMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderFeedbackStatuses] ON 

INSERT [dbo].[OrderFeedbackStatuses] ([Id], [Name], [IsActive]) VALUES (1, N'Outstanding', 1)
INSERT [dbo].[OrderFeedbackStatuses] ([Id], [Name], [IsActive]) VALUES (2, N'Superior', 1)
INSERT [dbo].[OrderFeedbackStatuses] ([Id], [Name], [IsActive]) VALUES (3, N'Pleasing', 1)
INSERT [dbo].[OrderFeedbackStatuses] ([Id], [Name], [IsActive]) VALUES (4, N'Mediocre', 1)
SET IDENTITY_INSERT [dbo].[OrderFeedbackStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (338, 29, 24, N'gram', 1, 36, 36, 0, 0, NULL, CAST(N'2021-06-14T16:43:39.830' AS DateTime), CAST(N'2021-07-20T17:59:20.313' AS DateTime), N' iouio', 0, 1, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (341, 31, 24, N'gram', 1, 36, 36, 0, 0, 19, CAST(N'2021-06-15T12:29:01.597' AS DateTime), CAST(N'2021-06-15T12:29:01.597' AS DateTime), N' ww', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (342, 32, 24, N'gram', 1, 36, 36, 0, 0, 19, CAST(N'2021-06-24T13:48:31.917' AS DateTime), CAST(N'2021-06-24T13:48:31.917' AS DateTime), N' hfgddgdjhfghdfg', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (343, 30, 24, N'gram', 1, 36, 36, 0, 0, NULL, CAST(N'2021-06-24T14:00:35.447' AS DateTime), CAST(N'2021-06-24T14:00:35.447' AS DateTime), N' ', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (345, 33, 24, N'gram', 7, 36, 252, 0, 0, NULL, CAST(N'2021-07-20T18:03:40.730' AS DateTime), CAST(N'2021-07-20T18:03:40.730' AS DateTime), N'ewet', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (346, 34, 133, N'HOT CHOCLATE', 1, 0, 0, 0, 0, NULL, CAST(N'2021-07-24T13:13:37.737' AS DateTime), CAST(N'2021-07-24T13:13:37.737' AS DateTime), N'sdgsdg', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (347, 34, 66, N'COCONUT POWDER SANTAN ', 1, 900, 900, 0, 0, NULL, CAST(N'2021-07-24T13:13:37.740' AS DateTime), CAST(N'2021-07-24T13:13:37.740' AS DateTime), N'sdfsdf', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (349, 35, 50, N'CANDERAL SUGAR SACHET', 3, 0, 0, 0, 0, NULL, CAST(N'2021-07-24T16:11:14.737' AS DateTime), CAST(N'2021-07-24T16:11:14.737' AS DateTime), NULL, 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (350, 35, 325, N'COKE CAN ', 1, 126.21, 126.21, 0, 0, NULL, CAST(N'2021-07-24T16:11:14.737' AS DateTime), CAST(N'2021-07-24T16:11:14.737' AS DateTime), NULL, 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (352, 36, 472, N'zic x7 10w40 ', 1, 870, 870, 0, 0, NULL, CAST(N'2021-07-24T19:49:14.147' AS DateTime), CAST(N'2021-07-24T19:49:14.147' AS DateTime), NULL, 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (353, 36, 471, N'10w40 ', 1, 850, 850, 0, 0, NULL, CAST(N'2021-07-24T19:49:14.147' AS DateTime), CAST(N'2021-07-24T19:49:14.147' AS DateTime), NULL, 1, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (355, 37, 471, N'mobil super 10/40 ', 1, 1906.67, 1906.67, 0, 0, NULL, CAST(N'2021-07-24T20:02:16.493' AS DateTime), CAST(N'2021-07-24T20:02:16.493' AS DateTime), N' ', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (1349, 1035, 471, N'10w40 ', 1, 1787.5, 1787.5, 0, 0, NULL, CAST(N'2021-08-08T02:41:43.567' AS DateTime), CAST(N'2021-08-08T02:41:43.567' AS DateTime), N' 2000', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (1350, 1036, 472, N'zic x7 10w40 ', 1, 870, 870, 0, 0, NULL, CAST(N'2021-08-08T02:46:15.380' AS DateTime), CAST(N'2021-08-08T02:46:15.380' AS DateTime), N' ', 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (29, N'2021-06147687', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 36, 0, 0, 0, NULL, NULL, CAST(N'2021-06-14T16:43:39.347' AS DateTime), NULL, CAST(N'2021-07-20T17:59:25.550' AS DateTime), 0, 1, NULL, NULL, 23, 0, 1, N' fgsdgs')
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (30, N'2021-06148859', NULL, 16, 0, 0, 0, 0, 1200, 0, 5.76, 0, 0, 36, 1241.76, 12313, 0, 11071.24, NULL, NULL, CAST(N'2021-06-14T16:44:30.973' AS DateTime), NULL, CAST(N'2021-06-24T14:00:35.353' AS DateTime), 0, 1, NULL, NULL, 2, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (31, N'2021-06151159', 3, 5, 0, 0, 0, 0, 0, 0, 1.8, 0, 0, 36, 37.8, 0, 36, 0, 19, NULL, CAST(N'2021-06-15T12:28:32.377' AS DateTime), NULL, CAST(N'2021-06-15T12:29:01.487' AS DateTime), 0, 1, NULL, NULL, 2, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (32, N'2021-06243684', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 36, 0, 0, 0, 19, NULL, CAST(N'2021-06-24T13:48:31.480' AS DateTime), NULL, CAST(N'2021-06-24T13:48:31.480' AS DateTime), 1, 0, NULL, NULL, 12, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (33, N'2021-07203473', 3, 5, 0, 25, 0, 0, 0, 0, 9.45, 63, 0, 252, 198.45, 0, 189, 0, NULL, NULL, CAST(N'2021-07-20T17:57:57.477' AS DateTime), NULL, CAST(N'2021-07-20T18:03:40.677' AS DateTime), 0, 1, NULL, NULL, 2, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (34, N'2021-07244712', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 900, 900, 0, 0, 0, NULL, NULL, CAST(N'2021-07-24T13:13:37.370' AS DateTime), NULL, CAST(N'2021-07-24T13:13:37.370' AS DateTime), 1, 0, NULL, NULL, 12, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (35, N'2021-07247574', 3, 5, 0, 0, 0, 0, 0, 0, 6.3105, 0, 0, 126.21, 132.5205, 0, 126.21, 0, NULL, NULL, CAST(N'2021-07-24T16:07:03.480' AS DateTime), NULL, CAST(N'2021-07-24T16:11:14.703' AS DateTime), 0, 1, NULL, NULL, 12, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (36, N'2021-07247941', 4, 0, 0, 15, 0, 0, 0, 0, 0, 130.5, 0, 1720, 1589.5, 0, 739.5, 0, NULL, NULL, CAST(N'2021-07-24T19:46:36.073' AS DateTime), NULL, CAST(N'2021-07-24T19:49:14.137' AS DateTime), 0, 1, NULL, NULL, 508, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (37, N'2021-07249224', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1906.67, 1906.67, 2000, 0, 93.329999999999913, NULL, NULL, CAST(N'2021-07-24T20:01:23.707' AS DateTime), NULL, CAST(N'2021-07-24T20:02:16.483' AS DateTime), 0, 1, NULL, NULL, 508, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (1035, N'2021-08087657', 3, 5, 0, 0, 0, 0, 0, 0, 89.375, 0, 0, 1787.5, 1876.875, 0, 1787.5, 0, NULL, NULL, CAST(N'2021-08-08T02:40:45.153' AS DateTime), NULL, CAST(N'2021-08-08T02:41:43.503' AS DateTime), 0, 1, NULL, NULL, 1, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (1036, N'2021-08081718', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 870, 870, 0, 0, 0, NULL, NULL, CAST(N'2021-08-08T02:46:15.370' AS DateTime), NULL, CAST(N'2021-08-08T02:46:15.370' AS DateTime), 1, 0, NULL, NULL, 3, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderTableHistories] ON 

INSERT [dbo].[OrderTableHistories] ([Id], [OrderId], [TableId], [CreationDate]) VALUES (3, 31, 19, CAST(N'2021-06-15T12:28:32.437' AS DateTime))
INSERT [dbo].[OrderTableHistories] ([Id], [OrderId], [TableId], [CreationDate]) VALUES (4, 32, 19, CAST(N'2021-06-24T13:48:31.993' AS DateTime))
SET IDENTITY_INSERT [dbo].[OrderTableHistories] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTypes] ON 

INSERT [dbo].[PaymentTypes] ([Id], [Name], [TaxPercentage], [IsActive], [CreationDate], [ModifyDate]) VALUES (1, N'Cash', 16, 1, CAST(N'2021-01-01T15:44:30.267' AS DateTime), CAST(N'2021-01-01T15:44:30.267' AS DateTime))
INSERT [dbo].[PaymentTypes] ([Id], [Name], [TaxPercentage], [IsActive], [CreationDate], [ModifyDate]) VALUES (2, N'Keenu', 16, 1, CAST(N'2021-02-25T00:00:00.000' AS DateTime), CAST(N'2021-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[PaymentTypes] ([Id], [Name], [TaxPercentage], [IsActive], [CreationDate], [ModifyDate]) VALUES (3, N'Bank Alfalah', 5, 1, CAST(N'2021-02-25T00:00:00.000' AS DateTime), CAST(N'2021-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[PaymentTypes] ([Id], [Name], [TaxPercentage], [IsActive], [CreationDate], [ModifyDate]) VALUES (4, N'Partially', 16, 1, CAST(N'2021-03-03T00:00:00.000' AS DateTime), CAST(N'2021-03-03T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PaymentTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ShopStatuses] ON 

INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (10, CAST(N'2021-05-31T11:43:07.437' AS DateTime), 0, CAST(N'2021-05-31T11:43:12.740' AS DateTime), 1, 11, 11)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (11, CAST(N'2021-05-31T11:45:18.067' AS DateTime), 0, CAST(N'2021-05-31T11:45:40.610' AS DateTime), 1, 11, 11)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (12, CAST(N'2021-05-31T11:45:58.537' AS DateTime), 0, CAST(N'2021-05-31T11:46:07.383' AS DateTime), 1, 11, 11)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (13, CAST(N'2021-05-31T12:31:01.033' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (14, CAST(N'2021-06-03T13:15:20.083' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (15, CAST(N'2021-06-04T15:07:53.677' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (16, CAST(N'2021-06-07T14:37:20.290' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (17, CAST(N'2021-06-08T11:42:18.427' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (18, CAST(N'2021-06-15T17:51:36.537' AS DateTime), 1, NULL, NULL, 13, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (19, CAST(N'2021-06-16T16:49:32.823' AS DateTime), 1, NULL, NULL, 13, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (20, CAST(N'2021-06-17T13:49:40.990' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (21, CAST(N'2021-06-18T14:28:54.053' AS DateTime), 0, CAST(N'2021-06-18T14:30:06.350' AS DateTime), 1, 14, 14)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (22, CAST(N'2021-06-19T15:32:55.367' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (23, CAST(N'2021-06-21T16:57:11.887' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (24, CAST(N'2021-06-22T14:05:39.327' AS DateTime), 1, NULL, NULL, 14, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (25, CAST(N'2021-06-23T13:54:04.067' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (26, CAST(N'2021-06-24T12:25:59.090' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (27, CAST(N'2021-06-25T13:47:15.727' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (28, CAST(N'2021-06-26T12:52:34.043' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (29, CAST(N'2021-06-28T15:07:21.820' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (30, CAST(N'2021-06-29T13:54:59.607' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (31, CAST(N'2021-06-30T10:59:38.053' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (32, CAST(N'2021-07-01T10:32:08.790' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (33, CAST(N'2021-07-02T16:44:23.823' AS DateTime), 0, CAST(N'2021-07-02T16:44:30.720' AS DateTime), 1, 11, 11)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (34, CAST(N'2021-07-02T16:45:02.877' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (35, CAST(N'2021-07-03T11:19:48.397' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (36, CAST(N'2021-07-05T13:41:47.397' AS DateTime), 1, NULL, NULL, 11, NULL)
INSERT [dbo].[ShopStatuses] ([Id], [DateOpen], [OpenStatus], [DateClosed], [ClosedStatus], [ShopOpenUserId], [ShopCloseUserId]) VALUES (37, CAST(N'2021-07-06T14:06:30.537' AS DateTime), 1, NULL, NULL, 11, NULL)
SET IDENTITY_INSERT [dbo].[ShopStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Units] ON 

INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (16, N'KG', 1, CAST(N'2021-05-31T16:54:56.103' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (17, N'TIN', 1, CAST(N'2021-05-31T17:22:45.477' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (18, N'CAN', 1, CAST(N'2021-05-31T17:23:52.067' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (19, N'BTL', 1, CAST(N'2021-05-31T17:24:05.607' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (20, N'PKT', 1, CAST(N'2021-05-31T17:24:13.457' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (21, N'PCS', 1, CAST(N'2021-05-31T17:24:52.553' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (22, N'NUM', 1, CAST(N'2021-05-31T17:25:07.110' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (23, N'BAG', 1, CAST(N'2021-05-31T17:25:25.097' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (24, N'CTN', 1, CAST(N'2021-05-31T17:25:34.677' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (25, N'BLOCK', 1, CAST(N'2021-06-03T18:24:35.773' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (26, N'LTR', 1, CAST(N'2021-06-03T19:15:32.613' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (27, N'DEZON', 1, CAST(N'2021-06-04T18:16:01.667' AS DateTime), NULL)
INSERT [dbo].[Units] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate]) VALUES (28, N'CYLINDERS', 1, CAST(N'2021-06-17T18:58:16.507' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Units] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRights] ON 

INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (276, 7, NULL, 31, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (277, 7, NULL, 33, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (278, 7, NULL, 34, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (279, 7, 34, 52, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (280, 7, 34, 53, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (281, 7, 34, 54, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (282, 7, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (283, 7, 36, 59, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (284, 7, 35, 60, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (285, 7, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (319, 6, NULL, 31, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (320, 6, NULL, 32, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (321, 6, 32, 39, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (322, 6, 32, 40, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (323, 6, 32, 41, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (324, 6, 32, 42, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (325, 6, 32, 43, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (326, 6, 32, 44, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (327, 6, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (328, 6, 35, 59, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (329, 6, 35, 60, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (330, 6, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (790, 9, NULL, 31, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (791, 9, NULL, 33, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (792, 9, NULL, 34, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (793, 9, 34, 52, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (794, 9, 34, 53, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (795, 9, 34, 54, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1122, 10, NULL, 31, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1123, 10, NULL, 32, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1124, 10, 32, 42, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1125, 10, 32, 47, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1126, 10, 32, 48, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1127, 10, 32, 49, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1128, 10, 32, 50, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1129, 10, 32, 51, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1130, 10, 32, 67, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1131, 10, NULL, 35, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1132, 10, 35, 55, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1133, 10, 35, 56, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1134, 10, 35, 57, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1135, 10, 35, 58, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1136, 10, 35, 59, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1137, 10, 35, 60, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1138, 10, 35, 69, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1139, 10, 35, 70, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1140, 10, 35, 72, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1141, 10, 35, 74, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1142, 10, 35, 75, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1143, 10, 35, 76, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1144, 10, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1145, 10, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1146, 10, 36, 77, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1147, 10, NULL, 78, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1148, 10, 78, 79, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1149, 10, 78, 80, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1470, 12, NULL, 32, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1471, 12, 32, 40, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1472, 12, 32, 42, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1473, 12, 32, 47, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1474, 12, 32, 48, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1475, 12, 32, 49, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1476, 12, 32, 50, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1477, 12, 32, 51, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1478, 12, 32, 67, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1479, 12, NULL, 35, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1480, 12, 35, 55, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1481, 12, 35, 56, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1482, 12, 35, 58, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1483, 12, 35, 59, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1484, 12, 35, 60, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1485, 12, 35, 69, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1486, 12, 35, 70, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1487, 12, 35, 74, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1488, 12, 35, 75, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1489, 12, 35, 76, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1490, 12, 35, 81, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1491, 12, 35, 82, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1492, 12, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1493, 12, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1494, 12, 36, 77, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1495, 12, NULL, 78, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1496, 12, 78, 79, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1497, 12, 78, 80, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1522, 13, NULL, 32, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1523, 13, 32, 42, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1524, 13, 32, 47, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1525, 13, 32, 48, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1526, 13, 32, 49, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1527, 13, 32, 50, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1528, 13, 32, 51, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1529, 13, 32, 67, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1530, 13, NULL, 35, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1531, 13, 35, 55, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1532, 13, 35, 56, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1533, 13, 35, 58, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1534, 13, 35, 59, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1535, 13, 35, 60, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1536, 13, 35, 69, 1)
GO
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1537, 13, 35, 70, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1538, 13, 35, 74, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1539, 13, 35, 75, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1540, 13, 35, 76, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1541, 13, 35, 81, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1542, 13, 35, 82, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1543, 13, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1544, 13, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1545, 13, 36, 77, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1546, 14, NULL, 32, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1547, 14, 32, 41, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1548, 14, 32, 47, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1549, 14, 32, 48, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1550, 14, 32, 49, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1551, 14, 32, 50, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1552, 14, 32, 51, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1553, 14, 32, 67, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1554, 14, NULL, 35, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1555, 14, 35, 55, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1556, 14, 35, 56, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1557, 14, 35, 57, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1558, 14, 35, 58, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1559, 14, 35, 59, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1560, 14, 35, 60, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1561, 14, 35, 69, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1562, 14, 35, 70, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1563, 14, 35, 72, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1564, 14, 35, 74, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1565, 14, 35, 75, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1566, 14, 35, 76, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1567, 14, 35, 81, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1568, 14, 35, 82, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1569, 14, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1570, 14, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1571, 14, 36, 77, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1572, 14, NULL, 78, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1573, 14, 78, 79, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1574, 14, 78, 80, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1575, 11, NULL, 33, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1709, 5, NULL, 31, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1710, 5, NULL, 32, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1711, 5, 32, 39, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1712, 5, 32, 40, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1713, 5, 32, 41, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1714, 5, 32, 42, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1715, 5, 32, 43, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1716, 5, 32, 44, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1717, 5, 32, 45, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1718, 5, 32, 47, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1719, 5, 32, 48, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1720, 5, 32, 49, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1721, 5, 32, 50, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1722, 5, 32, 51, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1723, 5, 32, 67, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1724, 5, 32, 68, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1725, 5, NULL, 33, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1726, 5, NULL, 34, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1727, 5, 34, 52, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1728, 5, 34, 53, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1729, 5, 34, 54, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1730, 5, NULL, 35, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1731, 5, 35, 55, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1732, 5, 35, 56, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1733, 5, 35, 57, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1734, 5, 35, 58, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1735, 5, 35, 59, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1736, 5, 35, 60, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1737, 5, 35, 69, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1738, 5, 35, 70, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1739, 5, 35, 72, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1740, 5, 35, 74, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1741, 5, 35, 75, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1742, 5, 35, 76, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1743, 5, 35, 81, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1744, 5, 35, 82, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1745, 5, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1746, 5, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1747, 5, 36, 77, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1748, 5, NULL, 37, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1749, 5, 37, 62, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1750, 5, 37, 63, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1751, 5, 37, 64, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1752, 5, NULL, 78, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1753, 5, 78, 79, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1754, 5, 78, 80, 1)
SET IDENTITY_INSERT [dbo].[UserRights] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [FullName], [FatherName], [CNIC], [Mobile], [UserTypeId], [DesignationId], [IsActive], [CreationDate], [ModifyDate]) VALUES (5, N'admin', N'MDt/ZWpg/jmPW4p7MW5qyQ==', N'admin@domain.com', NULL, NULL, NULL, NULL, 1, NULL, 1, CAST(N'2021-01-29T10:05:03.697' AS DateTime), CAST(N'2021-01-29T10:05:03.697' AS DateTime))
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [FullName], [FatherName], [CNIC], [Mobile], [UserTypeId], [DesignationId], [IsActive], [CreationDate], [ModifyDate]) VALUES (6, N'manager', N'MDt/ZWpg/jmPW4p7MW5qyQ==', N'manager@domain.com', NULL, NULL, NULL, NULL, 2, 1, 1, CAST(N'2021-01-29T10:05:03.700' AS DateTime), CAST(N'2021-01-29T10:05:03.700' AS DateTime))
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [FullName], [FatherName], [CNIC], [Mobile], [UserTypeId], [DesignationId], [IsActive], [CreationDate], [ModifyDate]) VALUES (7, N'user', N'test', N'user@domain.com', NULL, NULL, NULL, NULL, 3, NULL, 1, CAST(N'2021-01-29T10:05:03.700' AS DateTime), CAST(N'2021-01-29T10:05:03.700' AS DateTime))
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [FullName], [FatherName], [CNIC], [Mobile], [UserTypeId], [DesignationId], [IsActive], [CreationDate], [ModifyDate]) VALUES (9, N'khusham', N'test', N'khusham@gmail.com', N'Khusham', N'Sohail', N'5467389', N'43927389', 3, 1, 1, CAST(N'2021-04-13T13:34:10.847' AS DateTime), NULL)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [FullName], [FatherName], [CNIC], [Mobile], [UserTypeId], [DesignationId], [IsActive], [CreationDate], [ModifyDate]) VALUES (10, N'Dock27', N'test', N'dock27@sefam.com', N'Rizwan', NULL, NULL, NULL, 2, 1, 1, CAST(N'2021-05-25T15:00:43.460' AS DateTime), NULL)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [FullName], [FatherName], [CNIC], [Mobile], [UserTypeId], [DesignationId], [IsActive], [CreationDate], [ModifyDate]) VALUES (11, N'Ali', N'Mz/pBA7gCEs=', N'Ali@gmail.com', N'Ali', N'Ali', NULL, NULL, 3, 1, 1, CAST(N'2021-05-31T11:40:22.450' AS DateTime), NULL)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [FullName], [FatherName], [CNIC], [Mobile], [UserTypeId], [DesignationId], [IsActive], [CreationDate], [ModifyDate]) VALUES (12, N'Rizwan', N'5pfSPnVcFX01tgpBrnSYKw==', N'Awan@gmail.com', N'Rizwan', NULL, NULL, NULL, 2, 1, 1, CAST(N'2021-05-31T16:16:13.910' AS DateTime), NULL)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [FullName], [FatherName], [CNIC], [Mobile], [UserTypeId], [DesignationId], [IsActive], [CreationDate], [ModifyDate]) VALUES (13, N'Jamshed', N'PsQKFHg0C66qnoy9Nll/9A==', N'Jamshid@gmail.com', N'Jamshid', NULL, NULL, N'03114343115', 3, 3, 1, CAST(N'2021-06-15T17:44:23.860' AS DateTime), NULL)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [FullName], [FatherName], [CNIC], [Mobile], [UserTypeId], [DesignationId], [IsActive], [CreationDate], [ModifyDate]) VALUES (14, N'juniad.anwar', N'+cnhNAS0ierJYsq3qCTiNQ==', N'juniad.anwar@gmail.com', N'juniad', N'anwar', N'315252', N'03114343115', 3, 3, 1, CAST(N'2021-06-18T14:24:50.997' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserTypes] ON 

INSERT [dbo].[UserTypes] ([Id], [Name], [IsActive]) VALUES (1, N'Admin', 1)
INSERT [dbo].[UserTypes] ([Id], [Name], [IsActive]) VALUES (2, N'Manager', 1)
INSERT [dbo].[UserTypes] ([Id], [Name], [IsActive]) VALUES (3, N'User', 1)
SET IDENTITY_INSERT [dbo].[UserTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[VendorPaymentTypes] ON 

INSERT [dbo].[VendorPaymentTypes] ([Id], [Name], [IsActive]) VALUES (1, N'Cash', 1)
INSERT [dbo].[VendorPaymentTypes] ([Id], [Name], [IsActive]) VALUES (2, N'Credit', 1)
INSERT [dbo].[VendorPaymentTypes] ([Id], [Name], [IsActive]) VALUES (3, N'Patty-Cash', 1)
SET IDENTITY_INSERT [dbo].[VendorPaymentTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendors] ON 

INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (38, N'zic', N'rashid', NULL, N'asd', 6, N'03114343115', NULL, NULL, N'55', NULL, N'555', CAST(N'2021-07-24T19:40:58.970' AS DateTime), CAST(N'2021-07-24T19:40:58.970' AS DateTime), CAST(N'2021-07-24T19:40:58.970' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (39, N'shall', N'irfan', NULL, N'awe', 6, N'003454091319', NULL, NULL, N'44', NULL, N'8', CAST(N'2021-07-24T19:41:59.627' AS DateTime), CAST(N'2021-07-24T19:41:59.627' AS DateTime), CAST(N'2021-07-24T19:41:59.627' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Vendors] OFF
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (174, N'0001', 471, N'10w40 ', 16, 850, 13600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (174, N'0002', 472, N'zic x7 10w40 ', 18, 870, 15660, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (175, N'0001', 471, N'mobil super 10/40 ', 15, 1000, 15000, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[VendorToWarehouseHead] ON 

INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (174, 38, N'1', N'hy', 0, 0, 0, 29260, 29260, CAST(N'2021-07-26T00:00:00.000' AS DateTime), 5, CAST(N'2021-07-24T19:43:43.173' AS DateTime), CAST(N'2021-07-24T19:43:43.173' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (175, 38, N'12', N'baqi', 0, 0, 0, 15000, 15000, CAST(N'2021-07-28T00:00:00.000' AS DateTime), 5, CAST(N'2021-07-24T20:00:38.863' AS DateTime), CAST(N'2021-07-24T20:00:38.863' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendorToWarehouseHead] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF__Categorie__IsAct__7F60ED59]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Designations] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Floors] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FloorTables] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FloorTables] ADD  DEFAULT ((0)) FOR [IsHold]
GO
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF__Items__Price__108B795B]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF__Items__Tax__117F9D94]  DEFAULT ((0)) FOR [Tax]
GO
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF__Items__Discount__1273C1CD]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF__Items__Promotion__1367E606]  DEFAULT ((0)) FOR [PromotionStartDate]
GO
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF__Items__IsActive__145C0A3F]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MainMenu] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__Price__1A14E395]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__Total__1B0907CE]  DEFAULT ((0)) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__TaxAm__1BFD2C07]  DEFAULT ((0)) FOR [TaxAmount]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__Disco__1CF15040]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[ClosingInventoryDetail]  WITH CHECK ADD  CONSTRAINT [FK_ClosingInventoryDetail_ClosingInventoryHead] FOREIGN KEY([Id])
REFERENCES [dbo].[ClosingInventoryHead] ([Id])
GO
ALTER TABLE [dbo].[ClosingInventoryDetail] CHECK CONSTRAINT [FK_ClosingInventoryDetail_ClosingInventoryHead]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Cities]
GO
ALTER TABLE [dbo].[FloorTables]  WITH CHECK ADD  CONSTRAINT [FK_FloorTables_Floors] FOREIGN KEY([FloorId])
REFERENCES [dbo].[Floors] ([Id])
GO
ALTER TABLE [dbo].[FloorTables] CHECK CONSTRAINT [FK_FloorTables_Floors]
GO
ALTER TABLE [dbo].[IssueToLocationDetail]  WITH CHECK ADD  CONSTRAINT [FK_IssueToLocationDetail_IssueToLocationHead] FOREIGN KEY([Id])
REFERENCES [dbo].[IssueToLocationHead] ([Id])
GO
ALTER TABLE [dbo].[IssueToLocationDetail] CHECK CONSTRAINT [FK_IssueToLocationDetail_IssueToLocationHead]
GO
ALTER TABLE [dbo].[IssueToLocationHead]  WITH CHECK ADD  CONSTRAINT [FK_IssueToLocationHead_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[IssueToLocationHead] CHECK CONSTRAINT [FK_IssueToLocationHead_Customer]
GO
ALTER TABLE [dbo].[IssueToLocationHead]  WITH CHECK ADD  CONSTRAINT [FK_IssueToLocationHead_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[IssueToLocationHead] CHECK CONSTRAINT [FK_IssueToLocationHead_Departments]
GO
ALTER TABLE [dbo].[IssueToLocationHead]  WITH CHECK ADD  CONSTRAINT [FK_IssueToLocationHead_Locations] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([Id])
GO
ALTER TABLE [dbo].[IssueToLocationHead] CHECK CONSTRAINT [FK_IssueToLocationHead_Locations]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Departments]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemGroups] FOREIGN KEY([ItemGroupId])
REFERENCES [dbo].[ItemGroups] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ItemGroups]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_SubCategories] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategories] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_SubCategories]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Units] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Units] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Units]
GO
ALTER TABLE [dbo].[OpeningDetail]  WITH CHECK ADD  CONSTRAINT [FK_OpeningDetail_OpeningHead] FOREIGN KEY([Id])
REFERENCES [dbo].[OpeningHead] ([Id])
GO
ALTER TABLE [dbo].[OpeningDetail] CHECK CONSTRAINT [FK_OpeningDetail_OpeningHead]
GO
ALTER TABLE [dbo].[OrderFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_OrderFeedbacks_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderFeedbacks] CHECK CONSTRAINT [FK_OrderFeedbacks_Orders]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderTypes] FOREIGN KEY([OrderTypeId])
REFERENCES [dbo].[OrderTypes] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_OrderTypes]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PaymentTypes] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypes] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PaymentTypes]
GO
ALTER TABLE [dbo].[OrderTableHistories]  WITH CHECK ADD  CONSTRAINT [FK_OrderTableHistories_FloorTables] FOREIGN KEY([TableId])
REFERENCES [dbo].[FloorTables] ([Id])
GO
ALTER TABLE [dbo].[OrderTableHistories] CHECK CONSTRAINT [FK_OrderTableHistories_FloorTables]
GO
ALTER TABLE [dbo].[OrderTableHistories]  WITH CHECK ADD  CONSTRAINT [FK_OrderTableHistories_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderTableHistories] CHECK CONSTRAINT [FK_OrderTableHistories_Orders]
GO
ALTER TABLE [dbo].[PrintInfo]  WITH CHECK ADD  CONSTRAINT [FK_PrintInfo_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[PrintInfo] CHECK CONSTRAINT [FK_PrintInfo_Departments]
GO
ALTER TABLE [dbo].[ReturnToVendorDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReturnToVendorDetail_ReturnToVendorHead] FOREIGN KEY([Id])
REFERENCES [dbo].[ReturnToVendorHead] ([Id])
GO
ALTER TABLE [dbo].[ReturnToVendorDetail] CHECK CONSTRAINT [FK_ReturnToVendorDetail_ReturnToVendorHead]
GO
ALTER TABLE [dbo].[ReturnToWarehouseDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReturnToWarehouseDetail_ReturnToWarehouseHead] FOREIGN KEY([Id])
REFERENCES [dbo].[ReturnToWarehouseHead] ([Id])
GO
ALTER TABLE [dbo].[ReturnToWarehouseDetail] CHECK CONSTRAINT [FK_ReturnToWarehouseDetail_ReturnToWarehouseHead]
GO
ALTER TABLE [dbo].[StaffFoodDetail]  WITH CHECK ADD  CONSTRAINT [FK_StaffFoodDetail_StaffFoodHead] FOREIGN KEY([Id])
REFERENCES [dbo].[StaffFoodHead] ([Id])
GO
ALTER TABLE [dbo].[StaffFoodDetail] CHECK CONSTRAINT [FK_StaffFoodDetail_StaffFoodHead]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories]
GO
ALTER TABLE [dbo].[UserRights]  WITH CHECK ADD  CONSTRAINT [FK_UserRights_MainMenu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[MainMenu] ([Id])
GO
ALTER TABLE [dbo].[UserRights] CHECK CONSTRAINT [FK_UserRights_MainMenu]
GO
ALTER TABLE [dbo].[UserRights]  WITH CHECK ADD  CONSTRAINT [FK_UserRights_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRights] CHECK CONSTRAINT [FK_UserRights_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Designations] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designations] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Designations]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserTypes] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserTypes] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserTypes]
GO
ALTER TABLE [dbo].[VendorPayments]  WITH CHECK ADD  CONSTRAINT [FK_VendorPayments_VendorPaymentTypes] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[VendorPaymentTypes] ([Id])
GO
ALTER TABLE [dbo].[VendorPayments] CHECK CONSTRAINT [FK_VendorPayments_VendorPaymentTypes]
GO
ALTER TABLE [dbo].[VendorPayments]  WITH CHECK ADD  CONSTRAINT [FK_VendorPayments_Vendors] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])
GO
ALTER TABLE [dbo].[VendorPayments] CHECK CONSTRAINT [FK_VendorPayments_Vendors]
GO
ALTER TABLE [dbo].[Vendors]  WITH CHECK ADD  CONSTRAINT [FK_Vendors_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Vendors] CHECK CONSTRAINT [FK_Vendors_Cities]
GO
ALTER TABLE [dbo].[VendorToWarehouseHead]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseFromVendorHead_Vendors] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])
GO
ALTER TABLE [dbo].[VendorToWarehouseHead] CHECK CONSTRAINT [FK_PurchaseFromVendorHead_Vendors]
GO
ALTER TABLE [dbo].[WastageDetail]  WITH CHECK ADD  CONSTRAINT [FK_WastageDetail_WastageHead] FOREIGN KEY([Id])
REFERENCES [dbo].[WastageHead] ([Id])
GO
ALTER TABLE [dbo].[WastageDetail] CHECK CONSTRAINT [FK_WastageDetail_WastageHead]
GO
ALTER TABLE [dbo].[WastageHead]  WITH CHECK ADD  CONSTRAINT [FK_WastageHead_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[WastageHead] CHECK CONSTRAINT [FK_WastageHead_Departments]
GO
ALTER TABLE [dbo].[WastageHead]  WITH CHECK ADD  CONSTRAINT [FK_WastageHead_Locations] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([Id])
GO
ALTER TABLE [dbo].[WastageHead] CHECK CONSTRAINT [FK_WastageHead_Locations]
GO
/****** Object:  StoredProcedure [dbo].[Comsumption]    Script Date: 8/11/2021 7:33:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Comsumption]  @Todate DATETIME, @fromdate DATETIME
AS
select ClosingInventoryHead.TransactionDate,ClosingInventoryHead.DocNo,ClosingInventoryHead.Remarks,ClosingInventoryDetail.Quantity,ClosingInventoryDetail.ItemName
,CASE WHEN (SELECT SUM(TotalRate)/NULLIF(SUM(w.Quantity),0) FROM VendorToWarehouseDetail w WHERE w.ItemId=ClosingInventoryDetail.ItemId) IS NULL THEN
			(SELECT Rate FROM OpeningDetail w WHERE w.ItemId=ClosingInventoryDetail.ItemId)
		ELSE
			(SELECT SUM(TotalRate)/NULLIF(SUM(w.Quantity),0) FROM VendorToWarehouseDetail w WHERE w.ItemId=ClosingInventoryDetail.ItemId) END 
		AS Rate , (CASE WHEN (SELECT SUM(TotalRate)/NULLIF(SUM(w.Quantity),0) FROM VendorToWarehouseDetail w WHERE w.ItemId=ClosingInventoryDetail.ItemId) IS NULL THEN
			(SELECT Rate FROM OpeningDetail w WHERE w.ItemId=ClosingInventoryDetail.ItemId)
		ELSE
			(SELECT SUM(TotalRate)/NULLIF(SUM(w.Quantity),0) FROM VendorToWarehouseDetail w WHERE w.ItemId=ClosingInventoryDetail.ItemId) END 
	*  ClosingInventoryDetail.Quantity) AS TotalRate
from ClosingInventoryHead 
INNER JOIN ClosingInventoryDetail on
ClosingInventoryDetail.Id=ClosingInventoryHead.Id
where ClosingInventoryHead.TransactionDate between @Todate AND @fromdate
GO
/****** Object:  StoredProcedure [dbo].[IssueToDeptment]    Script Date: 8/11/2021 7:33:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[IssueToDeptment] @Todate DATETIME, @fromdate DATETIME
AS
WITH tbl AS (
	Select 
		h.Id, h.IssuanceDate, (Select Categories.Name  from Categories where Categories.Id=Items.CategoryId) AS Categoriesname, 
		d.ItemName, d.Quantity,  
		CASE WHEN (SELECT SUM(TotalRate)/NULLIF(SUM(w.Quantity),0) FROM VendorToWarehouseDetail w WHERE w.ItemId=d.ItemId) IS NULL THEN
			(SELECT Rate FROM OpeningDetail w WHERE w.ItemId=d.ItemId)
		ELSE
			(SELECT SUM(TotalRate)/NULLIF(SUM(w.Quantity),0) FROM VendorToWarehouseDetail w WHERE w.ItemId=d.ItemId) END 
		AS Rate,

		d.Gst,
		Locations.Name LocationName, Departments.Name DepartmentName  
	FROM
		IssueToLocationHead h
		INNER JOIN IssueToLocationDetail d on h.Id=d.Id 
		INNER JOIN Locations ON h.LocationId=Locations.Id
		INNER JOIN Departments ON h.DepartmentId=Departments.Id
        INNER JOIN Items ON d.ItemId=Items.Id
        
	where  h.IssuanceDate between   @Todate AND @fromdate
)
SELECT Id, IssuanceDate, Categoriesname,
ItemName, Quantity, 
Rate, (Quantity*Rate) TotalRate, Gst, 
LocationName, DepartmentName
FROM tbl
GO
/****** Object:  StoredProcedure [dbo].[ReturnToVendor]    Script Date: 8/11/2021 7:33:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[ReturnToVendor]    @Todate DATETIME, @fromdate DATETIME
AS
Select  Vendors.VendorName,  rh.Id HeadID, rh.DocNo,rh.Remarks,rh.TransactionDate ,rd.Quantity,rd.ItemName   from 


ReturnToVendorHead as rh
INNER JOIN ReturnToVendorDetail as rd on
rh.Id=rd.Id 
INNER JOIN Vendors on 
rh.VendorId=Vendors.Id

where rh.TransactionDate between @Todate AND @fromdate
GO
/****** Object:  StoredProcedure [dbo].[ReturnToWareHouse]    Script Date: 8/11/2021 7:33:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[ReturnToWareHouse]    @Todate DATETIME, @fromdate DATETIME
AS
Select   rh.Id HeadID, rh.DocNo,rh.Remarks,rh.TransactionDate ,rd.Quantity,rd.ItemName   from 


ReturnToWarehouseHead as rh
INNER JOIN ReturnToWarehouseDetail as rd on
rh.Id=rd.Id 
where rh.TransactionDate between @Todate AND @fromdate
GO
/****** Object:  StoredProcedure [dbo].[ReturnVenderSummary]    Script Date: 8/11/2021 7:33:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[ReturnVenderSummary] @Todate DATETIME, @fromdate DATETIME
AS

select   rd.ItemName  , Vendors.VendorName,sum(rd.Quantity) As TotalQunity 

from ReturnToVendorDetail as rd
INNER JOIN ReturnToVendorHead as rh
on
rd.Id=rh.Id
inner join Vendors on
rh.VendorId=Vendors.Id
where rh.TransactionDate between @Todate AND @fromdate
group by
VendorID, Vendors.VendorName,rd.ItemName
GO
/****** Object:  StoredProcedure [dbo].[ReturnVenderTowareHouseSummary]    Script Date: 8/11/2021 7:33:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[ReturnVenderTowareHouseSummary] @Todate DATETIME, @fromdate DATETIME
AS

select DepartmentId,  rd.ItemName  , Departments.Name,sum(rd.Quantity) As TotalQunity 

from ReturnToWarehouseDetail as rd
INNER JOIN ReturnToWarehouseHead as rh
on
rd.Id=rh.Id
inner join Departments on
rh.DepartmentId=Departments.Id
where rh.TransactionDate between @Todate AND @fromdate
group by
DepartmentId, Departments.Name,rd.ItemName


GO
/****** Object:  StoredProcedure [dbo].[VenderPaymentLedgerSummary]    Script Date: 8/11/2021 7:33:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC VenderPaymentLedgerSummary  '02-005-2021' , '05-02-2021'  ;  

CREATE PROCEDURE [dbo].[VenderPaymentLedgerSummary] @Todate DATETIME, @fromdate DATETIME
AS
select 
VendorID, VendorName, 
SUM(TotalNetBalance) AS TotalBuying, 
SUM(TotalPayment) AS TotalPayment, 
SUM(RemainingBalance) AS RemainingBalance 
from fn_VenderPaymentLedger (@Todate , @fromdate)
group by
VendorID, VendorName

GO
/****** Object:  StoredProcedure [dbo].[VenderToWarhouse]    Script Date: 8/11/2021 7:33:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VenderToWarhouse] @Todate DATETIME, @fromdate DATETIME ,  @itemid int
AS
IF(@itemid = 0)
Select VendorToWarehouseHead.DocNo ,VendorToWarehouseDetail.Quantity,VendorToWarehouseHead.GrossAmount,VendorToWarehouseHead.GstCharges,VendorToWarehouseHead.TotalNetAmount,VendorToWarehouseHead.TransactionDate,VendorToWarehouseHead.Discount,VendorToWarehouseHead.Remarks,VendorToWarehouseHead.SurCharge,   VendorToWarehouseDetail.ItemName from VendorToWarehouseHead

INNER JOIN VendorToWarehouseDetail on 
VendorToWarehouseHead.Id=VendorToWarehouseDetail.Id 
where 
VendorToWarehouseHead.TransactionDate between @Todate AND @fromdate
ELSE
Select VendorToWarehouseHead.DocNo, VendorToWarehouseDetail.Quantity, VendorToWarehouseHead.GrossAmount,VendorToWarehouseHead.GstCharges,VendorToWarehouseHead.TotalNetAmount,VendorToWarehouseHead.TransactionDate,VendorToWarehouseHead.Discount,VendorToWarehouseHead.Remarks,VendorToWarehouseHead.SurCharge,   VendorToWarehouseDetail.ItemName from VendorToWarehouseHead

INNER JOIN VendorToWarehouseDetail on 
VendorToWarehouseHead.Id=VendorToWarehouseDetail.Id 
where 
VendorToWarehouseDetail.ItemId=@itemid AND (VendorToWarehouseHead.TransactionDate between @Todate AND @fromdate)
GO
/****** Object:  StoredProcedure [dbo].[WastageRepot]    Script Date: 8/11/2021 7:33:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[WastageRepot] @Todate DATETIME, @fromdate DATETIME
AS
Select WastageDetail.Id,WastageDetail.VoucherLineNo,WastageDetail.ItemName,WastageDetail.Quantity,VendorToWarehouseDetail.Rate,(WastageDetail.Quantity*VendorToWarehouseDetail.Rate)As TotalRate
,WastageHead.TransactionDate
from
WastageDetail

INNER JOIN WastageHead on 
WastageHead.Id=WastageDetail.Id 
inner join VendorToWarehouseDetail on
WastageDetail.ItemId=VendorToWarehouseDetail.ItemId
where  WastageHead.TransactionDate between @Todate AND @fromdate
GO
