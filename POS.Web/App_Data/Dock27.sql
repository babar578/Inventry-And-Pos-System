USE [Dock27PosWebPortal]
GO
/****** Object:  Table [dbo].[ReturnToVendorDetail]    Script Date: 7/19/2021 4:57:59 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorToWarehouseDetail]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WastageDetail]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueToLocationDetail]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WastageHead]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClosingInventoryHead]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClosingInventoryDetail]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueToLocationHead]    Script Date: 7/19/2021 4:58:00 PM ******/
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
 CONSTRAINT [PK_IssueToLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeningHead]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeningDetail]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorToWarehouseHead]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnToWarehouseHead]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnToWarehouseDetail]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnToVendorHead]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ItemsStockInHand]    Script Date: 7/19/2021 4:58:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE FUNCTION [dbo].[fn_ItemsStockInHand] (@DateFrom DATETIME,@DateTo DATETIME )
RETURNS TABLE 
AS
RETURN 
(

    Select ItemId,	ItemName,	
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
/****** Object:  Table [dbo].[Units]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_InventoryBal_Simple]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  UserDefinedFunction [dbo].[fn_InventoryBal]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  Table [dbo].[Vendors]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorPayments]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_VenderPaymentLedger]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  Table [dbo].[Cities]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designations]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dock_OpeningDetail]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  Table [dbo].[Floors]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FloorTables]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemGroups]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainMenu]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderFeedbacks]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderFeedbackStatuses]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderTableHistories]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderTypes]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrintInfo]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopStatuses]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffFoodDetail]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffFoodHead]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRights]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorPaymentTypes]    Script Date: 7/19/2021 4:58:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (31, N'Salads', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (32, N'Soups', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (33, N'Chicken Entrees', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (34, N'Beaf Entrees', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (35, N'Seafood Entrees', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (36, N'Pasta', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (37, N'Pizza', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (38, N'Burgers and Sandwiches', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (39, N'Side Order', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (40, N'Desserts', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (41, N'Shakes & Smoothies', 1, CAST(N'2021-05-31T16:39:43.203' AS DateTime), CAST(N'2021-05-31T16:39:43.203' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (42, N'GROCERY ITEMS', 1, CAST(N'2021-05-31T16:59:01.483' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (43, N'BEVERAGE', 1, CAST(N'2021-05-31T17:26:43.650' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (44, N'DAIRY ITEMS', 1, CAST(N'2021-05-31T17:26:55.367' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (45, N'MEAT', 1, CAST(N'2021-05-31T17:27:10.080' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (46, N'SEA FOOD', 1, CAST(N'2021-05-31T17:27:20.580' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (47, N'VEGETABLE & FRUIT', 1, CAST(N'2021-05-31T17:28:07.290' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (48, N'BREAD', 1, CAST(N'2021-05-31T17:28:19.663' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (49, N'CROCKERY  & CUTLERY ', 1, CAST(N'2021-05-31T17:29:38.700' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (50, N'ASSETS ', 1, CAST(N'2021-05-31T17:29:53.210' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (51, N'ELECTRICAL ITEMS', 1, CAST(N'2021-05-31T17:30:39.017' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (52, N'UNIFORM', 1, CAST(N'2021-05-31T17:30:46.597' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (53, N'STAFF FOOD ', 1, CAST(N'2021-05-31T17:30:59.530' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (54, N'NON FOOD ITEMS', 1, CAST(N'2021-05-31T17:31:12.480' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (55, N'JAPANESE ITEMS', 1, CAST(N'2021-05-31T17:31:44.230' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (56, N'CLEANING ITEMS', 1, CAST(N'2021-05-31T17:32:19.707' AS DateTime), NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreationDate], [ModifyDate], [IsRawMaterial]) VALUES (57, N'NON FOOD', 1, CAST(N'2021-06-03T14:00:07.070' AS DateTime), NULL, 1)
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
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0001', 200, N'CHICKEN BREAST FILLET ', 540, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0002', 117, N'CHICKEN WHOLE  ', 91, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0003', 116, N'CHICKEN THAI ', 55, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0004', 122, N'TURKEY BACON  ', 37, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0005', 124, N'TURKEY SMOKE  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0006', 126, N'SMOKE SALMON   ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0007', 149, N'TUNNA FISH ', 1.10000002384186, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0008', 163, N'WHOLE SALMON ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0009', 82, N'DARK CHOCLATE 1KG ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0010', 277, N'PERMIZAN CHEESE ', 3.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0011', 313, N'VANILLA STICK  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0012', 279, N'PUCK CHEESE ', 9, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0013', 266, N'CREAM CHEESE ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0014', 230, N'YELLOW CHEESE SLICE ', 9, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0015', 276, N'NESTLE YOUGRT ', 6.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0016', 35, N'BLACK CHOCOLATE CHIP ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0017', 260, N'85% CHOCOLATE ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0018', 198, N'BEEF PUPRONI ', 17, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0019', 111, N'CHICKEN PEPPERONI  ', 13, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0020', 275, N'MOZELA CHEESE ADAMS ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0021', 271, N'FRESH MOZELA ', 33, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0022', 264, N'CHEDAR CHEESE ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0023', 167, N'NESVITA LOW FAT  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0024', 357, N'PLAIN BREAD ', 64, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0025', 44, N'BURGAR BUN  ', 90, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0026', 268, N'EGGS ', 910, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0027', 202, N'CHICKEN NIBLET ', 12, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0028', 143, N'ICE CUBE  ', 73.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0029', 314, N'RICHI CREAM ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0030', 327, N'VANILA HICO ICE CREAM  ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0031', 105, N'FRIES ', 42, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0032', 137, N'PRAWN 8/12 ', 20, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0033', 136, N'PRAWN 21/25 ', 18, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0034', 134, N'PANGASIUS FISH  ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0035', 140, N'SQUID FISH (CALAMARI)  ', 18.2999992370605, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0036', 315, N'YELLOW BUTTER ', 131, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0037', 280, N'PUFF PASTRY ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0038', 340, N'ZERO SPRITE CAN ', 204, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0039', 335, N'SPRITE CAN ', 444, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0040', 339, N'ZERO COKE CAN ', 240, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0041', 325, N'COKE CAN ', 675, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0042', 334, N'SPRITE 1.5LTR ', 138, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0043', 336, N'WATER 19LTR  ', 14.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0044', 338, N'WATER LARGE ', 384, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0045', 337, N'WATER SMALL ', 468, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0046', 69, N'COOKING OIL 16LTR ', 16, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0047', 49, N'RISOTO RICE  ', 16, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0048', 74, N'CORNFLOUR ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0049', 159, N'MAIDA ', 100, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0050', 292, N'SUGAR  ', 50, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'0051', 348, N'RICE GUEST ZARAFA  ', 69, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0001', 54, N'CASTER SUGAR ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0002', 45, N'BROWN SUGAR ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0003', 144, N'ICING SUGAR ', 11, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0004', 300, N'SWEET CHILI SAUCE 800ML  ', 22, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0005', 141, N'HOT SAUCE ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0006', 156, N'LIME SEASONING POWDER ', 23, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0007', 323, N'ARTICHOKE ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0008', 297, N'SUN DRIED TOMATO LOCAL SMALL  ', 27, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0009', 104, N'FRENCH MUSTARD GLN ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0010', 272, N'MARGRINE BUTTER ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0011', 93, N'EMLI SAUCE ', 17, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0012', 243, N'WORCESTERSHIRE SAUCE ', 7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0001', 265, N'COOKING CREAM ', 241, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0002', 51, N'CAPER IN VINEGAR ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0003', 246, N'YEAST ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0004', 131, N'HONEY ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0005', 462, N'VIZYAN CHOCLATE SYRUP  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0006', 366, N'STRAWBERRY FILLING   ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0007', 63, N'CHOCLATE SYRUP LOCAL ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0008', 291, N'STRAWBERRY TOPPING FILLING  LOCAL ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0009', 79, N'PEACH HALVES  ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0010', 94, N'PINEAPPLE SLICE SMALL ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0011', 66, N'COCONUT POWDER SANTAN ', 13, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0012', 33, N'BBQ SAUCE ', 12, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0013', 342, N'RASPBERRY JAM ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0014', 308, N'TOMATO PASTE ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0015', 225, N'WHEAT BISCUITS  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0016', 65, N'COCONUT MILK TIN ', 7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0017', 345, N'RED KIDNEY BEANS ', 49, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0018', 182, N'VERMICELLI ', 17, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0019', 158, N'MACRONI PASTA ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0020', 92, N'PENNE PASTA ', 30, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0021', 330, N'PEACH JUICE ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0022', 331, N'ORANGE JUICE ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0023', 333, N'MANGO JUICE ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0024', 332, N'PINE APPLE JUICE ', 30, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0025', 86, N'DEMI GLACE  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0026', 154, N'KIKOMAN SOYA SAUCE  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0027', 98, N'FISH SAUCE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0028', 365, N'SOYA SAUCE ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0029', 43, N'BREAD CRUMBS ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0030', 341, N'LIPTON TEA PKT GUST ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0031', 362, N'SIRACHA SAUCE ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0032', 250, N'DAIRY MILK ', 119, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0033', 274, N'MILK PAK ', 64, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0034', 363, N'SODA WATER ', 63, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (3, N'0035', 273, N'MILK PAK CREAM ', 161, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0001', 226, N'ICE BERG  ', 58, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0002', 209, N'BROCOLI  ', 38, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0003', 183, N'TOMATO STAFF  ', 62, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0004', 184, N'TOMATO  ', 93, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0005', 212, N'CHERRY TOMATO  ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0006', 180, N'POTATO STAFF  ', 347, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0007', 181, N'POTATOM KITCHEN  ', 41, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0008', 206, N'BABY POTATO  ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0009', 176, N'ONION STAFF  ', 106, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0010', 177, N'ONION KITCHEN  ', 41, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0011', 223, N'GREEN ONION  ', 14, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0012', 203, N'CARRIAT STAFF  ', 64, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0013', 204, N'CARRIAT KITCHEN  ', 88, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0014', 210, N'CABBAGE  ', 16, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0015', 454, N'RED CABBAGE  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0016', 220, N'GINGER  ', 7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0017', 219, N'GARLIC   ', 26, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0018', 193, N'SPINACH STAFF  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0019', 194, N'SPINACH KITCHEN  ', 60, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0020', 170, N'LEMON FRESH  ', 58.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0021', 171, N'LEMON GRASS  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0022', 174, N'MINT LEAVE  ', 237, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0023', 178, N'FRESH CORIANDER STAFF  ', 20, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0024', 213, N'CUCMBER  ', 41, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0025', 222, N'GREEN CAPSICUM  ', 103, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0026', 185, N'GREEN CHILI STAFF  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0027', 186, N'GREEN CHILI KITCHEN  ', 9.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0028', 216, N'FRESH BEANS  ', 25, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0029', 196, N'ZAUCQNI  ', 77, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (4, N'0030', 283, N'TOGARASHI ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0001', 189, N'PUMPKIN  ', 30, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0002', 250, N'DAIRY MILK ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0003', 59, N'CHILLI POWDER  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0004', 125, N'HALDI POWDER  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0005', 108, N'GARAM MASALA WHOLE ', 1.39999997615814, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0006', 263, N'EMLI WHOLE   ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0007', 452, N'BIRYANI MASALA  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0008', 268, N'EGGS ', 60, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0009', 31, N'BALSAMIC VINEGAR BLACK ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0010', 274, N'MILK PAK ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0011', 423, N'GATE PASS BOOK ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0012', 163, N'WHOLE SALMON ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0013', 135, N'PINK SALMON FISH ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0014', 149, N'TUNNA FISH ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0015', 94, N'PINEAPPLE SLICE SMALL ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0016', 325, N'COKE CAN ', 48, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0017', 338, N'WATER LARGE ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0018', 337, N'WATER SMALL ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0019', 278, N'PREMA MILK ', 17, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0020', 156, N'LIME SEASONING POWDER ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0021', 334, N'SPRITE 1.5LTR ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0022', 409, N'BENDING STRAW WHITE ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0023', 389, N'DISHWASHING LTR ', 190, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0024', 433, N'SCOTCH BRIGHT ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0025', 33, N'BBQ SAUCE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0026', 345, N'RED KIDNEY BEANS ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0027', 297, N'SUN DRIED TOMATO LOCAL SMALL  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0028', 308, N'TOMATO PASTE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0029', 73, N'OREGANO DAY ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0030', 53, N'CASHEWNUT ', 3.29999995231628, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0031', 237, N'HALLUMI CHEESE  ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0032', 273, N'MILK PAK CREAM ', 54, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (5, N'0033', 265, N'COOKING CREAM ', 12, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (6, N'0001', 76, N'PAPRIKA POWDER  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (6, N'0002', 356, N'SAMBALOELEK SAUCE ', 68, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (6, N'0003', 460, N'RICE VINEGAR IMP. JAPANIES LARGE GLN  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (6, N'0004', 146, N'JALAPENO Can ', 7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (6, N'0005', 301, N'SWEET CORN LARGE  ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (6, N'0006', 47, N'BUTTER MUSHROOMS  ', 44, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (6, N'0007', 37, N'BLACK OLIVE ', 14, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (6, N'0008', 68, N'OLIVE OIL EXTRA   ', 7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0001', 75, N'OYSTER SAUCE MAMA SITA  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0002', 324, N'COFFEE BEANS ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0003', 235, N'WHITE VINEGAR (SHEZAN) ', 7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0004', 152, N'KETCHUP 4KG PKT ', 14, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0005', 161, N'MAYONIES BEST FOOD ', 14, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0006', 289, N'TRUFFLE OIL ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0007', 420, N'table napkin ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0008', 378, N'HI JEANS TISSUE ', 35, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0009', 425, N'TOILET ROLL ', 15, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (7, N'0010', 426, N'TOOTH PICKS ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0001', 255, N'HAND WASH STAFF ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0002', 409, N'BENDING STRAW WHITE ', 23, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0003', 436, N'PRINTER ROLL ', 26, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0004', 418, N'shopping bag ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0005', 435, N'A4 PAPER ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0006', 403, N'AAA CELL ', 576, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0007', 402, N'AA  CELL ', 35, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0008', 396, N'phenyle  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0009', 445, N'LPG GAS  ', 33, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (8, N'0010', 429, N'VIM ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (9, N'0001', 394, N'MAX LIQUID ', 13, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (9, N'0002', 375, N'HAIR NET CAP ', 12, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (9, N'0003', 433, N'SCOTCH BRIGHT ', 51, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (9, N'0004', 419, N'surf ', 27, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (9, N'0005', 405, N'AIR FRESHNER  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (9, N'0006', 372, N'GLINT ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (9, N'0007', 377, N'HARPIC  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (9, N'0008', 410, N'BIRTHDAY CANDLE  ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (9, N'0009', 391, N'FOAM ', 28, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0001', 441, N'DISPOSIBLE SPOON  ', 200, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0002', 379, N'JALI ', 74, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0003', 438, N'CLING FILM SMALL ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0004', 437, N'CLING FILM LARGE ', 11, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0005', 411, N'F1 BOX ', 150, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0006', 412, N'F2 BOX ', 300, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0007', 413, N'F3 BOX ', 300, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0008', 427, N'TOWEL ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0009', 369, N'DUSTER ', 21, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0010', 370, N'FACE MASK ', 16, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (10, N'0011', 424, N'TISSUE JUMBO ROLL ', 22, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (11, N'0001', 307, N'TABASCO SAUCE  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (11, N'0002', 318, N'CRANBERRY SYRUP ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (11, N'0003', 295, N'SUMAC POWDER BTL ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (11, N'0004', 395, N'GARBAGE BAG  ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (11, N'0005', 346, N'RED VINE VINGAR ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (11, N'0006', 132, N'HORS RADISH SAUCE ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (11, N'0007', 302, N'TAHINI PASTE   ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (11, N'0008', 344, N'RED JALAPINO ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (11, N'0009', 282, N'HONDASHI ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0001', 361, N'SHUSH SHEET JAPANESES  ', 1.79999995231628, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0002', 150, N'JAPANIES TEMPORA FLOUR ', 23, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0003', 112, N'GHEE FOR STAFF ', 36, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0004', 294, N'SUJI  ', 8.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0005', 148, N'JAPANESE RICE IMP ', 12, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0006', 232, N'WHITE PEPPER POWDER  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0007', 254, N'ZERA POWDER  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0008', 103, N'WHEAT WHOLE  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0009', 247, N'DAAL MASH  ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (12, N'0010', 55, N'WHITE CHANA  ', 7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0001', 36, N'BLACK MUSHROOM ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0002', 38, N'BLACK PEPPER POWDER ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0003', 64, N'CINAMON POWDER ', 0.600000023841858, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0004', 61, N'CHILLI WHOLE ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0005', 23, N'ALMOND  ', 2.79999995231628, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0006', 224, N'WALNUTS  ', 1.29999995231628, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0007', 85, N'PEANUT  ', 0.600000023841858, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0008', 155, N'KISHMISH ', 0.740000009536743, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0009', 233, N'WHITE QUINWA ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (13, N'0010', 434, N'chopstick imp ', 9, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0001', 300, N'SWEET CHILI SAUCE 800ML  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0002', 44, N'BURGAR BUN  ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0003', 357, N'PLAIN BREAD ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0004', 230, N'YELLOW CHEESE SLICE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0005', 77, N'SPAGHETTI PASTA ', 13, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0006', 437, N'CLING FILM LARGE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0007', 23, N'ALMOND  ', 0.300000011920929, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0008', 424, N'TISSUE JUMBO ROLL ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0009', 152, N'KETCHUP 4KG PKT ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0010', 141, N'HOT SAUCE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0011', 378, N'HI JEANS TISSUE ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0012', 419, N'surf ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0013', 275, N'MOZELA CHEESE ADAMS ', 15, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (15, N'0014', 344, N'RED JALAPINO ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0001', 25, N'ANCHOVIES FISH ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0002', 34, N'BLACK SALT ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0003', 48, N'MIX SPICE  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0004', 57, N'CHICKEN POWDER ', 30, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0005', 67, N'NUTELLA CHOCOLATE ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0006', 89, N'COMMENTS CARD ', 100, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0007', 91, N'EDAMMAME ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0008', 97, N'PIZZA FLOUR  25KG  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0009', 153, N'CRAB STICK  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (16, N'0010', 169, N'LEEK  ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (17, N'0001', 190, N'RED APPLE  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (17, N'0002', 191, N'GREEN APPLE  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (17, N'0003', 192, N'ROCKET LEAVE  ', 7.09999990463257, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (17, N'0004', 195, N'THAI BIRD CHILLI  ', 14, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (17, N'0005', 199, N'BEEF ROD  ', 163.490005493164, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (17, N'0006', 201, N'CHICKEN MALAI BOTI ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (17, N'0007', 207, N'BABY SPINACH  ', 4.25, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (17, N'0008', 208, N'BANANA  ', 202, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0001', 211, N'CELERY  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0002', 214, N'EGG PLANET  ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0003', 215, N'FRESH BASIL  ', 1.79999995231628, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0004', 217, N'FRESH BLUE BERRY  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0005', 218, N'FRESH MUSHROOMS  ', 50, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0006', 221, N'GLANGAL  ', 1.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0007', 231, N'YOUGRT CUP  ', 9, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0008', 239, N'CHILLI CHEDAR CHEESE 250G  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0009', 241, N'WALNUTS CHEESE 250 g  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0010', 242, N'GOUDA HERBS CHEESE 250G  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0001', 256, N'RICE FOR STAFF ', 68, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0002', 226, N'ICE BERG  ', 0.100000001490116, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0003', 187, N'PARSELY  ', 4.19999980926514, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0004', 343, N'RED CHERRY  ', 2.09999990463257, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0005', 252, N'KIDNEY BEAND STAFF ', 9, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0006', 249, N'DAAL MONG  ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0007', 251, N'ROTTI  ', 4410, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0008', 248, N'DAAL MASOOR ', 17, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0009', 245, N'DAAL CHANA  ', 15, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0010', 277, N'PERMIZAN CHEESE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0011', 286, N'LIGHT SOYA SAUCE  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0012', 288, N'TOBIKKO ORANGE ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0001', 296, N'SUN DRIED TOMATO LARGE  ', 12, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0002', 319, N'MOJITO SYRUP  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0003', 321, N'YAMASA SAUCE 18LTR ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0004', 322, N'MIZKAN VINEGAR JAPANIES ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0005', 352, N'RICH,S COOKING CREAM  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0006', 355, N'SALT ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0007', 366, N'STRAWBERRY FILLING   ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0008', 380, N'LIGHTER WITH LIGHT ', 18, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0009', 385, N'PIPING BAG ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0001', 421, N'TAKE WAY BAG BROWN ', 600, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0002', 428, N'TRAY BRUSH  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0003', 440, N'COIN CELL ', 9, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0004', 443, N'CHICKS PEAS  ', 18, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0005', 444, N'PRAWN 26/30  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0006', 449, N'peach ice tea  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0007', 450, N'graps  ', 10.4499998092651, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0008', 451, N'MALMAL CLOTH  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0009', 453, N'beet root  ', 12, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0010', 456, N'MANGO FRESH  ', 36, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0011', 457, N'fresh cherry  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0012', 458, N'pear imp  ', 5.19999980926514, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0013', 459, N'plum  ', 10.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0014', 464, N'BEANS SPROUT  ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0001', 251, N'ROTTI  ', 370, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0002', 226, N'ICE BERG  ', 4.9, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0003', 209, N'BROCOLI  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0004', 180, N'POTATO STAFF  ', 27, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0005', 204, N'CARRIAT KITCHEN  ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0006', 220, N'GINGER  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0007', 219, N'GARLIC   ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0008', 170, N'LEMON FRESH  ', 7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0009', 174, N'MINT LEAVE  ', 20, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0010', 178, N'FRESH CORIANDER STAFF  ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0011', 213, N'CUCMBER  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0012', 222, N'GREEN CAPSICUM  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0013', 223, N'GREEN ONION  ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0014', 175, N'MULTI CAPSICUM  ', 76, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0015', 212, N'CHERRY TOMATO  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0016', 192, N'ROCKET LEAVE  ', 1.75, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0017', 187, N'PARSELY  ', 0.7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0018', 207, N'BABY SPINACH  ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0019', 208, N'BANANA  ', 36, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0020', 193, N'SPINACH STAFF  ', 12, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0021', 186, N'GREEN CHILI KITCHEN  ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0022', 216, N'FRESH BEANS  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0023', 457, N'fresh cherry  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0024', 169, N'LEEK  ', 1.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0025', 456, N'MANGO FRESH  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0026', 188, N'PEACH FRESH  ', 31, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0027', 239, N'CHILLI CHEDAR CHEESE 250G  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0028', 242, N'GOUDA HERBS CHEESE 250G  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0029', 241, N'WALNUTS CHEESE 250 g  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0030', 199, N'BEEF ROD  ', 21.3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0031', 215, N'FRESH BASIL  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0032', 465, N'cherry syrup  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0001', 143, N'ICE CUBE  ', 14, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0002', 251, N'ROTTI  ', 130, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0003', 226, N'ICE BERG  ', 4.1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0004', 209, N'BROCOLI  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0005', 184, N'TOMATO  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0006', 176, N'ONION STAFF  ', 7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0007', 203, N'CARRIAT STAFF  ', 15, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0008', 194, N'SPINACH KITCHEN  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0009', 170, N'LEMON FRESH  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0010', 207, N'BABY SPINACH  ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0011', 178, N'FRESH CORIANDER STAFF  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0012', 222, N'GREEN CAPSICUM  ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0013', 216, N'FRESH BEANS  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0014', 175, N'MULTI CAPSICUM  ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0015', 456, N'MANGO FRESH  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0016', 208, N'BANANA  ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0017', 190, N'RED APPLE  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0018', 217, N'FRESH BLUE BERRY  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0019', 211, N'CELERY  ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0020', 187, N'PARSELY  ', 0.25, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0021', 192, N'ROCKET LEAVE  ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0022', 196, N'ZAUCQNI  ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0023', 174, N'MINT LEAVE  ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0024', 458, N'pear imp  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0025', 212, N'CHERRY TOMATO  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0026', 195, N'THAI BIRD CHILLI  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0027', 218, N'FRESH MUSHROOMS  ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0028', 188, N'PEACH FRESH  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0001', 467, N'KIWI KNIFE  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0002', 468, N'ROOPER PEELER  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0003', 271, N'FRESH MOZELA ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0004', 336, N'WATER 19LTR  ', 0.7, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0005', 355, N'SALT ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0006', 112, N'GHEE FOR STAFF ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0007', 144, N'ICING SUGAR ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0008', 225, N'WHEAT BISCUITS  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0009', 315, N'YELLOW BUTTER ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0010', 280, N'PUFF PASTRY ', 0.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0001', 79, N'PEACH HALVES  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0002', 290, N'STRAWBERRY TOPPING FILLING  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0003', 41, N'BLUE BERRY FILLING ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0004', 47, N'BUTTER MUSHROOMS  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0005', 301, N'SWEET CORN LARGE  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0006', 332, N'PINE APPLE JUICE ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0007', 273, N'MILK PAK CREAM ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0008', 69, N'COOKING OIL 16LTR ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0009', 104, N'FRENCH MUSTARD GLN ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0010', 23, N'ALMOND  ', 0.6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0011', 37, N'BLACK OLIVE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0012', 265, N'COOKING CREAM ', 60, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0013', 92, N'PENNE PASTA ', 12, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0014', 274, N'MILK PAK ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0015', 111, N'CHICKEN PEPPERONI  ', 5, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0016', 292, N'SUGAR  ', 15, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0001', 274, N'MILK PAK ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0002', 112, N'GHEE FOR STAFF ', 9, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0003', 250, N'DAIRY MILK ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0004', 263, N'EMLI WHOLE   ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0005', 152, N'KETCHUP 4KG PKT ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0006', 257, N'STAFF TEA ', 0.75, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0007', 308, N'TOMATO PASTE ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0008', 159, N'MAIDA ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0009', 315, N'YELLOW BUTTER ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0010', 99, N'POLAC CONDENSED MILK ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0011', 290, N'STRAWBERRY TOPPING FILLING  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0012', 41, N'BLUE BERRY FILLING ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0013', 27, N'CHOKER   ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0014', 348, N'RICE GUEST ZARAFA  ', 18.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0015', 116, N'CHICKEN THAI ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0016', 105, N'FRIES ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0017', 271, N'FRESH MOZELA ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0018', 275, N'MOZELA CHEESE ADAMS ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0019', 335, N'SPRITE CAN ', 48, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0020', 325, N'COKE CAN ', 84, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0021', 339, N'ZERO COKE CAN ', 36, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0022', 334, N'SPRITE 1.5LTR ', 18, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0023', 338, N'WATER LARGE ', 18, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0024', 337, N'WATER SMALL ', 24, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0025', 332, N'PINE APPLE JUICE ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0026', 330, N'PEACH JUICE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0027', 202, N'CHICKEN NIBLET ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0028', 47, N'BUTTER MUSHROOMS  ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0029', 37, N'BLACK OLIVE ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0030', 268, N'EGGS ', 150, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0031', 265, N'COOKING CREAM ', 38, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0032', 36, N'BLACK MUSHROOM ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0033', 363, N'SODA WATER ', 52, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0034', 392, N'GREEN JALI  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0035', 429, N'VIM ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0036', 344, N'RED JALAPINO ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0037', 326, N'FANTA CAN ', 36, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0038', 117, N'CHICKEN WHOLE  ', 10, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0039', 200, N'CHICKEN BREAST FILLET ', 60, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0040', 327, N'VANILA HICO ICE CREAM  ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0041', 44, N'BURGAR BUN  ', 26, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0042', 55, N'WHITE CHANA  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0001', 33, N'BBQ SAUCE ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0002', 362, N'SIRACHA SAUCE ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0003', 31, N'BALSAMIC VINEGAR BLACK ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0004', 345, N'RED KIDNEY BEANS ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0005', 243, N'WORCESTERSHIRE SAUCE ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0006', 43, N'BREAD CRUMBS ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0007', 60, N'CHILLI SAUCE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0008', 132, N'HORS RADISH SAUCE ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0009', 437, N'CLING FILM LARGE ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0010', 406, N'ALUMIN FOIL ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0011', 357, N'PLAIN BREAD ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0012', 315, N'YELLOW BUTTER ', 11, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0013', 158, N'MACRONI PASTA ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0014', 92, N'PENNE PASTA ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0015', 292, N'SUGAR  ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0016', 348, N'RICE GUEST ZARAFA  ', 8, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0017', 159, N'MAIDA ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0018', 74, N'CORNFLOUR ', 2.5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0019', 273, N'MILK PAK CREAM ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0020', 78, N'CRUSHED CHILLI  ', 4, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0021', 61, N'CHILLI WHOLE ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0022', 355, N'SALT ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0023', 349, N'RICE NOODLE  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0024', 105, N'FRIES ', 6, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0025', 297, N'SUN DRIED TOMATO LOCAL SMALL  ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0026', 441, N'DISPOSIBLE SPOON  ', 100, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0027', 231, N'YOUGRT CUP  ', 3, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0028', 278, N'PREMA MILK ', 9, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0029', 361, N'SHUSH SHEET JAPANESES  ', 0.2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0030', 424, N'TISSUE JUMBO ROLL ', 2, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0031', 420, N'table napkin ', 5, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0032', 152, N'KETCHUP 4KG PKT ', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IssueToLocationDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (28, N'0001', 25, N'ANCHOVIES FISH ', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[IssueToLocationHead] ON 

INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (1, N'1', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T15:53:04.827' AS DateTime), CAST(N'2021-06-30T15:53:04.827' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (2, N'2', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T16:22:00.740' AS DateTime), CAST(N'2021-06-30T16:22:00.740' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (3, N'4', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T16:54:20.087' AS DateTime), CAST(N'2021-06-30T16:54:20.087' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (4, N'5', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T18:07:59.477' AS DateTime), CAST(N'2021-06-30T18:07:59.477' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (5, N'6', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T19:04:43.360' AS DateTime), CAST(N'2021-06-30T19:04:43.360' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (6, N'2', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T20:30:10.337' AS DateTime), CAST(N'2021-06-30T20:30:10.337' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (7, N'4', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T20:33:44.797' AS DateTime), CAST(N'2021-06-30T20:33:44.797' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (8, N'4', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T20:47:50.867' AS DateTime), CAST(N'2021-06-30T20:47:50.867' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (9, N'4', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T20:51:33.267' AS DateTime), CAST(N'2021-06-30T20:51:33.267' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (10, N'2', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T20:57:02.520' AS DateTime), CAST(N'2021-06-30T20:57:02.520' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (11, N'5', N'issued', 5, 4, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T10:41:00.117' AS DateTime), CAST(N'2021-07-01T10:41:00.117' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (12, N'6', N'issued', 5, 4, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T10:45:49.137' AS DateTime), CAST(N'2021-07-01T10:45:49.137' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (13, N'7', N'issued', 5, 4, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T11:11:56.787' AS DateTime), CAST(N'2021-07-01T11:11:56.787' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (15, N'8', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T12:00:39.590' AS DateTime), CAST(N'2021-07-01T12:00:39.590' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (16, N'9', N'PURCHASE', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T16:29:42.623' AS DateTime), CAST(N'2021-07-01T16:29:42.623' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (17, N'9', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T17:12:53.967' AS DateTime), CAST(N'2021-07-01T17:12:53.967' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (18, N'10', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T17:17:35.373' AS DateTime), CAST(N'2021-07-01T17:17:35.373' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (19, N'11', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T17:59:45.847' AS DateTime), CAST(N'2021-07-01T17:59:45.847' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (20, N'12', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T18:06:47.070' AS DateTime), CAST(N'2021-07-01T18:06:47.070' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (21, N'13', N'issued', 5, 4, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T18:17:06.283' AS DateTime), CAST(N'2021-07-01T18:17:06.283' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (22, N'14', N'issued', 5, 4, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-02T18:45:51.163' AS DateTime), CAST(N'2021-07-02T18:45:51.163' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (23, N'4', N'issued', 5, 4, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T15:35:30.223' AS DateTime), CAST(N'2021-07-03T15:35:30.223' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (24, N'5', N'issued', 5, 4, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T16:19:33.707' AS DateTime), CAST(N'2021-07-03T16:19:33.707' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (25, N'4', N'issued', 5, 4, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T16:50:07.527' AS DateTime), CAST(N'2021-07-03T16:50:07.527' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (26, N'16', N'issued', 5, 4, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T17:03:16.907' AS DateTime), CAST(N'2021-07-06T17:03:16.907' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (27, N'17', N'issued', 5, 4, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T17:46:47.893' AS DateTime), CAST(N'2021-07-06T17:46:47.893' AS DateTime))
INSERT [dbo].[IssueToLocationHead] ([Id], [DocNo], [Remarks], [LocationId], [DepartmentId], [IssuanceDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (28, N'21', N'SDAASD', 5, 5, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 5, CAST(N'2021-07-07T15:50:52.603' AS DateTime), CAST(N'2021-07-07T15:50:52.603' AS DateTime))
SET IDENTITY_INSERT [dbo].[IssueToLocationHead] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemGroups] ON 

INSERT [dbo].[ItemGroups] ([Id], [Name], [IsActive]) VALUES (10, N'FOOD ITEMS ', 1)
INSERT [dbo].[ItemGroups] ([Id], [Name], [IsActive]) VALUES (11, N'NON FOOD ITEMS', 1)
SET IDENTITY_INSERT [dbo].[ItemGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (23, N'ALMOND', 42, NULL, 16, 1450, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T17:00:00.550' AS DateTime), CAST(N'2021-07-03T15:04:50.287' AS DateTime), 6, 1, 10, N'OPENING STOCK BY RIZWAN')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (24, N'gram', 31, NULL, NULL, 36, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T17:58:58.627' AS DateTime), CAST(N'2021-05-31T17:58:58.627' AS DateTime), 4, 0, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (25, N'ANCHOVIES FISH', 42, NULL, 21, 375, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:08:11.777' AS DateTime), CAST(N'2021-07-03T16:10:16.400' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (26, N'APPLE CIDER VINEGAR ', 42, NULL, 19, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:09:50.457' AS DateTime), CAST(N'2021-05-31T18:09:50.457' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (27, N'CHOKER ', 42, NULL, 16, 70, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:10:38.853' AS DateTime), CAST(N'2021-05-31T18:10:38.853' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (28, N'BABY CORN ', 42, NULL, 17, 133, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:11:20.823' AS DateTime), CAST(N'2021-05-31T18:11:20.823' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (29, N'BACKLE SUPREME', 42, NULL, 16, 181, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:14:26.683' AS DateTime), CAST(N'2021-05-31T18:14:26.683' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (30, N'BASIN', 53, NULL, 16, 150, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:22:00.810' AS DateTime), CAST(N'2021-05-31T18:22:00.810' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (31, N'BALSAMIC VINEGAR BLACK', 42, NULL, 19, 580, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:22:48.427' AS DateTime), CAST(N'2021-07-03T15:04:50.333' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (32, N'BASIL DRY', 42, NULL, 20, 600, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:23:18.833' AS DateTime), CAST(N'2021-05-31T18:23:18.833' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (33, N'BBQ SAUCE', 42, NULL, 19, 580, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:23:53.250' AS DateTime), CAST(N'2021-07-03T15:04:50.333' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (34, N'BLACK SALT', 42, NULL, 16, 80, 0, 0, NULL, NULL, 1, CAST(N'2021-05-31T18:24:20.477' AS DateTime), CAST(N'2021-05-31T18:24:20.477' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (35, N'BLACK CHOCOLATE CHIP', 42, NULL, 20, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:17:58.643' AS DateTime), CAST(N'2021-06-03T15:13:50.057' AS DateTime), 6, 1, 10, N'food item')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (36, N'BLACK MUSHROOM', 42, NULL, 16, 2950, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:19:45.170' AS DateTime), CAST(N'2021-06-26T13:25:07.453' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (37, N'BLACK OLIVE', 42, NULL, 18, 850, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:21:00.307' AS DateTime), CAST(N'2021-07-03T15:04:50.333' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (38, N'BLACK PEPPER POWDER', 42, NULL, 16, 900, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:23:19.957' AS DateTime), CAST(N'2021-06-04T16:33:38.773' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (39, N'BLACK SESMI SEEDS', 42, NULL, 16, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:27:42.747' AS DateTime), CAST(N'2021-06-04T16:33:53.580' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (40, N'BLACK PEPPER WHOLE', 42, NULL, 16, 850, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:52:07.233' AS DateTime), CAST(N'2021-06-04T16:34:08.027' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (41, N'BLUE BERRY FILLING', 42, NULL, 17, 860, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:53:09.887' AS DateTime), CAST(N'2021-06-28T16:58:22.367' AS DateTime), 6, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (42, N'BLUE BERRY TOPPING FILLING', 42, NULL, 19, 1000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:53:50.887' AS DateTime), CAST(N'2021-06-04T16:37:05.963' AS DateTime), 6, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (43, N'BREAD CRUMBS', 42, NULL, 20, 380, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:54:47.880' AS DateTime), CAST(N'2021-06-25T13:51:53.247' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (44, N'BURGAR BUN', 42, NULL, 20, 62, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:55:38.493' AS DateTime), CAST(N'2021-07-06T14:14:00.210' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (45, N'BROWN SUGAR', 42, NULL, 20, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:56:22.550' AS DateTime), CAST(N'2021-06-04T16:37:36.107' AS DateTime), 6, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (46, N'SUGAR SACHET', 43, NULL, 21, 2, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:57:08.717' AS DateTime), CAST(N'2021-06-04T16:37:56.967' AS DateTime), 5, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (47, N'BUTTER MUSHROOMS ', 42, NULL, 18, 830, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:57:41.977' AS DateTime), CAST(N'2021-07-06T18:05:16.470' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (48, N'MIX SPICE', 42, NULL, 19, 395, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:58:24.367' AS DateTime), CAST(N'2021-07-03T16:10:16.383' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (49, N'RISOTO RICE', 42, NULL, 16, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T13:58:57.253' AS DateTime), CAST(N'2021-06-28T15:37:04.590' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (50, N'CANDERAL SUGAR SACHET', 43, NULL, 20, 200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:01:38.887' AS DateTime), CAST(N'2021-06-04T16:47:08.120' AS DateTime), 5, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (51, N'CAPER IN VINEGAR', 42, NULL, 19, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:02:09.433' AS DateTime), CAST(N'2021-06-04T16:47:21.493' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (52, N'CARAMEL CHOCLATE SYRUP', 42, NULL, 19, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:03:01.760' AS DateTime), CAST(N'2021-06-04T16:47:35.923' AS DateTime), 6, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (53, N'CASHEWNUT', 42, NULL, 16, 1900, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:03:49.767' AS DateTime), CAST(N'2021-07-03T15:04:50.350' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (54, N'CASTER SUGAR', 42, NULL, 20, 105, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:06:54.440' AS DateTime), CAST(N'2021-07-03T15:04:50.350' AS DateTime), 6, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (55, N'WHITE CHANA', 53, NULL, 16, 140, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:07:49.703' AS DateTime), CAST(N'2021-07-03T15:04:50.350' AS DateTime), 7, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (56, N'RICE STICK', 42, NULL, 20, 343, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:08:23.467' AS DateTime), CAST(N'2021-06-04T16:53:35.957' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (57, N'CHICKEN POWDER', 42, NULL, 16, 950, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:11:00.497' AS DateTime), CAST(N'2021-07-03T15:04:50.367' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (58, N'CHILLI PASTE WITH SOYA BEEN', 42, NULL, 19, 520, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:11:44.430' AS DateTime), CAST(N'2021-06-28T16:58:22.380' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (59, N'CHILLI POWDER', 42, NULL, 16, 600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:12:17.977' AS DateTime), CAST(N'2021-06-29T17:38:54.330' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (60, N'CHILLI SAUCE', 42, NULL, 19, 180, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:12:58.507' AS DateTime), CAST(N'2021-07-03T15:04:50.367' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (61, N'CHILLI WHOLE', 42, NULL, 16, 880, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:13:28.947' AS DateTime), CAST(N'2021-06-29T17:38:54.377' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (62, N'CHOCLATE POWDER', 42, NULL, 16, 714, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:14:25.627' AS DateTime), CAST(N'2021-06-04T16:55:52.970' AS DateTime), 6, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (63, N'CHOCLATE SYRUP LOCAL', 42, NULL, 19, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:15:27.270' AS DateTime), CAST(N'2021-06-04T16:56:14.530' AS DateTime), 6, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (64, N'CINAMON POWDER', 42, NULL, 16, 800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:16:02.513' AS DateTime), CAST(N'2021-06-04T16:56:57.903' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (65, N'COCONUT MILK TIN', 42, NULL, 17, 235, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:16:38.257' AS DateTime), CAST(N'2021-06-25T13:51:53.247' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (66, N'COCONUT POWDER SANTAN', 43, NULL, 20, 450, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:17:05.623' AS DateTime), CAST(N'2021-06-30T17:17:24.153' AS DateTime), 5, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (67, N'NUTELLA CHOCOLATE', 42, NULL, 21, 640, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:18:38.543' AS DateTime), CAST(N'2021-07-03T15:45:25.910' AS DateTime), 6, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (68, N'OLIVE OIL EXTRA ', 42, NULL, 21, 2400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:23:14.363' AS DateTime), CAST(N'2021-07-03T15:04:50.367' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (69, N'COOKING OIL 16LTR', 42, NULL, 17, 4200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:23:16.390' AS DateTime), CAST(N'2021-07-03T15:04:50.397' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (70, N'CORIANDER POWDER', 42, NULL, 16, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:23:44.147' AS DateTime), CAST(N'2021-06-04T16:58:37.533' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (71, N'ONION POWDER ', 42, NULL, 16, 225, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:23:44.927' AS DateTime), CAST(N'2021-06-03T14:23:44.927' AS DateTime), 4, 1, 10, N'OPENING STOCK 
')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (72, N'CORIANDER WHOLE', 42, NULL, 16, 280, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:24:10.620' AS DateTime), CAST(N'2021-06-04T16:59:15.603' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (73, N'OREGANO DAY', 42, NULL, 20, 450, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:24:31.310' AS DateTime), CAST(N'2021-07-03T15:04:50.367' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (74, N'CORNFLOUR', 42, NULL, 16, 120, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:24:37.300' AS DateTime), CAST(N'2021-06-04T16:59:35.120' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (75, N'OYSTER SAUCE MAMA SITA ', 42, NULL, 21, 3900, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:25:31.110' AS DateTime), CAST(N'2021-07-03T15:04:50.380' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (76, N'PAPRIKA POWDER ', 42, NULL, 20, 1100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:26:02.607' AS DateTime), CAST(N'2021-06-03T14:26:02.607' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (77, N'SPAGHETTI PASTA', 42, NULL, 20, 170, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:27:25.200' AS DateTime), CAST(N'2021-07-03T15:04:50.380' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (78, N'CRUSHED CHILLI ', 42, NULL, 16, 600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:28:15.907' AS DateTime), CAST(N'2021-06-28T16:58:22.380' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (79, N'PEACH HALVES ', 42, NULL, 17, 250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:28:50.620' AS DateTime), CAST(N'2021-06-26T15:28:32.820' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (80, N'CUCMBER PICKLE', 42, NULL, 19, 900, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:29:02.147' AS DateTime), CAST(N'2021-06-04T17:00:15.653' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (81, N'PEACH PUREE', 42, NULL, 17, 1250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:29:59.267' AS DateTime), CAST(N'2021-06-03T14:29:59.267' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (82, N'DARK CHOCLATE 1KG', 42, NULL, 16, 1200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:30:22.497' AS DateTime), CAST(N'2021-06-04T17:00:49.693' AS DateTime), 6, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (83, N'PEACH SYRUP', 42, NULL, 19, 1250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:30:44.323' AS DateTime), CAST(N'2021-06-03T14:30:44.323' AS DateTime), 5, 1, 10, N'OPENING STOCK
')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (84, N'DARK SOYA SAUCE', 42, NULL, 19, 600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:31:01.093' AS DateTime), CAST(N'2021-06-04T17:01:18.637' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (85, N'PEANUT ', 42, NULL, 16, 460, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:31:13.747' AS DateTime), CAST(N'2021-06-03T14:31:13.747' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (86, N'DEMI GLACE ', 42, NULL, 18, 1200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:31:40.907' AS DateTime), CAST(N'2021-07-03T15:04:50.380' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (87, N'PEELED TOMATO', 42, NULL, 17, 140, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:32:07.197' AS DateTime), CAST(N'2021-06-03T14:32:07.197' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (88, N'DIJON MUSTARD', 42, NULL, 19, 750, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:32:21.830' AS DateTime), CAST(N'2021-06-04T17:03:22.933' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (89, N'COMMENTS CARD', 54, NULL, 21, 5, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:32:59.227' AS DateTime), CAST(N'2021-06-03T14:32:59.227' AS DateTime), 8, 1, 11, N'PEELED TOMATO')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (90, N'DRY CRANBBERY', 42, NULL, 20, 500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:33:14.237' AS DateTime), CAST(N'2021-06-04T17:03:49.487' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (91, N'EDAMMAME', 42, NULL, 20, 1100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:33:47.950' AS DateTime), CAST(N'2021-07-06T14:26:20.447' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (92, N'PENNE PASTA', 42, NULL, 20, 170, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:34:31.650' AS DateTime), CAST(N'2021-07-03T15:45:25.893' AS DateTime), 4, 1, 10, N'
')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (93, N'EMLI SAUCE', 42, NULL, 19, 280, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:34:36.097' AS DateTime), CAST(N'2021-06-26T13:25:07.580' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (94, N'PINEAPPLE SLICE SMALL', 42, NULL, 17, 250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:35:27.660' AS DateTime), CAST(N'2021-06-03T14:35:27.660' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (95, N'TOTILA BREAD', 42, NULL, 20, 72, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:35:43.727' AS DateTime), CAST(N'2021-06-04T17:05:01.457' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (96, N'PISTA ', 42, NULL, 16, 2400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:36:23.170' AS DateTime), CAST(N'2021-06-03T14:36:23.170' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (97, N'PIZZA FLOUR  25KG', 42, NULL, 16, 8280, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:37:37.790' AS DateTime), CAST(N'2021-06-24T14:40:56.617' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (98, N'FISH SAUCE', 42, NULL, 19, 500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:38:51.273' AS DateTime), CAST(N'2021-06-04T17:05:53.253' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (99, N'POLAC CONDENSED MILK', 42, NULL, 17, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:39:05.550' AS DateTime), CAST(N'2021-06-03T14:39:05.550' AS DateTime), 6, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (100, N'FOOD COLOUR POWDER', 42, NULL, 19, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:39:25.127' AS DateTime), CAST(N'2021-06-04T17:13:35.450' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (101, N'FOOD COLOUR LIQUID', 42, NULL, 19, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:39:49.093' AS DateTime), CAST(N'2021-06-04T17:13:56.200' AS DateTime), 6, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (102, N'KSCHRI POWDER ', 42, NULL, 21, 700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:39:55.270' AS DateTime), CAST(N'2021-06-03T14:39:55.270' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (103, N'WHEAT WHOLE ', 42, NULL, 16, 84, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:40:28.080' AS DateTime), CAST(N'2021-07-05T17:25:19.037' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (104, N'FRENCH MUSTARD GLN', 42, NULL, 18, 3600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:40:37.177' AS DateTime), CAST(N'2021-07-03T15:04:50.397' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (105, N'FRIES', 42, NULL, 20, 1000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:41:06.787' AS DateTime), CAST(N'2021-06-30T17:18:43.410' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (106, N'POLAC CONDENSED MILK SMALL', 42, NULL, 17, 150, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:41:30.567' AS DateTime), CAST(N'2021-06-03T14:41:30.567' AS DateTime), 6, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (107, N'POMEGRANATE MOLASSES ', 42, NULL, 19, 1490, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:42:31.053' AS DateTime), CAST(N'2021-06-03T14:42:31.053' AS DateTime), 6, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (108, N'GARAM MASALA WHOLE', 53, NULL, 16, 800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:42:40.417' AS DateTime), CAST(N'2021-06-29T17:38:54.377' AS DateTime), 7, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (109, N'GARLIC POWDER', 47, NULL, 16, 500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:43:07.857' AS DateTime), CAST(N'2021-06-04T17:15:30.437' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (110, N'GELATINE POWDER', 42, NULL, 20, 200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:43:42.603' AS DateTime), CAST(N'2021-06-04T17:16:00.327' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (111, N'CHICKEN PEPPERONI ', 45, NULL, 20, 325, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:44:21.157' AS DateTime), CAST(N'2021-07-05T17:25:19.053' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (112, N'GHEE FOR STAFF', 53, NULL, 20, 260, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:44:24.430' AS DateTime), CAST(N'2021-06-30T17:17:24.233' AS DateTime), 7, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (113, N'GLACE BLASMIC ', 42, NULL, 19, 299, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:45:51.647' AS DateTime), CAST(N'2021-06-04T17:16:42.903' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (114, N'GLUCOSE', 42, NULL, 16, 200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:46:34.487' AS DateTime), CAST(N'2021-06-04T17:17:00.987' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (115, N'CHICKEN PEPPERONI LARGE', 45, NULL, 20, 635, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:51:33.273' AS DateTime), CAST(N'2021-06-03T14:51:33.273' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (116, N'CHICKEN THAI', 45, NULL, 16, 609.37, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:52:54.150' AS DateTime), CAST(N'2021-06-30T17:23:34.313' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (117, N'CHICKEN WHOLE ', 45, NULL, 16, 345, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:53:54.230' AS DateTime), CAST(N'2021-06-30T17:23:34.313' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (118, N'FAT', 45, NULL, 16, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:54:44.280' AS DateTime), CAST(N'2021-06-03T14:54:44.280' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (119, N'MUTTON CHOP', 45, NULL, 16, 1210, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:55:31.133' AS DateTime), CAST(N'2021-06-03T14:55:31.133' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (120, N'GREEN CURRY PASTE', 42, NULL, 19, 690, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:55:43.737' AS DateTime), CAST(N'2021-06-04T17:18:14.657' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (121, N'GREEN CURRY PASTE', 42, NULL, 19, 690, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:56:39.543' AS DateTime), CAST(N'2021-06-04T17:18:55.890' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
GO
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (122, N'TURKEY BACON ', 45, NULL, 20, 1250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:57:11.683' AS DateTime), CAST(N'2021-06-29T14:07:19.397' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (123, N'CHICKEN BONE', 45, NULL, 16, 5, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:57:49.470' AS DateTime), CAST(N'2021-06-03T14:57:49.470' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (124, N'TURKEY SMOKE ', 45, NULL, 20, 925, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:58:53.670' AS DateTime), CAST(N'2021-06-03T14:58:53.670' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (125, N'HALDI POWDER', 53, NULL, 16, 270, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:59:31.943' AS DateTime), CAST(N'2021-06-29T17:38:54.347' AS DateTime), 7, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (126, N'SMOKE SALMON ', 46, NULL, 20, 1650, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T14:59:39.027' AS DateTime), CAST(N'2021-06-29T14:07:19.240' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (127, N'HEINS BEANS', 42, NULL, 17, 220, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:00:13.537' AS DateTime), CAST(N'2021-06-04T17:20:12.260' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (128, N'RUBI SNAPPER ', 46, NULL, 16, 1750, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:00:18.013' AS DateTime), CAST(N'2021-06-03T15:00:18.013' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (129, N'HISON SAUCE', 42, NULL, 19, 760, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:00:45.737' AS DateTime), CAST(N'2021-06-04T17:21:44.887' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (130, N'KING PRAWNS ', 46, NULL, 16, 2800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:01:10.747' AS DateTime), CAST(N'2021-06-03T15:01:10.747' AS DateTime), 4, 1, 10, N'opening stock')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (131, N'HONEY', 42, NULL, 19, 760, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:01:13.773' AS DateTime), CAST(N'2021-06-04T17:22:07.697' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (132, N'HORS RADISH SAUCE', 42, NULL, 19, 850, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:01:47.757' AS DateTime), CAST(N'2021-06-24T15:30:01.813' AS DateTime), 4, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (133, N'HOT CHOCLATE', 43, NULL, 19, 2750, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:02:26.570' AS DateTime), CAST(N'2021-06-04T17:22:47.370' AS DateTime), 5, 1, 10, N'FOOD ITEMS')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (134, N'PANGASIUS FISH ', 46, NULL, 16, 550, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:03:20.727' AS DateTime), CAST(N'2021-06-03T15:03:20.727' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (135, N'PINK SALMON FISH', 46, NULL, 16, 4571, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:21:04.190' AS DateTime), CAST(N'2021-06-03T15:21:04.190' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (136, N'PRAWN 21/25', 46, NULL, 16, 700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:21:33.913' AS DateTime), CAST(N'2021-06-24T14:48:18.267' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (137, N'PRAWN 8/12', 46, NULL, 16, 1350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:21:59.047' AS DateTime), CAST(N'2021-06-24T14:48:18.267' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (138, N'SMOKE SALMON FILLET', 46, NULL, 16, 5800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:22:30.483' AS DateTime), CAST(N'2021-06-03T15:22:30.483' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (139, N'SOLE FISH', 46, NULL, 16, 1700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:31:28.160' AS DateTime), CAST(N'2021-06-03T15:31:28.160' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (140, N'SQUID FISH (CALAMARI) ', 46, NULL, 16, 950, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:32:08.147' AS DateTime), CAST(N'2021-06-03T15:32:08.147' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (141, N'HOT SAUCE', 42, NULL, 19, 600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:43:49.387' AS DateTime), CAST(N'2021-07-03T15:04:50.427' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (142, N'HP SAUCE', 42, NULL, 19, 650, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:45:34.213' AS DateTime), CAST(N'2021-06-03T15:45:34.213' AS DateTime), 8, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (143, N'ICE CUBE', 43, NULL, 20, 330, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:46:17.960' AS DateTime), CAST(N'2021-07-03T15:45:25.927' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (144, N'ICING SUGAR', 42, NULL, 20, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:47:05.357' AS DateTime), CAST(N'2021-06-03T15:47:05.357' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (145, N'JAFAL POWDER', 42, NULL, 16, 2031, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:48:40.290' AS DateTime), CAST(N'2021-06-03T15:48:40.290' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (146, N'JALAPENO Can', 42, NULL, 18, 650, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:52:20.773' AS DateTime), CAST(N'2021-07-03T15:04:50.443' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (147, N'JAPANESE MAYONNAISE ', 55, NULL, 19, 1300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:53:13.350' AS DateTime), CAST(N'2021-06-04T18:25:16.337' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (148, N'JAPANESE RICE IMP', 55, NULL, 16, 1200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:54:15.023' AS DateTime), CAST(N'2021-06-04T18:24:35.367' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (149, N'TUNNA FISH', 46, NULL, 16, 6000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:54:39.957' AS DateTime), CAST(N'2021-06-03T15:54:39.957' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (150, N'JAPANIES TEMPORA FLOUR', 55, NULL, 20, 1150, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:54:57.617' AS DateTime), CAST(N'2021-07-02T17:13:12.567' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (151, N'KALWANJI', 42, NULL, 16, 400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:56:27.980' AS DateTime), CAST(N'2021-06-03T15:56:27.980' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (152, N'KETCHUP 4KG PKT', 42, NULL, 20, 1045.25, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:57:17.593' AS DateTime), CAST(N'2021-06-24T15:01:50.907' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (153, N'CRAB STICK ', 46, NULL, 16, 2400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:58:20.687' AS DateTime), CAST(N'2021-07-02T17:13:12.520' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (154, N'KIKOMAN SOYA SAUCE', 42, NULL, 19, 850, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T15:59:33.763' AS DateTime), CAST(N'2021-06-28T16:58:22.413' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (155, N'KISHMISH', 42, NULL, 16, 500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:00:03.017' AS DateTime), CAST(N'2021-06-28T16:58:22.317' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (156, N'LIME SEASONING POWDER', 43, NULL, 20, 490, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:00:49.697' AS DateTime), CAST(N'2021-07-03T15:45:25.893' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (157, N'CRABE WHOLE', 46, NULL, 16, 750, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:01:27.420' AS DateTime), CAST(N'2021-06-03T16:01:27.420' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (158, N'MACRONI PASTA', 42, NULL, 20, 120, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:01:48.047' AS DateTime), CAST(N'2021-06-03T16:01:48.047' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (159, N'MAIDA', 42, NULL, 16, 78, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:02:22.010' AS DateTime), CAST(N'2021-07-03T15:04:50.380' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (160, N'KASURI METHI', 42, NULL, 20, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:03:02.277' AS DateTime), CAST(N'2021-06-03T16:03:02.277' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (161, N'MAYONIES BEST FOOD', 42, NULL, 20, 1924.91, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:03:36.913' AS DateTime), CAST(N'2021-06-24T15:01:50.907' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (162, N'MEETENDRISER POWDER', 42, NULL, 19, 180, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:04:12.500' AS DateTime), CAST(N'2021-06-03T16:04:12.500' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (163, N'WHOLE SALMON', 46, NULL, 16, 3400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:04:14.153' AS DateTime), CAST(N'2021-07-05T17:25:19.053' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (164, N'METHA SODA', 42, NULL, 16, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:04:45.577' AS DateTime), CAST(N'2021-06-03T16:04:45.577' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (165, N'MUSTARD SAUCE BTL', 42, NULL, 19, 440, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:06:10.477' AS DateTime), CAST(N'2021-06-03T16:06:10.477' AS DateTime), 8, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (166, N'NESCAFE COFFEE', 43, NULL, 19, 1409, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:06:55.333' AS DateTime), CAST(N'2021-06-03T16:06:55.333' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (167, N'NESVITA LOW FAT', 44, NULL, 20, 44, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:07:39.110' AS DateTime), CAST(N'2021-06-29T17:38:54.423' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (168, N'KASOMI PASTA SMALL ', 42, NULL, 20, 90, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:08:30.847' AS DateTime), CAST(N'2021-06-03T16:08:30.847' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (169, N'LEEK', 47, NULL, 16, 400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:11:05.830' AS DateTime), CAST(N'2021-07-06T15:09:47.577' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (170, N'LEMON FRESH', 43, NULL, 16, 150, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:11:30.123' AS DateTime), CAST(N'2021-07-06T15:09:47.530' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (171, N'LEMON GRASS', 47, NULL, 16, 2200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:11:53.917' AS DateTime), CAST(N'2021-06-26T14:57:57.923' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (172, N'FRESH LETTECE', 47, NULL, 16, 850, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:12:20.967' AS DateTime), CAST(N'2021-06-17T18:04:13.163' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (173, N'FRESH LIME LEAVES', 47, NULL, 16, 4600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:12:50.610' AS DateTime), CAST(N'2021-06-26T14:57:57.923' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (174, N'MINT LEAVE', 43, NULL, 20, 10, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:13:19.753' AS DateTime), CAST(N'2021-07-06T14:41:28.227' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (175, N'MULTI CAPSICUM', 42, NULL, 16, 750, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:13:45.577' AS DateTime), CAST(N'2021-07-06T16:19:47.450' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (176, N'ONION STAFF', 47, NULL, 16, 50, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:14:38.620' AS DateTime), CAST(N'2021-07-06T14:41:28.213' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (177, N'ONION KITCHEN', 47, NULL, 16, 45, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:15:34.160' AS DateTime), CAST(N'2021-07-06T15:09:47.500' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (178, N'FRESH CORIANDER STAFF', 47, NULL, 16, 20, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:16:10.950' AS DateTime), CAST(N'2021-07-06T15:09:47.530' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (179, N'JUMBO PRAWNS', 46, NULL, 16, 1600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:17:08.020' AS DateTime), CAST(N'2021-06-03T16:17:08.020' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (180, N'POTATO STAFF', 53, NULL, 16, 55, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:26:09.297' AS DateTime), CAST(N'2021-07-06T15:09:47.500' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (181, N'POTATOM KITCHEN', 47, NULL, 16, 55, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:26:34.117' AS DateTime), CAST(N'2021-07-06T14:26:20.413' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (182, N'VERMICELLI', 42, NULL, 20, 25, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:26:39.703' AS DateTime), CAST(N'2021-06-29T17:38:54.453' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (183, N'TOMATO STAFF', 53, NULL, 16, 80, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:27:28.223' AS DateTime), CAST(N'2021-07-06T15:09:47.500' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (184, N'TOMATO', 47, NULL, 16, 80, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:27:51.920' AS DateTime), CAST(N'2021-07-06T15:09:47.657' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (185, N'GREEN CHILI STAFF', 53, NULL, 16, 60, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:28:48.587' AS DateTime), CAST(N'2021-06-25T14:59:30.807' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (186, N'GREEN CHILI KITCHEN', 47, NULL, 16, 110, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:30:07.480' AS DateTime), CAST(N'2021-07-06T14:26:20.430' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (187, N'PARSELY', 47, NULL, 16, 1000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:31:00.230' AS DateTime), CAST(N'2021-07-06T15:09:47.640' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (188, N'PEACH FRESH', 47, NULL, 16, 180, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:31:30.277' AS DateTime), CAST(N'2021-07-06T14:41:28.323' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (189, N'PUMPKIN', 47, NULL, 16, 80, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:32:06.817' AS DateTime), CAST(N'2021-06-28T15:37:04.607' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (190, N'RED APPLE', 47, NULL, 16, 250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:33:06.040' AS DateTime), CAST(N'2021-07-06T14:41:28.290' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (191, N'GREEN APPLE', 47, NULL, 16, 185, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:33:30.737' AS DateTime), CAST(N'2021-07-02T17:13:12.613' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (192, N'ROCKET LEAVE', 47, NULL, 16, 1000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:33:59.833' AS DateTime), CAST(N'2021-07-06T15:09:47.640' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (193, N'SPINACH STAFF', 53, NULL, 16, 40, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:34:33.687' AS DateTime), CAST(N'2021-07-02T18:25:53.707' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (194, N'SPINACH KITCHEN', 47, NULL, 16, 40, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:34:54.407' AS DateTime), CAST(N'2021-07-03T15:25:04.377' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (195, N'THAI BIRD CHILLI', 47, NULL, NULL, 450, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:35:26.453' AS DateTime), CAST(N'2021-07-06T15:09:47.623' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (196, N'ZAUCQNI', 47, NULL, 16, 130, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:36:04.847' AS DateTime), CAST(N'2021-07-06T15:09:47.563' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (197, N'SMOKE SALMON FILLET', 46, NULL, 16, 0, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:36:38.657' AS DateTime), CAST(N'2021-06-03T16:36:38.657' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (198, N'BEEF PUPRONI', 45, NULL, 20, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:38:03.573' AS DateTime), CAST(N'2021-06-26T15:28:32.820' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (199, N'BEEF ROD', 45, NULL, 16, 1700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:38:47.773' AS DateTime), CAST(N'2021-07-06T14:14:00.227' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (200, N'CHICKEN BREAST FILLET', 45, NULL, 16, 609.37, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:39:22.097' AS DateTime), CAST(N'2021-06-30T17:23:34.330' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (201, N'CHICKEN MALAI BOTI', 45, NULL, 16, 600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:39:56.717' AS DateTime), CAST(N'2021-06-03T16:39:56.717' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (202, N'CHICKEN NIBLET', 45, NULL, 16, 380, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:40:35.783' AS DateTime), CAST(N'2021-06-03T16:40:35.783' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (203, N'CARRIAT STAFF', 53, NULL, 16, 70, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:51:34.437' AS DateTime), CAST(N'2021-07-03T15:25:04.363' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (204, N'CARRIAT KITCHEN', 47, NULL, 16, 75, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:52:03.347' AS DateTime), CAST(N'2021-07-06T15:09:47.517' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (205, N'AVACADO', 47, NULL, 16, 2200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:52:34.207' AS DateTime), CAST(N'2021-07-06T14:26:20.430' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (206, N'BABY POTATO', 47, NULL, 16, 60, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:53:03.817' AS DateTime), CAST(N'2021-06-26T13:36:21.583' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (207, N'BABY SPINACH', 47, NULL, 16, 800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:53:30.683' AS DateTime), CAST(N'2021-07-06T15:09:47.657' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (208, N'BANANA', 47, NULL, 21, 15, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:55:02.107' AS DateTime), CAST(N'2021-07-03T15:25:04.580' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (209, N'BROCOLI', 47, NULL, 16, 550, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:55:36.930' AS DateTime), CAST(N'2021-07-06T15:09:47.483' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (210, N'CABBAGE', 47, NULL, 16, 50, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:56:03.423' AS DateTime), CAST(N'2021-07-06T15:09:47.517' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (211, N'CELERY', 47, NULL, 16, 400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:56:52.067' AS DateTime), CAST(N'2021-07-06T14:41:28.277' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (212, N'CHERRY TOMATO', 47, NULL, 16, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:57:17.717' AS DateTime), CAST(N'2021-07-06T15:09:47.623' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (213, N'CUCMBER', 47, NULL, 16, 55, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:57:53.100' AS DateTime), CAST(N'2021-07-06T15:09:47.530' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (214, N'EGG PLANET', 47, NULL, 16, 180, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:58:22.463' AS DateTime), CAST(N'2021-06-30T17:41:06.023' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (215, N'FRESH BASIL', 47, NULL, 16, 800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:58:48.953' AS DateTime), CAST(N'2021-07-06T14:41:28.277' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (216, N'FRESH BEANS', 47, NULL, 16, 220, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T16:59:14.260' AS DateTime), CAST(N'2021-07-06T15:09:47.547' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (217, N'FRESH BLUE BERRY', 47, NULL, 20, 1000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:10:42.397' AS DateTime), CAST(N'2021-07-03T15:25:04.517' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (218, N'FRESH MUSHROOMS', 47, NULL, 20, 220, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:12:19.670' AS DateTime), CAST(N'2021-07-03T15:25:04.503' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (219, N'GARLIC ', 47, NULL, NULL, 180, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:13:27.007' AS DateTime), CAST(N'2021-07-06T15:09:47.517' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (220, N'GINGER', 47, NULL, 16, 550, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:14:51.660' AS DateTime), CAST(N'2021-07-06T15:09:47.517' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (221, N'GLANGAL', 47, NULL, 16, 3800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:15:43.367' AS DateTime), CAST(N'2021-06-25T15:09:38.750' AS DateTime), 4, 1, 10, N'OPENING STOCK')
GO
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (222, N'GREEN CAPSICUM', 47, NULL, 16, 80, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:16:25.207' AS DateTime), CAST(N'2021-07-06T15:09:47.530' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (223, N'GREEN ONION', 47, NULL, 16, 240, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:17:04.570' AS DateTime), CAST(N'2021-07-06T14:41:28.260' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (224, N'WALNUTS', 42, NULL, 16, 1550, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:17:14.370' AS DateTime), CAST(N'2021-06-26T13:25:07.563' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (225, N'WHEAT BISCUITS ', 42, NULL, 20, 60, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:17:55.073' AS DateTime), CAST(N'2021-06-26T15:28:32.697' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (226, N'ICE BERG', 47, NULL, 16, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:17:55.650' AS DateTime), CAST(N'2021-07-06T15:09:47.483' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (227, N'WHITE BREAD', 42, NULL, 21, 131, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:18:27.120' AS DateTime), CAST(N'2021-06-03T17:18:27.120' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (228, N'WHITE CHOCOLATE', 42, NULL, 20, 1000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:19:18.713' AS DateTime), CAST(N'2021-06-03T17:19:18.713' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (229, N'WHITE CHOCOLATE CHIP', 42, NULL, 16, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:20:17.517' AS DateTime), CAST(N'2021-06-03T17:20:17.517' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (230, N'YELLOW CHEESE SLICE', 44, NULL, 20, 930, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:20:26.783' AS DateTime), CAST(N'2021-07-06T18:05:16.453' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (231, N'YOUGRT CUP', 44, NULL, 21, 122, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:21:04.787' AS DateTime), CAST(N'2021-07-02T17:13:12.660' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (232, N'WHITE PEPPER POWDER', 42, NULL, 16, 1450, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:21:37.520' AS DateTime), CAST(N'2021-06-30T17:17:24.093' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (233, N'WHITE QUINWA', 42, NULL, 20, 795, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:22:12.310' AS DateTime), CAST(N'2021-07-03T16:10:16.400' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (234, N'PHILDPHIA CHEESE', 44, NULL, 18, 6200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:22:56.370' AS DateTime), CAST(N'2021-06-25T16:11:02.047' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (235, N'WHITE VINEGAR (SHEZAN)', 42, NULL, 19, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:23:16.650' AS DateTime), CAST(N'2021-07-03T15:04:50.477' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (236, N'CASTIC SODA', 54, NULL, 16, 140, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:23:50.147' AS DateTime), CAST(N'2021-06-03T17:23:50.147' AS DateTime), 9, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (237, N'HALLUMI CHEESE', 44, NULL, 16, 450, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:24:24.267' AS DateTime), CAST(N'2021-06-30T17:20:44.430' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (238, N'WHOLE GRAIN MUSTERD', 42, NULL, 19, 500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:24:57.017' AS DateTime), CAST(N'2021-06-03T17:24:57.017' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (239, N'CHILLI CHEDAR CHEESE 250G', 44, NULL, 20, 1000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T17:26:55.727' AS DateTime), CAST(N'2021-07-02T17:38:57.630' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (240, N'WHOLE MASOOR ', 53, NULL, 16, 160, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:00:58.490' AS DateTime), CAST(N'2021-06-03T18:00:58.490' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (241, N'WALNUTS CHEESE 250 g', 44, NULL, 20, 640, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:02:27.653' AS DateTime), CAST(N'2021-07-02T17:38:57.647' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (242, N'GOUDA HERBS CHEESE 250G', 44, NULL, 20, 870, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:03:11.697' AS DateTime), CAST(N'2021-07-02T17:38:57.630' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (243, N'WORCESTERSHIRE SAUCE', 42, NULL, 19, 495, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:03:45.177' AS DateTime), CAST(N'2021-06-29T17:38:54.250' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (244, N'BLACK CHANNA', 53, NULL, 16, 130, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:03:53.117' AS DateTime), CAST(N'2021-06-03T18:03:53.117' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (245, N'DAAL CHANA', 53, NULL, 16, 140, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:04:34.587' AS DateTime), CAST(N'2021-07-03T15:04:50.367' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (246, N'YEAST', 42, NULL, 20, 450, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:05:49.973' AS DateTime), CAST(N'2021-06-29T17:38:54.297' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (247, N'DAAL MASH', 53, NULL, 16, 270, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:06:14.483' AS DateTime), CAST(N'2021-06-03T18:11:14.513' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (248, N'DAAL MASOOR', 53, NULL, 16, 130, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:06:55.593' AS DateTime), CAST(N'2021-06-03T18:12:00.117' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (249, N'DAAL MONG', 53, NULL, 16, 230, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:07:33.473' AS DateTime), CAST(N'2021-06-03T18:12:16.657' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (250, N'DAIRY MILK', 53, NULL, 20, 105, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:08:13.240' AS DateTime), CAST(N'2021-07-03T15:04:50.490' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (251, N'ROTTI', 53, NULL, 21, 7, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:08:40.560' AS DateTime), CAST(N'2021-07-06T18:05:16.470' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (252, N'KIDNEY BEAND STAFF', 53, NULL, 16, 180, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:09:36.117' AS DateTime), CAST(N'2021-06-03T18:09:36.117' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (253, N'FRESH YOUGRT', 44, NULL, 16, 120, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:10:08.223' AS DateTime), CAST(N'2021-06-03T18:10:08.223' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (254, N'ZERA POWDER ', 42, NULL, 16, 690, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:10:48.833' AS DateTime), CAST(N'2021-06-29T17:38:54.190' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (255, N'HAND WASH STAFF', 54, NULL, 16, 70, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:11:04.327' AS DateTime), CAST(N'2021-07-06T15:25:55.100' AS DateTime), 7, 1, 11, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (256, N'RICE FOR STAFF', 53, NULL, 16, 140, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:11:52.160' AS DateTime), CAST(N'2021-06-03T18:11:52.160' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (257, N'STAFF TEA', 53, NULL, 20, 800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:12:47.640' AS DateTime), CAST(N'2021-07-02T17:29:16.577' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (258, N'ZEERA POWDER', 53, NULL, 16, 700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:13:38.500' AS DateTime), CAST(N'2021-06-03T18:13:38.500' AS DateTime), 7, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (259, N'NUR PUR BUTTER 200G', 44, NULL, 16, 1300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:16:28.510' AS DateTime), CAST(N'2021-07-03T15:45:25.910' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (260, N'85% CHOCOLATE', 42, NULL, 20, 450, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:17:04.563' AS DateTime), CAST(N'2021-06-03T18:17:04.563' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (261, N'HALLOUMI CHEESE 1 KG', 44, NULL, 16, 1800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:19:55.383' AS DateTime), CAST(N'2021-06-03T18:19:55.383' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (262, N'GUR', 42, NULL, 16, 140, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:20:28.227' AS DateTime), CAST(N'2021-06-03T18:20:28.227' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (263, N'EMLI WHOLE ', 42, NULL, 16, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:22:42.913' AS DateTime), CAST(N'2021-06-29T17:38:54.237' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (264, N'CHEDAR CHEESE', 44, NULL, 25, 1570, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:25:20.923' AS DateTime), CAST(N'2021-06-29T17:38:54.203' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (265, N'COOKING CREAM', 44, NULL, 20, 530, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:26:08.990' AS DateTime), CAST(N'2021-07-06T18:06:19.093' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (266, N'CREAM CHEESE', 44, NULL, 16, 1600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:27:12.020' AS DateTime), CAST(N'2021-07-06T14:14:00.227' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (267, N'DESERT VANILA', 44, NULL, 16, 878, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:27:57.407' AS DateTime), CAST(N'2021-06-03T18:27:57.407' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (268, N'EGGS', 44, NULL, 21, 12.47, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:28:37.953' AS DateTime), CAST(N'2021-07-05T17:25:18.977' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (269, N'EVERY DAY MILK POWDER', 44, NULL, 16, 880, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:29:21.187' AS DateTime), CAST(N'2021-06-28T16:58:22.397' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (270, N'FETA CHEESE', 44, NULL, 20, 1350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:30:09.987' AS DateTime), CAST(N'2021-06-03T18:30:09.987' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (271, N'FRESH MOZELA', 44, NULL, 16, 1259, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:31:11.597' AS DateTime), CAST(N'2021-07-06T15:35:44.887' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (272, N'MARGRINE BUTTER', 44, NULL, 25, 400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:32:30.773' AS DateTime), CAST(N'2021-06-03T18:32:30.773' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (273, N'MILK PAK CREAM', 44, NULL, 21, 120, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:34:34.213' AS DateTime), CAST(N'2021-06-30T17:17:24.107' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (274, N'MILK PAK', 44, NULL, 20, 148, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:36:33.940' AS DateTime), CAST(N'2021-07-03T15:45:25.910' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (275, N'MOZELA CHEESE ADAMS', 44, NULL, 25, 2150, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:37:18.263' AS DateTime), CAST(N'2021-07-03T15:04:50.490' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (276, N'NESTLE YOUGRT', 44, NULL, 16, 186, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:37:52.180' AS DateTime), CAST(N'2021-06-29T17:38:54.407' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (277, N'PERMIZAN CHEESE', 44, NULL, 16, 3350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:38:31.777' AS DateTime), CAST(N'2021-06-28T16:58:22.317' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (278, N'PREMA MILK', 44, NULL, 20, 159, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:39:00.297' AS DateTime), CAST(N'2021-07-06T16:19:47.450' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (279, N'PUCK CHEESE', 44, NULL, 20, 490, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:39:39.160' AS DateTime), CAST(N'2021-07-03T15:45:25.927' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (280, N'PUFF PASTRY', 44, NULL, 16, 400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T18:40:30.147' AS DateTime), CAST(N'2021-06-03T18:40:30.147' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (281, N'FRESH MILK ', 44, NULL, 26, 110, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T19:16:34.567' AS DateTime), CAST(N'2021-06-03T19:16:34.567' AS DateTime), 8, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (282, N'HONDASHI', 42, NULL, 20, 5200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T19:19:17.507' AS DateTime), CAST(N'2021-07-02T17:13:12.567' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (283, N'TOGARASHI', 42, NULL, 20, 4200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T19:20:27.293' AS DateTime), CAST(N'2021-07-02T17:13:12.567' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (284, N'BLACK QUINOA', 42, NULL, 20, 795, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T19:21:16.017' AS DateTime), CAST(N'2021-07-03T16:10:16.383' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (285, N'VANILLA ICE CREAM', 44, NULL, 16, 1900, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T19:21:59.203' AS DateTime), CAST(N'2021-06-03T19:21:59.203' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (286, N'LIGHT SOYA SAUCE ', 42, NULL, 19, 2850, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T19:22:32.463' AS DateTime), CAST(N'2021-06-30T17:17:24.200' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (287, N'JAPANESES KNIFE', 49, NULL, 21, 39000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T19:23:38.303' AS DateTime), CAST(N'2021-06-03T19:23:38.303' AS DateTime), 4, 1, 11, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (288, N'TOBIKKO ORANGE', 42, NULL, 20, 4200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T19:24:36.573' AS DateTime), CAST(N'2021-07-06T14:14:00.210' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (289, N'TRUFFLE OIL', 42, NULL, 26, 5200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-03T19:25:23.410' AS DateTime), CAST(N'2021-06-03T19:25:23.410' AS DateTime), 4, 1, 10, N'OPENING STOC')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (290, N'STRAWBERRY TOPPING FILLING ', 42, NULL, 19, 900, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T11:54:49.033' AS DateTime), CAST(N'2021-06-04T11:54:49.033' AS DateTime), 6, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (291, N'STRAWBERRY TOPPING FILLING  LOCAL', 42, NULL, 19, 580, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T11:55:18.723' AS DateTime), CAST(N'2021-06-26T15:28:32.947' AS DateTime), 5, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (292, N'SUGAR ', 42, NULL, 16, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T11:55:54.200' AS DateTime), CAST(N'2021-07-03T15:45:25.893' AS DateTime), 5, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (293, N'SUGAR SACHET ', 42, NULL, 20, 2, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T11:56:48.867' AS DateTime), CAST(N'2021-06-04T11:56:48.867' AS DateTime), 5, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (294, N'SUJI', 42, NULL, 16, 90, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T11:57:18.247' AS DateTime), CAST(N'2021-06-30T17:17:24.123' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (295, N'SUMAC POWDER BTL', 42, NULL, 19, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T11:57:56.983' AS DateTime), CAST(N'2021-06-04T11:57:56.983' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (296, N'SUN DRIED TOMATO LARGE ', 42, NULL, 17, 6500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T11:58:48.437' AS DateTime), CAST(N'2021-06-04T11:58:48.437' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (297, N'SUN DRIED TOMATO LOCAL SMALL', 42, NULL, 17, 550, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T11:59:15.007' AS DateTime), CAST(N'2021-07-02T17:29:16.577' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (298, N'SUPREMO PLUS ', 42, NULL, 16, 2500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T11:59:47.163' AS DateTime), CAST(N'2021-06-04T11:59:47.163' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (299, N'SWEET CHILI SAUCE LOCAL ', 42, NULL, 19, 650, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:00:46.637' AS DateTime), CAST(N'2021-06-04T12:00:46.637' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (300, N'SWEET CHILI SAUCE 800ML', 42, NULL, 19, 720, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:01:23.173' AS DateTime), CAST(N'2021-06-30T17:17:24.077' AS DateTime), 4, 1, 10, N'OPENING STOCK 
')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (301, N'SWEET CORN LARGE ', 42, NULL, 17, 680, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:01:50.477' AS DateTime), CAST(N'2021-07-03T15:45:25.880' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (302, N'TAHINI PASTE ', 42, NULL, 19, 680, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:03:02.777' AS DateTime), CAST(N'2021-06-28T16:58:22.397' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (303, N'TANDOORI MASLA', 42, NULL, 20, 130, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:04:05.917' AS DateTime), CAST(N'2021-06-04T12:04:05.917' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (304, N'TARRAGON DRY', 42, NULL, 20, 2100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:07:21.560' AS DateTime), CAST(N'2021-06-04T12:07:21.560' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (305, N'TEMPURA FLOUR', 42, NULL, 20, 430, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:07:54.277' AS DateTime), CAST(N'2021-06-04T12:07:54.277' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (306, N'THYME DRY', 42, NULL, 20, 600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:08:43.140' AS DateTime), CAST(N'2021-06-04T12:08:43.140' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (307, N'TABASCO SAUCE ', 42, NULL, 19, 360, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:09:59.760' AS DateTime), CAST(N'2021-06-28T15:37:04.577' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (308, N'TOMATO PASTE', 42, NULL, 17, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:11:06.613' AS DateTime), CAST(N'2021-07-03T15:04:50.520' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (309, N'CHOCOLATE TOPPING FILLING', 42, NULL, 19, 720, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:11:47.457' AS DateTime), CAST(N'2021-06-04T12:11:47.457' AS DateTime), 6, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (310, N'TORTILLA BREAD ', 42, NULL, 21, 68, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:12:40.973' AS DateTime), CAST(N'2021-06-04T12:12:40.973' AS DateTime), 6, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (311, N'VANILLA CUSTARD ', 42, NULL, 20, 320, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:14:46.283' AS DateTime), CAST(N'2021-06-04T12:14:46.283' AS DateTime), 6, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (312, N'VANILLA ESSENCE ', 42, NULL, 19, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:15:56.507' AS DateTime), CAST(N'2021-06-04T12:15:56.507' AS DateTime), 6, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (313, N'VANILLA STICK', 42, NULL, 21, 1890, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T12:16:47.460' AS DateTime), CAST(N'2021-06-04T12:16:47.460' AS DateTime), 4, 1, 10, N'OPENING STOCK ')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (314, N'RICHI CREAM', 44, NULL, 20, 1050, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:08:54.987' AS DateTime), CAST(N'2021-06-04T15:08:54.987' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (315, N'YELLOW BUTTER', 44, NULL, 16, 430, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:09:39.407' AS DateTime), CAST(N'2021-06-28T16:10:46.757' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (316, N'WHITE CHEESE SLICE', 44, NULL, 20, 900, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:10:18.003' AS DateTime), CAST(N'2021-07-03T15:04:50.460' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (317, N'YELLOW CHEESE SLICE', 44, NULL, 20, 950, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:11:04.607' AS DateTime), CAST(N'2021-06-04T15:11:04.607' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (318, N'CRANBERRY SYRUP', 43, NULL, 19, 2100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:12:07.637' AS DateTime), CAST(N'2021-07-02T17:29:16.607' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (319, N'MOJITO SYRUP', 43, NULL, 19, 1295, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:12:46.373' AS DateTime), CAST(N'2021-07-02T17:29:16.593' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (320, N'BAMBO MAT JAPANIES', 55, NULL, 20, 1600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:13:18.840' AS DateTime), CAST(N'2021-06-04T18:23:51.137' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (321, N'YAMASA SAUCE 18LTR', 42, NULL, 24, 26000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:13:58.967' AS DateTime), CAST(N'2021-06-04T15:13:58.967' AS DateTime), 4, 1, 10, N'OPENING STOCK')
GO
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (322, N'MIZKAN VINEGAR JAPANIES', 55, NULL, 19, 2700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:14:35.320' AS DateTime), CAST(N'2021-06-04T18:23:36.907' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (323, N'ARTICHOKE', 42, NULL, NULL, 570, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:19:17.517' AS DateTime), CAST(N'2021-06-04T15:19:17.517' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (324, N'COFFEE BEANS', 43, NULL, 20, 2700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:19:53.730' AS DateTime), CAST(N'2021-06-04T15:19:53.730' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (325, N'COKE CAN', 43, NULL, 17, 39, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:21:30.757' AS DateTime), CAST(N'2021-07-06T16:15:50.087' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (326, N'FANTA CAN', 43, NULL, 17, 39, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:21:59.633' AS DateTime), CAST(N'2021-07-06T16:15:50.133' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (327, N'VANILA HICO ICE CREAM', 43, NULL, 24, 1895, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:22:50.743' AS DateTime), CAST(N'2021-06-24T15:56:26.573' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (328, N'JASMINE GREEN TEA', 43, NULL, 17, 315, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:23:44.693' AS DateTime), CAST(N'2021-06-04T15:23:44.693' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (329, N'LIPTON TEA BOX', 43, NULL, 24, 1800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:24:53.557' AS DateTime), CAST(N'2021-06-04T15:24:53.557' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (330, N'PEACH JUICE', 43, NULL, 19, 190, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:25:34.513' AS DateTime), CAST(N'2021-07-03T15:04:50.553' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (331, N'ORANGE JUICE', 43, NULL, NULL, 160, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:26:03.407' AS DateTime), CAST(N'2021-06-04T15:26:03.407' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (332, N'PINE APPLE JUICE', 43, NULL, 19, 225, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:26:30.817' AS DateTime), CAST(N'2021-07-05T17:25:19.053' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (333, N'MANGO JUICE', 43, NULL, 19, 190, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:27:02.550' AS DateTime), CAST(N'2021-07-03T15:04:50.537' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (334, N'SPRITE 1.5LTR', 43, NULL, 19, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:28:27.783' AS DateTime), CAST(N'2021-07-06T16:15:50.150' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (335, N'SPRITE CAN', 43, NULL, 17, 39, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:29:01.950' AS DateTime), CAST(N'2021-07-06T16:15:50.133' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (336, N'WATER 19LTR', 43, NULL, 19, 260, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:29:47.163' AS DateTime), CAST(N'2021-07-03T16:10:16.383' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (337, N'WATER SMALL', 43, NULL, 19, 27, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:30:15.527' AS DateTime), CAST(N'2021-06-28T16:08:24.877' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (338, N'WATER LARGE', 43, NULL, 19, 50, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:30:42.220' AS DateTime), CAST(N'2021-07-06T16:15:50.150' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (339, N'ZERO COKE CAN', 43, NULL, 17, 39, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:31:14.530' AS DateTime), CAST(N'2021-06-28T16:08:24.847' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (340, N'ZERO SPRITE CAN', 43, NULL, 17, 39, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:31:43.300' AS DateTime), CAST(N'2021-06-28T16:08:24.860' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (341, N'LIPTON TEA PKT GUST', 43, NULL, 20, 520, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T15:32:46.877' AS DateTime), CAST(N'2021-07-03T15:04:50.507' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (342, N'RASPBERRY JAM', 42, NULL, 19, 270, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:14:03.927' AS DateTime), CAST(N'2021-06-04T16:14:03.927' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (343, N'RED CHERRY', 42, NULL, 20, 700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:14:42.867' AS DateTime), CAST(N'2021-07-03T15:04:50.553' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (344, N'RED JALAPINO', 42, NULL, 17, 290, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:15:12.793' AS DateTime), CAST(N'2021-07-03T15:45:25.910' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (345, N'RED KIDNEY BEANS', 42, NULL, 17, 160, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:15:39.407' AS DateTime), CAST(N'2021-06-23T19:18:54.773' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (346, N'RED VINE VINGAR', 42, NULL, 19, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:16:04.027' AS DateTime), CAST(N'2021-06-29T17:38:54.143' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (347, N'REGIA PASTA', 42, NULL, 20, 179, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:16:34.840' AS DateTime), CAST(N'2021-06-04T16:16:34.840' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (348, N'RICE GUEST ZARAFA', 42, NULL, 16, 130, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:17:09.273' AS DateTime), CAST(N'2021-07-03T15:04:50.397' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (349, N'RICE NOODLE ', 42, NULL, 20, 380, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:17:33.363' AS DateTime), CAST(N'2021-06-04T16:17:33.363' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (350, N'RICE VINEGAR', 42, NULL, 19, 320, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:18:00.853' AS DateTime), CAST(N'2021-06-04T16:18:00.853' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (351, N'RICE VINEGAR IMP90', 42, NULL, 19, 1500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:18:29.717' AS DateTime), CAST(N'2021-06-29T14:07:19.193' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (352, N'RICH,S COOKING CREAM', 42, NULL, 20, 240, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:19:22.840' AS DateTime), CAST(N'2021-06-04T16:19:22.840' AS DateTime), 4, 1, 10, N'
OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (353, N'ROSE MARRY ', 42, NULL, 20, 600, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:20:22.687' AS DateTime), CAST(N'2021-06-04T16:20:22.687' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (354, N'RISOTTO RICE', 42, NULL, 20, 1100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:21:28.933' AS DateTime), CAST(N'2021-06-04T16:21:28.933' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (355, N'SALT', 42, NULL, 20, 28, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:21:51.227' AS DateTime), CAST(N'2021-06-26T13:25:07.470' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (356, N'SAMBALOELEK SAUCE', 42, NULL, 19, 420, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:23:49.020' AS DateTime), CAST(N'2021-07-02T17:29:16.577' AS DateTime), 4, 1, 10, N'OPENING STOCK`')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (357, N'PLAIN BREAD', 42, NULL, 21, 109, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:24:25.920' AS DateTime), CAST(N'2021-07-06T14:14:00.210' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (358, N'SEA SALT', 42, NULL, 16, 140, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:24:47.917' AS DateTime), CAST(N'2021-06-04T16:24:47.917' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (359, N'SESAME OIL', 42, NULL, 19, 500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:25:59.560' AS DateTime), CAST(N'2021-06-04T16:25:59.560' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (360, N'SESAME SEEDS', 42, NULL, 16, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:26:45.617' AS DateTime), CAST(N'2021-06-04T16:26:45.617' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (361, N'SHUSH SHEET JAPANESES ', 55, NULL, 21, 4500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:27:55.620' AS DateTime), CAST(N'2021-06-29T14:07:19.333' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (362, N'SIRACHA SAUCE', 42, NULL, 19, 700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:28:56.577' AS DateTime), CAST(N'2021-06-26T15:28:33.007' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (363, N'SODA WATER', 43, NULL, 17, 65, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:29:33.520' AS DateTime), CAST(N'2021-06-26T13:25:07.453' AS DateTime), 5, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (364, N'SONF', 42, NULL, 16, 0, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:29:49.010' AS DateTime), CAST(N'2021-06-04T16:29:49.010' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (365, N'SOYA SAUCE', 42, NULL, 17, 450, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:30:13.413' AS DateTime), CAST(N'2021-06-04T16:30:13.413' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (366, N'STRAWBERRY FILLING ', 42, NULL, 19, 900, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:30:54.100' AS DateTime), CAST(N'2021-06-28T16:58:22.367' AS DateTime), 6, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (367, N'STRAWBERRY PUREE ', 42, NULL, 19, 1800, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T16:31:18.830' AS DateTime), CAST(N'2021-06-04T16:31:18.830' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (368, N'BEEF STACK', 45, NULL, 21, 290, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T17:28:52.257' AS DateTime), CAST(N'2021-06-04T17:28:52.257' AS DateTime), 4, 1, 10, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (369, N'DUSTER', 54, NULL, 27, 190, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:15:15.750' AS DateTime), CAST(N'2021-07-06T15:25:54.910' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (370, N'FACE MASK', 54, NULL, 20, 250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:17:16.243' AS DateTime), CAST(N'2021-06-04T18:17:16.243' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (371, N'FRIES BOX', 54, NULL, 21, 16, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:17:41.143' AS DateTime), CAST(N'2021-06-04T18:17:41.143' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (372, N'GLINT', 56, NULL, 19, 130, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:18:19.647' AS DateTime), CAST(N'2021-06-24T15:25:23.903' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (373, N'GLOVE PLASTIC', 54, NULL, 20, 40, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:18:58.870' AS DateTime), CAST(N'2021-06-24T15:25:23.857' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (374, N'GLOVE SURGICAL', 54, NULL, 20, 1500, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:19:47.110' AS DateTime), CAST(N'2021-06-04T18:19:47.110' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (375, N'HAIR NET CAP', 54, NULL, 20, 250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:20:13.150' AS DateTime), CAST(N'2021-06-24T15:25:23.827' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (376, N'HAND WASH GUEST', 54, NULL, 19, 348, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:20:43.543' AS DateTime), CAST(N'2021-06-04T18:20:43.543' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (377, N'HARPIC', 54, NULL, 19, 120, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:21:03.700' AS DateTime), CAST(N'2021-06-04T18:21:03.700' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (378, N'HI JEANS TISSUE', 54, NULL, 20, 80, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:21:35.277' AS DateTime), CAST(N'2021-06-04T18:21:35.277' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (379, N'JALI', 56, NULL, 20, 8, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:21:59.553' AS DateTime), CAST(N'2021-06-24T15:25:23.857' AS DateTime), 9, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (380, N'LIGHTER WITH LIGHT', 54, NULL, 21, 29, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:22:23.347' AS DateTime), CAST(N'2021-06-04T18:22:23.347' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (381, N'MECA GAS', 54, NULL, 19, 650, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:23:02.223' AS DateTime), CAST(N'2021-06-04T18:23:02.223' AS DateTime), 6, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (382, N'MORTAINE SPRAY', 54, NULL, 19, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:26:06.137' AS DateTime), CAST(N'2021-06-04T18:26:06.137' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (383, N'MRD', 54, NULL, 21, 0, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:26:22.610' AS DateTime), CAST(N'2021-06-04T18:26:22.610' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (384, N'SOUP BOX LARGE', 54, NULL, 21, 8, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:26:32.737' AS DateTime), CAST(N'2021-06-04T18:26:32.737' AS DateTime), 4, 1, 11, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (385, N'PIPING BAG', 54, NULL, 20, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:26:50.663' AS DateTime), CAST(N'2021-06-04T18:26:50.663' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (386, N'PIZZA BOX', 54, NULL, 21, 58, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:27:11.647' AS DateTime), CAST(N'2021-06-04T18:27:11.647' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (387, N'PORTION BAG', 54, NULL, 20, 360, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:27:35.250' AS DateTime), CAST(N'2021-06-21T14:05:55.470' AS DateTime), 6, 1, 11, N'
')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (388, N'SHAKE GLASS', 54, NULL, 21, 10, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:28:19.230' AS DateTime), CAST(N'2021-06-04T18:28:19.230' AS DateTime), 5, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (389, N'DISHWASHING LTR', 56, NULL, 26, 60, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:28:22.553' AS DateTime), CAST(N'2021-07-06T15:25:55.100' AS DateTime), 9, 1, 11, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (390, N'SHOES POLISH', 54, NULL, 21, 48, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:28:48.267' AS DateTime), CAST(N'2021-06-04T18:28:48.267' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (391, N'FOAM', 54, NULL, 21, 15, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:28:59.187' AS DateTime), CAST(N'2021-06-26T13:27:53.113' AS DateTime), 9, 1, 11, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (392, N'GREEN JALI', 54, NULL, 21, 35, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:30:19.177' AS DateTime), CAST(N'2021-07-03T15:04:50.583' AS DateTime), 9, 1, 11, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (393, N'HAND SANITIZER', 54, NULL, 26, 400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:32:43.863' AS DateTime), CAST(N'2021-06-04T18:32:43.863' AS DateTime), 8, 1, 11, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (394, N'MAX LIQUID', 54, NULL, 19, 170, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:35:01.767' AS DateTime), CAST(N'2021-06-24T15:25:23.857' AS DateTime), 9, 1, 11, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (395, N'GARBAGE BAG ', 54, NULL, 16, 164, 0, 0, NULL, NULL, 1, CAST(N'2021-06-04T18:43:31.467' AS DateTime), CAST(N'2021-06-26T15:28:32.803' AS DateTime), 9, 1, 11, N'OPENING STOCK')
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (396, N'phenyle', 56, NULL, 19, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:15:54.457' AS DateTime), CAST(N'2021-06-07T15:15:54.457' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (397, N'2portion box', 57, NULL, 21, 38, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:17:32.060' AS DateTime), CAST(N'2021-06-07T15:17:32.060' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (398, N'3portion box', 54, NULL, 21, 47, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:19:20.367' AS DateTime), CAST(N'2021-06-07T15:20:39.997' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (399, N'4portion box', 54, NULL, 21, 54, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:20:11.243' AS DateTime), CAST(N'2021-06-07T15:20:11.243' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (400, N'750ml box', 54, NULL, 21, 22, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:24:54.833' AS DateTime), CAST(N'2021-06-07T15:24:54.833' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (401, N'80ml dip', 54, NULL, 21, 3, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:25:27.783' AS DateTime), CAST(N'2021-06-07T15:25:27.783' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (402, N'AA  CELL', 54, NULL, 21, 20, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:28:26.123' AS DateTime), CAST(N'2021-06-07T15:28:26.123' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (403, N'AAA CELL', 54, NULL, 21, 14, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:31:50.253' AS DateTime), CAST(N'2021-06-07T15:31:50.253' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (405, N'AIR FRESHNER', 54, NULL, 19, 175, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:36:03.840' AS DateTime), CAST(N'2021-06-07T15:36:03.840' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (406, N'ALUMIN FOIL', 54, NULL, 21, 195, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:36:44.170' AS DateTime), CAST(N'2021-07-06T15:25:54.897' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (407, N'BALL PEN', 54, NULL, 20, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T15:38:28.730' AS DateTime), CAST(N'2021-07-03T16:10:16.367' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (408, N'BAMBO STICK', 54, NULL, 20, 40, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:38:22.907' AS DateTime), CAST(N'2021-06-07T17:38:22.907' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (409, N'BENDING STRAW WHITE', 54, NULL, 20, 90, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:39:33.303' AS DateTime), CAST(N'2021-06-26T13:27:53.127' AS DateTime), 5, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (410, N'BIRTHDAY CANDLE', 54, NULL, 20, 120, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:40:59.190' AS DateTime), CAST(N'2021-06-07T17:40:59.190' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (411, N'F1 BOX', 54, NULL, 21, 6, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:43:16.310' AS DateTime), CAST(N'2021-06-07T17:43:16.310' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (412, N'F2 BOX', 54, NULL, 21, 11, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:44:22.367' AS DateTime), CAST(N'2021-06-24T15:25:23.873' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (413, N'F3 BOX', 54, NULL, 21, 16, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:44:49.500' AS DateTime), CAST(N'2021-06-24T15:25:23.873' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (414, N'BURGER BOX', 54, NULL, 20, 19, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:46:09.143' AS DateTime), CAST(N'2021-06-07T17:46:09.143' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (415, N'BUTTER PAPER', 54, NULL, 20, 400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:48:03.847' AS DateTime), CAST(N'2021-06-07T17:48:03.847' AS DateTime), 6, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (416, N'CAKE BOX', 54, NULL, 20, 50, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:52:31.147' AS DateTime), CAST(N'2021-06-07T17:52:31.147' AS DateTime), 6, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (417, N'CAKE BOARD', 54, NULL, 21, 50, 0, 0, NULL, NULL, 1, CAST(N'2021-06-07T17:53:18.433' AS DateTime), CAST(N'2021-06-07T17:53:18.433' AS DateTime), 6, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (418, N'shopping bag', 54, NULL, 16, 250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:42:53.513' AS DateTime), CAST(N'2021-06-08T11:42:53.513' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (419, N'surf', 56, NULL, 16, 95, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:43:50.053' AS DateTime), CAST(N'2021-07-06T15:25:54.910' AS DateTime), 9, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (420, N'table napkin', 54, NULL, 20, 112, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:44:29.010' AS DateTime), CAST(N'2021-06-08T11:45:03.660' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (421, N'TAKE WAY BAG BROWN', 54, NULL, 21, 30, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:45:57.550' AS DateTime), CAST(N'2021-07-01T18:11:12.767' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (422, N'TEA LIGHT CANDLE', 54, NULL, 21, 6, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:47:11.920' AS DateTime), CAST(N'2021-06-08T11:47:11.920' AS DateTime), 8, 1, 11, NULL)
GO
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (423, N'GATE PASS BOOK', 54, NULL, 21, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:48:04.890' AS DateTime), CAST(N'2021-06-08T11:48:04.890' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (424, N'TISSUE JUMBO ROLL', 54, NULL, 20, 160, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:49:00.133' AS DateTime), CAST(N'2021-06-24T15:25:23.873' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (425, N'TOILET ROLL', 54, NULL, 21, 15, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:49:53.443' AS DateTime), CAST(N'2021-06-08T11:49:53.443' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (426, N'TOOTH PICKS', 54, NULL, 21, 180, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:50:21.370' AS DateTime), CAST(N'2021-06-08T11:50:21.370' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (427, N'TOWEL', 54, NULL, 16, 200, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:50:46.770' AS DateTime), CAST(N'2021-07-03T15:04:50.567' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (428, N'TRAY BRUSH', 54, NULL, 21, 180, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:51:58.350' AS DateTime), CAST(N'2021-06-08T11:51:58.350' AS DateTime), 9, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (429, N'VIM', 54, NULL, 20, 80, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:52:53.127' AS DateTime), CAST(N'2021-06-08T11:52:53.127' AS DateTime), 9, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (430, N'WOOD POLISH PLEDGE', 54, NULL, 19, 298, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:54:00.963' AS DateTime), CAST(N'2021-06-08T11:54:00.963' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (431, N'ZERO DIP', 54, NULL, 21, 3, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:54:33.900' AS DateTime), CAST(N'2021-06-08T11:54:33.900' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (432, N'SPRIT', 54, NULL, 26, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:55:37.007' AS DateTime), CAST(N'2021-06-08T11:55:37.007' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (433, N'SCOTCH BRIGHT', 54, NULL, 20, 25, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T11:57:10.260' AS DateTime), CAST(N'2021-06-30T17:17:24.077' AS DateTime), 9, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (434, N'chopstick imp', 54, NULL, 20, 245, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T14:03:51.110' AS DateTime), CAST(N'2021-06-08T14:03:51.110' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (435, N'A4 PAPER', 54, NULL, 22, 560, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T14:05:59.823' AS DateTime), CAST(N'2021-06-08T14:05:59.823' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (436, N'PRINTER ROLL', 54, NULL, 21, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T14:07:37.737' AS DateTime), CAST(N'2021-06-08T14:07:37.737' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (437, N'CLING FILM LARGE', 54, NULL, 21, 590, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T14:10:23.020' AS DateTime), CAST(N'2021-07-06T15:25:54.897' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (438, N'CLING FILM SMALL', 54, NULL, 21, 420, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T14:11:00.340' AS DateTime), CAST(N'2021-07-06T15:25:54.897' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (439, N'COFFEE CUP', 54, NULL, 21, 11, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T14:11:45.320' AS DateTime), CAST(N'2021-06-08T14:11:45.320' AS DateTime), 5, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (440, N'COIN CELL', 54, NULL, 20, 80, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T14:12:58.180' AS DateTime), CAST(N'2021-06-08T14:12:58.180' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (441, N'DISPOSIBLE SPOON', 54, NULL, 20, 1, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T14:19:29.107' AS DateTime), CAST(N'2021-06-08T14:19:29.107' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (442, N'dry mop', 54, NULL, 21, 207, 0, 0, NULL, NULL, 1, CAST(N'2021-06-08T14:20:26.600' AS DateTime), CAST(N'2021-06-08T14:20:26.600' AS DateTime), 9, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (443, N'CHICKS PEAS', 42, NULL, 17, 160, 0, 0, NULL, NULL, 1, CAST(N'2021-06-17T18:01:26.633' AS DateTime), CAST(N'2021-06-30T17:17:24.060' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (444, N'PRAWN 26/30', 46, NULL, 16, 750, 0, 0, NULL, NULL, 1, CAST(N'2021-06-17T18:45:06.630' AS DateTime), CAST(N'2021-06-17T18:45:06.630' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (445, N'LPG GAS', 54, NULL, 28, 6491.7, 0, 0, NULL, NULL, 1, CAST(N'2021-06-17T18:59:33.890' AS DateTime), CAST(N'2021-07-05T17:35:02.493' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (446, N'silver bag', 54, NULL, 16, 700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-17T19:14:33.873' AS DateTime), CAST(N'2021-06-17T19:14:33.873' AS DateTime), 8, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (447, N'GURI SUGAR JAPANESE', 55, NULL, 20, 1650, 0, 0, NULL, NULL, 1, CAST(N'2021-06-17T19:24:31.730' AS DateTime), CAST(N'2021-06-17T19:24:31.730' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (448, N'SUMAC POWDER JAPANESE', 55, NULL, 20, 2000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-17T19:25:21.250' AS DateTime), CAST(N'2021-06-17T19:25:21.250' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (449, N'PEACH ICE TEA', 43, NULL, 19, 2808, 0, 0, NULL, NULL, 1, CAST(N'2021-06-19T15:34:41.427' AS DateTime), CAST(N'2021-07-02T17:13:12.583' AS DateTime), 5, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (450, N'graps', 47, NULL, 16, 400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-19T17:29:05.687' AS DateTime), CAST(N'2021-07-06T14:41:28.337' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (451, N'MALMAL CLOTH', 54, NULL, 22, 100, 0, 0, NULL, NULL, 1, CAST(N'2021-06-19T17:37:26.717' AS DateTime), CAST(N'2021-06-19T17:37:26.717' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (452, N'BIRYANI MASALA', 53, NULL, 20, 520, 0, 0, NULL, NULL, 1, CAST(N'2021-06-19T18:14:49.630' AS DateTime), CAST(N'2021-06-29T17:38:54.360' AS DateTime), 7, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (453, N'beet root', 47, NULL, 16, 60, 0, 0, NULL, NULL, 1, CAST(N'2021-06-21T17:21:10.140' AS DateTime), CAST(N'2021-06-30T17:41:06.040' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (454, N'RED CABBAGE', 47, NULL, 16, 90, 0, 0, NULL, NULL, 1, CAST(N'2021-06-21T17:21:50.467' AS DateTime), CAST(N'2021-07-06T15:09:47.563' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (455, N'APPLE GREEN IMP', 47, NULL, 16, 700, 0, 0, NULL, NULL, 1, CAST(N'2021-06-21T17:52:51.917' AS DateTime), CAST(N'2021-07-06T15:09:47.640' AS DateTime), 6, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (456, N'MANGO FRESH', 47, NULL, 16, 150, 0, 0, NULL, NULL, 1, CAST(N'2021-06-21T17:53:51.593' AS DateTime), CAST(N'2021-07-06T14:41:28.307' AS DateTime), 5, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (457, N'fresh cherry', 47, NULL, 20, 350, 0, 0, NULL, NULL, 1, CAST(N'2021-06-21T18:55:59.030' AS DateTime), CAST(N'2021-07-02T18:25:53.737' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (458, N'pear imp', 47, NULL, 16, 300, 0, 0, NULL, NULL, 1, CAST(N'2021-06-25T16:08:07.557' AS DateTime), CAST(N'2021-07-03T15:25:04.423' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (459, N'plum', 47, NULL, 16, 250, 0, 0, NULL, NULL, 1, CAST(N'2021-06-25T17:32:26.030' AS DateTime), CAST(N'2021-06-30T17:41:06.117' AS DateTime), 5, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (460, N'RICE VINEGAR IMP. JAPANIES LARGE GLN', 42, NULL, 18, 25000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-26T13:29:12.103' AS DateTime), CAST(N'2021-06-26T13:30:03.727' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (461, N'EKA POWDER', 42, NULL, 20, 480, 0, 0, NULL, NULL, 1, CAST(N'2021-06-26T15:13:41.770' AS DateTime), CAST(N'2021-06-26T15:28:33.037' AS DateTime), 6, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (462, N'VIZYAN CHOCLATE SYRUP', 42, NULL, 19, 650, 0, 0, NULL, NULL, 1, CAST(N'2021-06-28T16:50:09.530' AS DateTime), CAST(N'2021-06-28T16:58:22.333' AS DateTime), 6, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (463, N'Japanese  wasabi powder', 42, NULL, 20, 3000, 0, 0, NULL, NULL, 1, CAST(N'2021-06-29T14:03:48.043' AS DateTime), CAST(N'2021-06-29T14:07:19.363' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (464, N'BEANS SPROUT', 42, NULL, 16, 400, 0, 0, NULL, NULL, 1, CAST(N'2021-06-29T14:34:55.497' AS DateTime), CAST(N'2021-07-06T15:09:47.640' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (465, N'cherry syrup', 43, NULL, 19, 1995, 0, 0, NULL, NULL, 1, CAST(N'2021-07-02T17:24:03.733' AS DateTime), CAST(N'2021-07-02T17:29:16.640' AS DateTime), 5, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (466, N'wheat powder atta', 53, NULL, 23, 1080, 0, 0, NULL, NULL, 1, CAST(N'2021-07-02T18:49:50.807' AS DateTime), CAST(N'2021-07-03T15:04:50.397' AS DateTime), 7, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (467, N'KIWI KNIFE', 49, NULL, 21, 430, 0, 0, NULL, NULL, 1, CAST(N'2021-07-03T16:03:38.150' AS DateTime), CAST(N'2021-07-03T16:10:16.400' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (468, N'ROOPER PEELER', 49, NULL, 21, 280, 0, 0, NULL, NULL, 1, CAST(N'2021-07-03T16:05:54.947' AS DateTime), CAST(N'2021-07-03T16:10:16.417' AS DateTime), 4, 1, 11, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (469, N'green olive whole', 42, NULL, 19, 769, 0, 0, NULL, NULL, 1, CAST(N'2021-07-03T19:06:20.513' AS DateTime), CAST(N'2021-07-03T19:08:26.183' AS DateTime), 4, 1, 10, NULL)
INSERT [dbo].[Items] ([Id], [Name], [CategoryId], [SubCategoryId], [UnitId], [Price], [Tax], [Discount], [PromotionStartDate], [PromotionEndDate], [IsActive], [CreationDate], [ModifyDate], [DepartmentId], [IsRawMaterial], [ItemGroupId], [Remarks]) VALUES (470, N'BLACK OLIVE WHOLE', 42, NULL, 19, 769, 0, 0, NULL, NULL, 1, CAST(N'2021-07-03T19:07:22.310' AS DateTime), CAST(N'2021-07-03T19:08:26.153' AS DateTime), 4, 1, 10, NULL)
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
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'1', 25, N'ANCHOVIES FISH', 1, 317, 317, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'10', 36, N'BLACK MUSHROOM', 1, 3000, 3000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'100', 157, N'CRABE WHOLE', 9.5, 750, 7125, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'101', 158, N'MACRONI PASTA', 8, 120, 960, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'102', 159, N'MAIDA', 60, 80, 4800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'103', 160, N'KASURI METHI', 3, 100, 300, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'104', 161, N'MAYONIES BEST FOOD', 4, 1734, 6936, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'105', 162, N'MEETENDRISER POWDER', 1, 180, 180, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'106', 163, N'WHOLE SALMON', 9, 3600, 32400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'107', 164, N'METHA SODA', 0.5, 100, 50, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'108', 165, N'MUSTARD SAUCE BTL', 4, 440, 1760, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'109', 168, N'KASOMI PASTA SMALL ', 3, 90, 270, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'11', 37, N'BLACK OLIVE', 2, 850, 1700, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'110', 182, N'VERMICELLI', 13, 27, 351, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'111', 198, N'BEEF PUPRONI', 8, 264, 2112, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'112', 200, N'CHICKEN BREAST FILLET', 30, 600, 18000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'113', 201, N'CHICKEN MALAI BOTI', 2, 600, 1200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'114', 202, N'CHICKEN NIBLET', 14, 380, 5320, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'115', 225, N'WHEAT BISCUITS ', 4, 50, 200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'116', 228, N'WHITE CHOCOLATE', 4, 1000, 4000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'117', 229, N'WHITE CHOCOLATE CHIP', 2, 300, 600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'118', 230, N'YELLOW CHEESE SLICE', 2, 950, 1900, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'119', 233, N'WHITE QUINWA', 2, 1090, 2180, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'12', 38, N'BLACK PEPPER POWDER', 2, 900, 1800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'120', 235, N'WHITE VINEGAR (SHEZAN)', 2, 280, 560, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'121', 236, N'CASTIC SODA', 4, 140, 560, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'122', 238, N'WHOLE GRAIN MUSTERD', 2, 500, 1000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'123', 243, N'WORCESTERSHIRE SAUCE', 6, 450, 2700, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'124', 246, N'YEAST', 1, 450, 450, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'125', 248, N'DAAL MASOOR', 10, 130, 1300, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'126', 250, N'DAIRY MILK', 5, 105, 525, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'127', 252, N'KIDNEY BEAND STAFF', 9, 180, 1620, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'128', 254, N'ZERA POWDER ', 0.9, 560, 504, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'129', 255, N'HAND WASH STAFF', 5, 100, 500, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'13', 39, N'BLACK SESMI SEEDS', 1, 350, 350, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'130', 256, N'RICE FOR STAFF', 3, 140, 420, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'131', 257, N'STAFF TEA', 0.75, 1000, 750, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'132', 259, N'NUR PUR BUTTER 200G', 0.2, 1242, 248.4, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'133', 260, N'85% CHOCOLATE', 4, 450, 1800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'134', 262, N'GUR', 2.4, 140, 336, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'135', 264, N'CHEDAR CHEESE', 1, 1600, 1600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'136', 265, N'COOKING CREAM', 51, 530, 27030, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'137', 266, N'CREAM CHEESE', 3, 1700, 5100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'138', 268, N'EGGS', 115, 14, 1610, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'139', 270, N'FETA CHEESE', 2, 1350, 2700, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'14', 40, N'BLACK PEPPER WHOLE', 2, 850, 1700, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'140', 271, N'FRESH MOZELA', 3, 1250, 3750, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'141', 272, N'MARGRINE BUTTER', 2, 400, 800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'142', 273, N'MILK PAK CREAM', 71, 116, 8236, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'143', 274, N'MILK PAK', 5, 160, 800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'144', 275, N'MOZELA CHEESE ADAMS', 1, 2100, 2100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'145', 276, N'NESTLE YOUGRT', 1.5, 190, 285, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'146', 277, N'PERMIZAN CHEESE', 0.4, 3400, 1360, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'147', 278, N'PREMA MILK', 3, 150, 450, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'148', 279, N'PUCK CHEESE', 11, 460, 5060, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'149', 280, N'PUFF PASTRY', 3, 400, 1200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'15', 41, N'BLUE BERRY FILLING', 2, 900, 1800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'150', 282, N'HONDASHI', 2, 4200, 8400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'151', 283, N'TOGARASHI', 2, 4200, 8400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'152', 286, N'LIGHT SOYA SAUCE ', 2, 2900, 5800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'153', 288, N'TOBIKKO ORANGE', 1, 4000, 4000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'154', 289, N'TRUFFLE OIL', 3, 5200, 15600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'155', 290, N'STRAWBERRY TOPPING FILLING ', 2, 900, 1800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'156', 291, N'STRAWBERRY TOPPING FILLING  LOCAL', 1, 350, 350, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'157', 292, N'SUGAR ', 10, 100, 1000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'158', 295, N'SUMAC POWDER BTL', 1, 350, 350, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'159', 296, N'SUN DRIED TOMATO LARGE ', 12, 6500, 78000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'16', 43, N'BREAD CRUMBS', 10, 380, 3800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'160', 298, N'SUPREMO PLUS ', 10, 2500, 25000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'161', 301, N'SWEET CORN LARGE ', 2, 667, 1334, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'162', 303, N'TANDOORI MASLA', 2, 130, 260, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'163', 304, N'TARRAGON DRY', 1, 2100, 2100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'164', 307, N'TABASCO SAUCE ', 1, 325, 325, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'165', 308, N'TOMATO PASTE', 1, 202, 202, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'166', 311, N'VANILLA CUSTARD ', 1.5, 320, 480, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'167', 314, N'RICHI CREAM', 2.5, 1050, 2625, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'168', 315, N'YELLOW BUTTER', 21, 430, 9030, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'169', 316, N'WHITE CHEESE SLICE', 5, 950, 4750, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'17', 45, N'BROWN SUGAR', 10, 100, 1000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'170', 317, N'YELLOW CHEESE SLICE', 2, 950, 1900, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'171', 318, N'CRANBERRY SYRUP', 1, 2100, 2100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'172', 320, N'BAMBO MAT JAPANIES', 2, 1600, 3200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'173', 321, N'YAMASA SAUCE 18LTR', 1, 26000, 26000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'174', 322, N'MIZKAN VINEGAR JAPANIES', 3, 2700, 8100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'175', 323, N'ARTICHOKE', 3, 570, 1710, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'176', 324, N'COFFEE BEANS', 2, 2700, 5400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'177', 325, N'COKE CAN', 132, 39, 5148, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'178', 326, N'FANTA CAN', 12, 39, 468, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'179', 328, N'JASMINE GREEN TEA', 3, 315, 945, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'18', 47, N'BUTTER MUSHROOMS ', 6, 850, 5100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'180', 329, N'LIPTON TEA BOX', 0.5, 1800, 900, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'181', 330, N'PEACH JUICE', 2, 160, 320, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'182', 331, N'ORANGE JUICE', 11, 160, 1760, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'183', 332, N'PINE APPLE JUICE', 5, 160, 800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'184', 333, N'MANGO JUICE', 4, 160, 640, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'185', 334, N'SPRITE 1.5LTR', 24, 100, 2400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'186', 335, N'SPRITE CAN', 72, 39, 2808, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'187', 337, N'WATER SMALL', 252, 24, 6048, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'188', 338, N'WATER LARGE', 72, 45, 3240, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'189', 339, N'ZERO COKE CAN', 144, 39, 5616, N'Opening Balance', 0, 0, 0)
GO
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'19', 50, N'CANDERAL SUGAR SACHET', 2, 200, 400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'190', 340, N'ZERO SPRITE CAN', 60, 39, 2340, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'191', 341, N'LIPTON TEA PKT GUST', 2, 500, 1000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'192', 342, N'RASPBERRY JAM', 8, 270, 2160, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'193', 344, N'RED JALAPINO', 1, 290, 290, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'194', 345, N'RED KIDNEY BEANS', 16, 170, 2720, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'195', 346, N'RED VINE VINGAR', 2, 350, 700, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'196', 349, N'RICE NOODLE ', 7, 380, 2660, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'197', 350, N'RICE VINEGAR', 5, 320, 1600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'198', 353, N'ROSE MARRY ', 1, 600, 600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'199', 355, N'SALT', 24, 28, 672, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'2', 26, N'APPLE CIDER VINEGAR ', 3, 300, 900, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'20', 51, N'CAPER IN VINEGAR', 10, 350, 3500, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'200', 356, N'SAMBALOELEK SAUCE', 63, 430, 27090, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'201', 357, N'PLAIN BREAD', 2, 59, 118, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'202', 359, N'SESAME OIL', 3, 500, 1500, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'203', 360, N'SESAME SEEDS', 0.5, 350, 175, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'204', 361, N'SHUSH SHEET JAPANESES ', 2, 4950, 9900, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'205', 362, N'SIRACHA SAUCE', 21, 590, 12390, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'206', 363, N'SODA WATER', 45, 64, 2880, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'207', 365, N'SOYA SAUCE', 12, 450, 5400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'208', 369, N'DUSTER', 5, 180, 900, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'209', 370, N'FACE MASK', 35, 250, 8750, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'21', 52, N'CARAMEL CHOCLATE SYRUP', 1, 350, 350, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'210', 372, N'GLINT', 1, 130, 130, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'211', 373, N'GLOVE PLASTIC', 2, 40, 80, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'212', 374, N'GLOVE SURGICAL', 4, 1500, 6000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'213', 375, N'HAIR NET CAP', 5, 250, 1250, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'214', 378, N'HI JEANS TISSUE', 35, 80, 2800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'215', 379, N'JALI', 54, 8, 432, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'216', 380, N'LIGHTER WITH LIGHT', 18, 29, 522, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'217', 381, N'MECA GAS', 3, 650, 1950, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'218', 385, N'PIPING BAG', 2, 300, 600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'219', 386, N'PIZZA BOX', 450, 58, 26100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'22', 53, N'CASHEWNUT', 3.3, 2000, 6600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'220', 389, N'DISHWASHING LTR', 40, 60, 2400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'221', 391, N'FOAM', 50, 15, 750, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'222', 393, N'HAND SANITIZER', 6, 400, 2400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'223', 394, N'MAX LIQUID', 2, 160, 320, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'224', 395, N'GARBAGE BAG ', 10, 140, 1400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'225', 397, N'2portion box', 200, 38, 7600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'226', 399, N'4portion box', 100, 54, 5400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'227', 400, N'750ml box', 50, 22, 1100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'228', 402, N'AA  CELL', 120, 20, 2400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'229', 403, N'AAA CELL', 648, 14, 9072, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'23', 54, N'CASTER SUGAR', 8, 100, 800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'230', 406, N'ALUMIN FOIL', 15, 180, 2700, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'231', 409, N'BENDING STRAW WHITE', 10, 70, 700, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'232', 411, N'F1 BOX', 100, 6, 600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'233', 412, N'F2 BOX', 100, 11, 1100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'234', 413, N'F3 BOX', 300, 13, 3900, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'235', 414, N'BURGER BOX', 150, 19, 2850, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'236', 415, N'BUTTER PAPER', 1, 400, 400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'237', 416, N'CAKE BOX', 4, 50, 200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'238', 417, N'CAKE BOARD', 4, 50, 200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'239', 418, N'shopping bag', 5, 250, 1250, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'24', 56, N'RICE STICK', 8, 343, 2744, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'240', 419, N'surf', 1, 110, 110, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'241', 420, N'table napkin', 22, 112, 2464, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'242', 421, N'TAKE WAY BAG BROWN', 150, 28, 4200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'243', 422, N'TEA LIGHT CANDLE', 300, 6, 1800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'244', 423, N'GATE PASS BOOK', 100, 100, 10000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'245', 424, N'TISSUE JUMBO ROLL', 18, 160, 2880, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'246', 425, N'TOILET ROLL', 8, 15, 120, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'247', 426, N'TOOTH PICKS', 4, 180, 720, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'248', 427, N'TOWEL', 10, 180, 1800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'249', 429, N'VIM', 6, 80, 480, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'25', 57, N'CHICKEN POWDER', 18, 760, 13680, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'250', 432, N'SPRIT', 20, 100, 2000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'251', 433, N'SCOTCH BRIGHT', 22, 30, 660, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'252', 434, N'chopstick imp', 13, 245, 3185, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'253', 435, N'A4 PAPER', 3, 560, 1680, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'254', 436, N'PRINTER ROLL', 60, 100, 6000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'255', 437, N'CLING FILM LARGE', 2, 800, 1600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'256', 438, N'CLING FILM SMALL', 4, 550, 2200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'257', 440, N'COIN CELL', 9, 80, 720, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'26', 60, N'CHILLI SAUCE', 3, 186, 558, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'27', 61, N'CHILLI WHOLE', 4, 900, 3600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'28', 62, N'CHOCLATE POWDER', 2, 714, 1428, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'29', 63, N'CHOCLATE SYRUP LOCAL', 4, 350, 1400, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'3', 28, N'BABY CORN ', 6, 133, 798, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'30', 64, N'CINAMON POWDER', 1, 800, 800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'31', 65, N'COCONUT MILK TIN', 29, 235, 6815, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'32', 66, N'COCONUT POWDER SANTAN', 7, 450, 3150, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'33', 67, N'NUTELLA CHOCOLATE', 1, 600, 600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'34', 69, N'COOKING OIL 16LTR', 1, 4600, 4600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'35', 70, N'CORIANDER POWDER', 0.2, 350, 70, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'36', 71, N'ONION POWDER ', 1, 225, 225, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'37', 72, N'CORIANDER WHOLE', 0.5, 280, 140, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'38', 73, N'OREGANO DAY', 1, 480, 480, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'39', 74, N'CORNFLOUR', 60, 120, 7200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'4', 29, N'BACKLE SUPREME', 10.3, 181, 1864.3, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'40', 75, N'OYSTER SAUCE MAMA SITA ', 2, 3800, 7600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'41', 76, N'PAPRIKA POWDER ', 1, 1100, 1100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'42', 77, N'SPAGHETTI PASTA', 5, 116, 580, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'43', 78, N'CRUSHED CHILLI ', 1, 800, 800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'44', 79, N'PEACH HALVES ', 4, 220, 880, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'45', 80, N'CUCMBER PICKLE', 2, 900, 1800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'46', 82, N'DARK CHOCLATE 1KG', 6, 1200, 7200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'47', 84, N'DARK SOYA SAUCE', 10, 600, 6000, N'Opening Balance', 0, 0, 0)
GO
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'48', 85, N'PEANUT ', 0.3, 460, 138, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'49', 86, N'DEMI GLACE ', 2, 750, 1500, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'5', 31, N'BALSAMIC VINEGAR BLACK', 4, 570, 2280, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'50', 87, N'PEELED TOMATO', 7, 140, 980, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'51', 89, N'COMMENTS CARD', 1000, 5, 5000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'52', 91, N'EDAMMAME', 5, 1050, 5250, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'53', 92, N'PENNE PASTA', 7, 170, 1190, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'54', 93, N'EMLI SAUCE', 2, 280, 560, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'55', 94, N'PINEAPPLE SLICE SMALL', 16, 250, 4000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'56', 98, N'FISH SAUCE', 1, 500, 500, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'57', 99, N'POLAC CONDENSED MILK', 7, 300, 2100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'58', 100, N'FOOD COLOUR POWDER', 2, 350, 700, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'59', 101, N'FOOD COLOUR LIQUID', 2, 100, 200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'6', 32, N'BASIL DRY', 1, 600, 600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'60', 102, N'KSCHRI POWDER ', 1.6, 700, 1120, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'61', 103, N'WHEAT WHOLE ', 1, 100, 100, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'62', 104, N'FRENCH MUSTARD GLN', 1, 2300, 2300, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'63', 105, N'FRIES', 13, 1068, 13884, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'64', 108, N'GARAM MASALA WHOLE', 0.4, 800, 320, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'65', 111, N'CHICKEN PEPPERONI ', 8, 249, 1992, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'66', 112, N'GHEE FOR STAFF', 4, 250, 1000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'67', 114, N'GLUCOSE', 1, 200, 200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'68', 115, N'CHICKEN PEPPERONI LARGE', 2, 635, 1270, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'69', 116, N'CHICKEN THAI', 4, 674, 2696, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'7', 33, N'BBQ SAUCE', 7, 590, 4130, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'70', 117, N'CHICKEN WHOLE ', 14, 335, 4690, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'71', 118, N'FAT', 1, 300, 300, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'72', 120, N'GREEN CURRY PASTE', 1, 690, 690, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'73', 122, N'TURKEY BACON ', 6, 1300, 7800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'74', 124, N'TURKEY SMOKE ', 10, 925, 9250, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'75', 127, N'HEINS BEANS', 4, 220, 880, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'76', 128, N'RUBI SNAPPER ', 6, 1750, 10500, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'77', 129, N'HISON SAUCE', 3, 760, 2280, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'78', 131, N'HONEY', 1, 760, 760, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'79', 132, N'HORS RADISH SAUCE', 1, 820, 820, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'8', 34, N'BLACK SALT', 1, 80, 80, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'80', 133, N'HOT CHOCLATE', 1, 2750, 2750, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'81', 134, N'PANGASIUS FISH ', 6, 550, 3300, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'82', 135, N'PINK SALMON FISH', 3, 4571, 13713, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'83', 136, N'PRAWN 21/25', 10, 700, 7000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'84', 137, N'PRAWN 8/12', 10, 1400, 14000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'85', 139, N'SOLE FISH', 10, 1700, 17000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'86', 140, N'SQUID FISH (CALAMARI) ', 10, 950, 9500, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'87', 141, N'HOT SAUCE', 2, 480, 960, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'88', 144, N'ICING SUGAR', 8, 100, 800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'89', 145, N'JAFAL POWDER', 1.5, 2031, 3046.5, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'9', 35, N'BLACK CHOCOLATE CHIP', 2, 300, 600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'90', 146, N'JALAPENO Can', 3, 650, 1950, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'91', 147, N'JAPANESE MAYONNAISE ', 6, 1300, 7800, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'92', 148, N'JAPANESE RICE IMP', 3, 1200, 3600, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'93', 149, N'TUNNA FISH', 5, 6000, 30000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'94', 150, N'JAPANIES TEMPORA FLOUR', 27, 1150, 31050, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'95', 151, N'KALWANJI', 0.5, 400, 200, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'96', 152, N'KETCHUP 4KG PKT', 2, 942, 1884, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'97', 153, N'CRAB STICK ', 2, 2500, 5000, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'98', 155, N'KISHMISH', 0.24, 500, 120, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (1, N'99', 156, N'LIME SEASONING POWDER', 20, 403, 8060, N'Opening Balance', 0, 0, 0)
INSERT [dbo].[OpeningDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (2, N'0001', 270, N'FETA CHEESE ', 2, 1350, 2700, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OpeningHead] ON 

INSERT [dbo].[OpeningHead] ([Id], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (1, N'1', N'Opening Balances As on 15-Jun-2021', NULL, NULL, NULL, NULL, NULL, CAST(N'2021-06-15T18:21:33.990' AS DateTime), 5, CAST(N'2021-06-15T18:21:33.990' AS DateTime), NULL)
INSERT [dbo].[OpeningHead] ([Id], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (2, N'1', N'received', NULL, NULL, NULL, 2700, 2700, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T15:56:32.370' AS DateTime), CAST(N'2021-06-30T15:56:32.370' AS DateTime))
SET IDENTITY_INSERT [dbo].[OpeningHead] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderFeedbackStatuses] ON 

INSERT [dbo].[OrderFeedbackStatuses] ([Id], [Name], [IsActive]) VALUES (1, N'Outstanding', 1)
INSERT [dbo].[OrderFeedbackStatuses] ([Id], [Name], [IsActive]) VALUES (2, N'Superior', 1)
INSERT [dbo].[OrderFeedbackStatuses] ([Id], [Name], [IsActive]) VALUES (3, N'Pleasing', 1)
INSERT [dbo].[OrderFeedbackStatuses] ([Id], [Name], [IsActive]) VALUES (4, N'Mediocre', 1)
SET IDENTITY_INSERT [dbo].[OrderFeedbackStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (338, 29, 24, N'gram', 1, 36, 36, 0, 0, NULL, CAST(N'2021-06-14T16:43:39.830' AS DateTime), CAST(N'2021-06-14T16:43:39.830' AS DateTime), N' iouio', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (341, 31, 24, N'gram', 1, 36, 36, 0, 0, 19, CAST(N'2021-06-15T12:29:01.597' AS DateTime), CAST(N'2021-06-15T12:29:01.597' AS DateTime), N' ww', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (342, 32, 24, N'gram', 1, 36, 36, 0, 0, 19, CAST(N'2021-06-24T13:48:31.917' AS DateTime), CAST(N'2021-06-24T13:48:31.917' AS DateTime), N' hfgddgdjhfghdfg', 0, 0, NULL, NULL)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ItemId], [ItemName], [Quantity], [Price], [TotalPrice], [TaxAmount], [Discount], [TableId], [CreationDate], [ModifyDate], [Remarks], [IsVoid], [IsComplimentary], [Reason], [DepartmentId]) VALUES (343, 30, 24, N'gram', 1, 36, 36, 0, 0, NULL, CAST(N'2021-06-24T14:00:35.447' AS DateTime), CAST(N'2021-06-24T14:00:35.447' AS DateTime), N' ', 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (29, N'2021-06147687', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 36, 0, 0, 0, NULL, NULL, CAST(N'2021-06-14T16:43:39.347' AS DateTime), NULL, CAST(N'2021-06-14T16:43:39.347' AS DateTime), 1, 0, NULL, NULL, 23, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (30, N'2021-06148859', NULL, 16, 0, 0, 0, 0, 1200, 0, 5.76, 0, 0, 36, 1241.76, 12313, 0, 11071.24, NULL, NULL, CAST(N'2021-06-14T16:44:30.973' AS DateTime), NULL, CAST(N'2021-06-24T14:00:35.353' AS DateTime), 0, 1, NULL, NULL, 2, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (31, N'2021-06151159', 3, 5, 0, 0, 0, 0, 0, 0, 1.8, 0, 0, 36, 37.8, 0, 36, 0, 19, NULL, CAST(N'2021-06-15T12:28:32.377' AS DateTime), NULL, CAST(N'2021-06-15T12:29:01.487' AS DateTime), 0, 1, NULL, NULL, 2, 0, 0, NULL)
INSERT [dbo].[Orders] ([Id], [InvoiceNumber], [PaymentTypeId], [GSTPerentage], [FOCDiscount], [DiscountPercentage], [BankDiscount], [DiscountVoucher], [Tip], [ServiceChargesPerentage], [GstCharged], [DiscountCharged], [ServiceCharged], [GrossAmount], [TotalNetAmount], [ReceiptTotalCash], [ReceiptTotalCredit], [Change], [TableId], [CreateBy], [CreationDate], [UpdateBy], [ModifyDate], [IsUpdateMode], [IsPayment], [ShopOpenOrderDate], [OrderTypeId], [NoOfGuest], [IsVoid], [IsComplimentary], [Reason]) VALUES (32, N'2021-06243684', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 36, 0, 0, 0, 19, NULL, CAST(N'2021-06-24T13:48:31.480' AS DateTime), NULL, CAST(N'2021-06-24T13:48:31.480' AS DateTime), 1, 0, NULL, NULL, 12, 0, 0, NULL)
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
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId], [IsActive], [CreationDate], [ModifyDate]) VALUES (40, N'dummy', 31, 1, CAST(N'2021-05-05T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
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
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1426, 5, NULL, 31, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1427, 5, NULL, 32, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1428, 5, 32, 39, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1429, 5, 32, 40, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1430, 5, 32, 41, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1431, 5, 32, 42, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1432, 5, 32, 43, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1433, 5, 32, 44, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1434, 5, 32, 45, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1435, 5, 32, 47, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1436, 5, 32, 48, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1437, 5, 32, 49, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1438, 5, 32, 50, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1439, 5, 32, 51, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1440, 5, 32, 67, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1441, 5, 32, 68, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1442, 5, NULL, 33, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1443, 5, NULL, 34, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1444, 5, 34, 52, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1445, 5, 34, 53, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1446, 5, 34, 54, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1447, 5, NULL, 35, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1448, 5, 35, 55, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1449, 5, 35, 56, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1450, 5, 35, 58, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1451, 5, 35, 59, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1452, 5, 35, 60, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1453, 5, 35, 69, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1454, 5, 35, 70, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1455, 5, 35, 74, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1456, 5, 35, 75, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1457, 5, 35, 76, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1458, 5, 35, 81, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1459, 5, 35, 82, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1460, 5, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1461, 5, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1462, 5, 36, 77, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1463, 5, NULL, 37, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1464, 5, 37, 62, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1465, 5, 37, 63, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1466, 5, 37, 64, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1467, 5, NULL, 78, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1468, 5, 78, 79, 1)
GO
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1469, 5, 78, 80, 1)
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
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1498, 11, NULL, 32, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1499, 11, 32, 42, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1500, 11, 32, 47, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1501, 11, 32, 48, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1502, 11, 32, 49, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1503, 11, 32, 50, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1504, 11, 32, 51, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1505, 11, 32, 67, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1506, 11, NULL, 35, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1507, 11, 35, 55, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1508, 11, 35, 56, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1509, 11, 35, 58, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1510, 11, 35, 59, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1511, 11, 35, 60, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1512, 11, 35, 69, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1513, 11, 35, 70, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1514, 11, 35, 74, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1515, 11, 35, 75, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1516, 11, 35, 76, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1517, 11, 35, 81, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1518, 11, 35, 82, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1519, 11, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1520, 11, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1521, 11, 36, 77, 1)
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
GO
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1569, 14, NULL, 36, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1570, 14, 36, 61, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1571, 14, 36, 77, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1572, 14, NULL, 78, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1573, 14, 78, 79, 1)
INSERT [dbo].[UserRights] ([Id], [UserId], [ParentId], [MenuId], [IsActive]) VALUES (1574, 14, 78, 80, 1)
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

INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (10, N'SHEIKH IQBAL STORE', N'03222890060', NULL, N'Main Market', 6, N'03222890060', NULL, NULL, N'0000', NULL, N'0000', CAST(N'2021-05-31T17:02:54.367' AS DateTime), CAST(N'2021-05-31T17:02:54.367' AS DateTime), CAST(N'2021-05-31T17:02:54.367' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (11, N'YASIR DAIRY ', N'033144030596', NULL, N'LAHORE', 6, N'033144030596', NULL, NULL, N'00', NULL, N'00', CAST(N'2021-05-31T17:34:00.960' AS DateTime), CAST(N'2021-05-31T17:34:00.960' AS DateTime), CAST(N'2021-05-31T17:34:00.960' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (12, N'COCA COLA ', N'03074615893', NULL, N'LAHORE', 6, N'03074615893', NULL, NULL, N'000', NULL, N'000', CAST(N'2021-05-31T17:35:03.303' AS DateTime), CAST(N'2021-05-31T17:35:03.303' AS DateTime), CAST(N'2021-05-31T17:35:03.303' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (13, N'K & N`s', N'03458217231', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'000', NULL, N'000', CAST(N'2021-05-31T17:36:08.613' AS DateTime), CAST(N'2021-05-31T17:36:08.613' AS DateTime), CAST(N'2021-05-31T17:36:08.613' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (14, N'BREAD & BEYOND', N'03134084317', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'000', NULL, N'000', CAST(N'2021-05-31T17:37:14.093' AS DateTime), CAST(N'2021-05-31T17:37:14.093' AS DateTime), CAST(N'2021-05-31T17:37:14.093' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (15, N'TOTO CHEMICAL', N'03456554444', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'00', NULL, N'0', CAST(N'2021-05-31T17:38:36.500' AS DateTime), CAST(N'2021-05-31T17:38:36.500' AS DateTime), CAST(N'2021-05-31T17:38:36.500' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (16, N'VENUS PAKISTAN', N'03202712745', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:40:03.337' AS DateTime), CAST(N'2021-05-31T17:40:03.337' AS DateTime), CAST(N'2021-05-31T17:40:03.337' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (17, N'HAAMEEM FOODS', N'03158674077', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:41:34.870' AS DateTime), CAST(N'2021-05-31T17:41:34.870' AS DateTime), CAST(N'2021-05-31T17:41:34.870' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (18, N'ASIF BROTHER ', N'03218854040', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:42:43.283' AS DateTime), CAST(N'2021-05-31T17:42:43.283' AS DateTime), CAST(N'2021-05-31T17:42:43.283' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (19, N'UMER TRADERS', N'03214751193', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:43:14.953' AS DateTime), CAST(N'2021-05-31T17:43:14.953' AS DateTime), CAST(N'2021-05-31T17:43:14.953' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (20, N'THE ARTISAN CHEESE', N'03104723108', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:44:12.540' AS DateTime), CAST(N'2021-05-31T17:44:12.540' AS DateTime), CAST(N'2021-05-31T17:44:12.540' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (21, N'2 STAR GAS', N'03453133335', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', N'35201', N'0', CAST(N'2021-05-31T17:45:08.783' AS DateTime), NULL, CAST(N'2021-05-31T17:45:08.783' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (22, N'A A TRADERS ', N'03005420446', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'5643751-4', CAST(N'2021-05-31T17:46:20.347' AS DateTime), NULL, CAST(N'2021-05-31T17:46:20.347' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (23, N'ICE DICE', N'03004058477', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:46:58.773' AS DateTime), CAST(N'2021-05-31T17:46:58.773' AS DateTime), CAST(N'2021-05-31T17:46:58.773' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (24, N'HORECA SYSTEMS', N'03000702091', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:51:13.937' AS DateTime), CAST(N'2021-05-31T17:51:13.937' AS DateTime), CAST(N'2021-05-31T17:51:13.937' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (25, N'WAFA ENTERPRISE ', N'03048297490', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:52:12.380' AS DateTime), CAST(N'2021-05-31T17:52:12.380' AS DateTime), CAST(N'2021-05-31T17:52:12.380' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (26, N'HAIDER TRADERS', N'03214268006', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:52:56.750' AS DateTime), CAST(N'2021-05-31T17:52:56.750' AS DateTime), CAST(N'2021-05-31T17:52:56.750' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (27, N'KASHIF BROTHER ', N'03214796913', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:54:05.863' AS DateTime), CAST(N'2021-05-31T17:54:05.863' AS DateTime), CAST(N'2021-05-31T17:54:05.863' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (28, N'PUNJAB BEEF SHOP', N'03214170448', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:56:37.120' AS DateTime), CAST(N'2021-05-31T17:56:37.120' AS DateTime), CAST(N'2021-05-31T17:56:37.120' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (29, N'G N FISH TRADERS (FISH TRADERS)', N'03219419660', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:57:45.300' AS DateTime), CAST(N'2021-05-31T17:57:45.300' AS DateTime), CAST(N'2021-05-31T17:57:45.300' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (30, N'SARHAD FISH', N'03004559383', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:58:30.780' AS DateTime), CAST(N'2021-05-31T17:58:30.780' AS DateTime), CAST(N'2021-05-31T17:58:30.780' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (31, N'ALI GHULAM SONS', N'03112964598', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T17:59:58.383' AS DateTime), CAST(N'2021-05-31T17:59:58.383' AS DateTime), CAST(N'2021-05-31T17:59:58.383' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (32, N'G R TRADERS ', N'03144063792', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T18:00:46.823' AS DateTime), CAST(N'2021-05-31T18:00:46.823' AS DateTime), CAST(N'2021-05-31T18:00:46.823' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (33, N'AFZAL BEEF SHOP', N'03214435256', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-05-31T18:02:48.797' AS DateTime), CAST(N'2021-05-31T18:02:48.797' AS DateTime), CAST(N'2021-05-31T18:02:48.797' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (34, N'PETTY CASH PURCHASE', N'03004719984', NULL, N'GULBERG', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-06-17T17:56:11.433' AS DateTime), CAST(N'2021-06-17T17:56:11.433' AS DateTime), CAST(N'2021-06-17T17:56:11.433' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (35, N'MULTI SOLUTION', N'03214842842', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-06-17T19:08:29.543' AS DateTime), CAST(N'2021-06-17T19:08:29.543' AS DateTime), CAST(N'2021-06-17T19:08:29.543' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (36, N'S.P FOODS', N'03334422826', NULL, N'LAHORE', 6, NULL, NULL, NULL, N'0', NULL, N'0', CAST(N'2021-06-17T19:19:44.347' AS DateTime), CAST(N'2021-06-17T19:19:44.347' AS DateTime), CAST(N'2021-06-17T19:19:44.347' AS DateTime), 1)
INSERT [dbo].[Vendors] ([Id], [VendorName], [ContactPerson], [Email], [Address], [CityId], [Mobile], [Telephone1], [Telephone2], [GstNo], [CNIC], [NTN], [CreationDate], [ModifyDate], [BusinessStartDate], [IsActive]) VALUES (37, N'ZMA INTERPRISES ', N'03214568956', NULL, N'LAhore', 6, NULL, NULL, NULL, N'00', NULL, N'00', CAST(N'2021-07-06T14:19:09.903' AS DateTime), CAST(N'2021-07-06T14:19:09.903' AS DateTime), CAST(N'2021-07-06T14:19:09.903' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Vendors] OFF
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (17, N'0001', 23, N'ALMOND ', 0.790000021457672, 1600, 1264.0000343322752, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0001', 325, N'COKE CAN ', 120, 40.8300018310547, 4899.6002197265643, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0002', 338, N'WATER LARGE ', 60, 42.8300018310547, 2569.8001098632822, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0003', 337, N'WATER SMALL ', 120, 22, 2640, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0004', 335, N'SPRITE CAN ', 120, 40.8300018310547, 4899.6002197265643, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0005', 340, N'ZERO SPRITE CAN ', 60, 40.8300018310547, 2449.8001098632822, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0006', 339, N'ZERO COKE CAN ', 60, 39, 2340, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0007', 334, N'SPRITE 1.5LTR ', 24, 82.5, 1980, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (18, N'0008', 326, N'FANTA CAN ', 12, 40.8300018310547, 489.96002197265642, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (19, N'0001', 143, N'ICE CUBE ', 3, 300, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (20, N'0001', 265, N'COOKING CREAM ', 60, 530, 31800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0001', 313, N'VANILLA STICK ', 1, 1890, 1890, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0002', 363, N'SODA WATER ', 36, 65, 2340, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0003', 108, N'GARAM MASALA WHOLE ', 1, 850, 850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (21, N'0004', 443, N'CHICKS PEAS ', 6, 150, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0001', 251, N'ROTTI ', 360, 7, 2520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0002', 357, N'PLAIN BREAD ', 15, 109, 1635, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0003', 44, N'BURGAR BUN ', 25, 62, 1550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (22, N'0004', 357, N'PLAIN BREAD ', 0, 59, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (23, N'0001', 199, N'BEEF ROD ', 21.7999992370605, 1400, 30519.9989318847, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (24, N'0001', 199, N'BEEF ROD ', 21, 1450, 30450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (25, N'0001', 315, N'YELLOW BUTTER ', 26, 430, 11180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (26, N'0001', 389, N'DISHWASHING LTR ', 60, 60, 3600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (27, N'0001', 271, N'FRESH MOZELA ', 5, 1259, 6295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (28, N'0001', 117, N'CHICKEN WHOLE  ', 13.6499996185303, 345, 4709.2498683929534, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (28, N'0002', 116, N'CHICKEN THAI ', 9.85999965667725, 571.72998046875, 5637.2574111339654, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (28, N'0003', 200, N'CHICKEN BREAST FILLET ', 60.560001373291, 571.72998046875, 34623.968402339138, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (29, N'0001', 338, N'WATER LARGE ', 120, 44, 5280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (29, N'0002', 337, N'WATER SMALL ', 120, 22.2299995422363, 2667.5999450683557, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (29, N'0003', 325, N'COKE CAN ', 120, 41, 4920, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (29, N'0004', 335, N'SPRITE CAN ', 120, 42, 5040, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (29, N'0005', 334, N'SPRITE 1.5LTR ', 30, 83, 2490, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (30, N'0001', 444, N'PRAWN 26/30 ', 2, 750, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (31, N'0001', 117, N'CHICKEN WHOLE  ', 7.34999990463257, 440, 3233.999958038331, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (31, N'0002', 200, N'CHICKEN BREAST FILLET ', 32.2299995422363, 840.099975585938, 27076.421828567505, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (32, N'0001', 117, N'CHICKEN WHOLE  ', 5.25, 380, 1995, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (32, N'0002', 200, N'CHICKEN BREAST FILLET ', 60.4300003051758, 675.799987792969, 40838.59346856692, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (33, N'0001', 200, N'CHICKEN BREAST FILLET ', 60.5299987792969, 675.799987792969, 40906.172436157278, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (34, N'0001', 116, N'CHICKEN THAI ', 9.84000015258789, 675.799987792969, 6649.8719830017089, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (34, N'0002', 200, N'CHICKEN BREAST FILLET ', 40.3499984741211, 675.799987792969, 27268.528476257357, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (35, N'0001', 161, N'MAYONIES BEST FOOD ', 12, 2066.25, 24795, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (35, N'0002', 152, N'KETCHUP 4KG PKT ', 12, 1122, 13464, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (36, N'0001', 143, N'ICE CUBE ', 31, 300, 9300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (36, N'0002', 357, N'PLAIN BREAD ', 19, 109, 2071, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (36, N'0003', 268, N'EGGS ', 180, 12, 2160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (36, N'0004', 44, N'BURGAR BUN ', 29, 71, 2059, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (36, N'0005', 336, N'WATER 19LTR ', 6, 250, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (36, N'0006', 266, N'CREAM CHEESE ', 3, 1700, 5100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (36, N'0007', 327, N'VANILA HICO ICE CREAM ', 3, 1895, 5685, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (36, N'0008', 318, N'CRANBERRY SYRUP ', 1, 1995, 1995, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (36, N'0009', 420, N'table napkin ', 30, 112, 3360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (37, N'0001', 445, N'LPG GAS ', 7, 6443.60009765625, 45105.20068359375, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (38, N'0001', 445, N'LPG GAS ', 7, 5569.7001953125, 38987.9013671875, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (39, N'0001', 348, N'RICE GUEST ZARAFA ', 50, 150, 7500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (39, N'0002', 131, N'HONEY ', 3, 750, 2250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (40, N'0001', 315, N'YELLOW BUTTER ', 15, 430, 6450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (41, N'0001', 315, N'YELLOW BUTTER ', 3, 450, 1350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (42, N'0001', 315, N'YELLOW BUTTER ', 16, 430, 6880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (42, N'0002', 315, N'YELLOW BUTTER ', 0, 430, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (43, N'0001', 105, N'FRIES ', 16, 1000, 16000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (44, N'0001', 134, N'PANGASIUS FISH  ', 30, 550, 16500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0001', 251, N'ROTTI ', 1510, 7, 10570, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0002', 192, N'ROCKET LEAVE ', 0.600000023841858, 1200, 720.00002861022961, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0003', 336, N'WATER 19LTR ', 3, 260, 780, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0004', 143, N'ICE CUBE ', 9, 300, 2700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0005', 231, N'YOUGRT CUP ', 2, 130, 260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0006', 276, N'NESTLE YOUGRT ', 2, 75, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0007', 410, N'BIRTHDAY CANDLE ', 8, 120, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0008', 278, N'PREMA MILK ', 4, 165, 660, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0009', 446, N'silver bag ', 4, 700, 2800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0010', 103, N'WHEAT WHOLE  ', 1.5, 100, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0011', 182, N'VERMICELLI ', 4, 30, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0012', 49, N'RISOTO RICE ', 7, 350, 2450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0013', 428, N'TRAY BRUSH ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0014', 441, N'DISPOSIBLE SPOON ', 600, 1, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0015', 118, N'FAT ', 4, 300, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0016', 361, N'SHUSH SHEET JAPANESES  ', 0, 4950, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0017', 447, N'GURI SUGAR JAPANESE ', 1, 1650, 1650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (45, N'0018', 448, N'SUMAC POWDER JAPANESE ', 1, 2000, 2000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (46, N'0001', 239, N'CHILLI CHEDAR CHEESE 250G ', 1, 1250, 1250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (46, N'0002', 242, N'GOUDA HERBS CHEESE 250G ', 1, 1080, 1080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (46, N'0003', 241, N'WALNUTS CHEESE 250 g ', 1, 800, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (47, N'0001', 271, N'FRESH MOZELA ', 5, 1259, 6295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (48, N'0001', 237, N'HALLUMI CHEESE ', 2, 450, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (48, N'0002', 261, N'HALLOUMI CHEESE 1 KG ', 0, 1800, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (49, N'0001', 445, N'LPG GAS ', 7, 5627.39990234375, 39391.79931640625, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (50, N'0001', 117, N'CHICKEN WHOLE  ', 13.6499996185303, 380, 5186.9998550415139, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (50, N'0002', 116, N'CHICKEN THAI ', 19.7000007629395, 675.799987792969, 13313.260275115994, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (50, N'0003', 200, N'CHICKEN BREAST FILLET ', 10.0900001525879, 675.799987792969, 6818.8219799499575, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (51, N'0001', 140, N'SQUID FISH (CALAMARI)  ', 8.30000019073486, 950, 7885.0001811981165, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (52, N'0001', 137, N'PRAWN 8/12 ', 10, 1350, 13500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (52, N'0002', 136, N'PRAWN 21/25 ', 10, 700, 7000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (53, N'0001', 265, N'COOKING CREAM ', 60, 530, 31800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (54, N'0001', 348, N'RICE GUEST ZARAFA ', 1, 160, 160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (54, N'0002', 268, N'EGGS ', 360, 12.31, 4431.6, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (54, N'0003', 143, N'ICE CUBE ', 6, 300, 1800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (54, N'0004', 266, N'CREAM CHEESE ', 4, 1700, 6800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (54, N'0005', 81, N'PEACH PUREE ', 0, 1250, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (54, N'0006', 449, N'peach ice tea ', 1, 2808, 2808, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (54, N'0007', 122, N'TURKEY BACON  ', 5, 1300, 6500, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (54, N'0008', 126, N'SMOKE SALMON  ', 2, 1800, 3600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0001', 418, N'shopping bag ', 6, 370, 2220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0002', 438, N'CLING FILM SMALL ', 5, 550, 2750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0003', 391, N'FOAM ', 24, 15, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0004', 401, N'80ml dip ', 200, 3, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0005', 431, N'ZERO DIP ', 100, 2.4, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0006', 437, N'CLING FILM LARGE ', 10, 800, 8000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0007', 373, N'GLOVE PLASTIC ', 10, 40, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0008', 425, N'TOILET ROLL ', 24, 13.34, 320.15999999999997, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0009', 369, N'DUSTER ', 16, 210, 3360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0010', 378, N'HI JEANS TISSUE ', 10, 85, 850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0011', 382, N'MORTAINE SPRAY ', 4, 350, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0012', 377, N'HARPIC ', 6, 150, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0013', 394, N'MAX LIQUID ', 6, 170, 1020, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0014', 419, N'surf ', 12, 120, 1440, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (55, N'0015', 388, N'SHAKE GLASS ', 185, 10, 1850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0001', 345, N'RED KIDNEY BEANS ', 12, 160, 1920, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0002', 92, N'PENNE PASTA ', 12, 175, 2100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0003', 292, N'SUGAR  ', 50, 100, 5000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0004', 154, N'KIKOMAN SOYA SAUCE ', 2, 850, 1700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0005', 235, N'WHITE VINEGAR (SHEZAN) ', 2, 290, 580, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0006', 301, N'SWEET CORN LARGE  ', 1, 690, 690, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0007', 232, N'WHITE PEPPER POWDER ', 2, 1350, 2700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0008', 279, N'PUCK CHEESE ', 2, 480, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0009', 275, N'MOZELA CHEESE ADAMS ', 0, 2100, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0010', 31, N'BALSAMIC VINEGAR BLACK ', 2, 510, 1020, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0011', 363, N'SODA WATER ', 24, 65, 1560, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0012', 78, N'CRUSHED CHILLI  ', 2, 650, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0013', 249, N'DAAL MONG ', 5, 230, 1150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0014', 247, N'DAAL MASH ', 5, 220, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0015', 248, N'DAAL MASOOR ', 5, 130, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0016', 245, N'DAAL CHANA ', 5, 150, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0017', 250, N'DAIRY MILK ', 12, 105, 1260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0018', 159, N'MAIDA ', 50, 80, 4000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0019', 344, N'RED JALAPINO ', 2, 340, 680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0020', 68, N'OLIVE OIL EXTRA  ', 1, 2400, 2400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0021', 61, N'CHILLI WHOLE ', 1, 980, 980, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0022', 198, N'BEEF PUPRONI ', 2, 280, 560, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0023', 111, N'CHICKEN PEPPERONI  ', 2, 250, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0024', 343, N'RED CHERRY ', 0.5, 680, 340, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0025', 277, N'PERMIZAN CHEESE ', 4.8, 3500, 16800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0026', 126, N'SMOKE SALMON  ', 1, 1650, 1650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0027', 270, N'FETA CHEESE ', 3, 1350, 4050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0028', 122, N'TURKEY BACON  ', 10, 1250, 12500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0029', 313, N'VANILLA STICK ', 1, 1250, 1250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0030', 251, N'ROTTI ', 200, 7, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0031', 251, N'ROTTI ', 0, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0032', 357, N'PLAIN BREAD ', 8, 109, 872, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0033', 44, N'BURGAR BUN ', 15, 62, 930, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0034', 278, N'PREMA MILK ', 5, 165, 825, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0035', 410, N'BIRTHDAY CANDLE ', 2, 75, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0036', 92, N'PENNE PASTA ', 0, 170, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0037', 260, N'85% CHOCOLATE ', 4, 495, 1980, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0038', 233, N'WHITE QUINWA ', 1, 795, 795, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0039', 103, N'WHEAT WHOLE  ', 1, 110, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0040', 334, N'SPRITE 1.5LTR ', 24, 90, 2160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (56, N'0041', 334, N'SPRITE 1.5LTR ', 0, 100, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (57, N'0001', 199, N'BEEF ROD ', 0, 1450, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (58, N'0001', 409, N'BENDING STRAW WHITE ', 10, 90, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (59, N'0001', 251, N'ROTTI ', 180, 7, 1260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (60, N'0001', 117, N'CHICKEN WHOLE  ', 16.8, 345.09, 5797.512, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (60, N'0002', 116, N'CHICKEN THAI ', 15.77, 571.73, 9016.1821, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (60, N'0003', 200, N'CHICKEN BREAST FILLET ', 80.75, 571.73, 46167.1975, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (60, N'0004', 202, N'CHICKEN NIBLET ', 6, 283.12, 1698.72, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (61, N'0001', 251, N'ROTTI ', 235, 7, 1645, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (61, N'0002', 143, N'ICE CUBE ', 2.5, 300, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (61, N'0003', 259, N'NUR PUR BUTTER 200G ', 0.4, 1242, 496.8, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (61, N'0004', 123, N'CHICKEN BONE ', 5, 100, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0001', 181, N'POTATOM KITCHEN ', 6, 50, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0002', 432, N'SPRIT ', 1.6, 100, 160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0003', 343, N'RED CHERRY ', 0.7, 700, 489.99999999999994, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0004', 225, N'WHEAT BISCUITS  ', 0, 50, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0005', 294, N'SUJI ', 2.5, 80, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0006', 180, N'POTATO STAFF ', 23, 50, 1150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0007', 268, N'EGGS ', 105.71, 14, 1479.9399999999998, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0008', 276, N'NESTLE YOUGRT ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0009', 231, N'YOUGRT CUP ', 2, 130, 260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0010', 167, N'NESVITA LOW FAT ', 3, 40, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0011', 295, N'SUMAC POWDER BTL ', 1, 450, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0012', 246, N'YEAST ', 1, 450, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0013', 47, N'BUTTER MUSHROOMS  ', 6, 850, 5100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0014', 68, N'OLIVE OIL EXTRA  ', 1, 2400, 2400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (62, N'0015', 450, N'graps ', 0.45, 1200, 540, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0001', 44, N'BURGAR BUN ', 5, 71, 355, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0002', 278, N'PREMA MILK ', 3, 155, 465, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0003', 451, N'MALMAL CLOTH ', 2, 100, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0004', 49, N'RISOTO RICE ', 10, 350, 3500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0005', 259, N'NUR PUR BUTTER 200G ', 0.4, 1242, 496.8, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0006', 126, N'SMOKE SALMON  ', 1, 2495, 2495, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0007', 48, N'MIX SPICE ', 1, 395, 395, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0008', 231, N'YOUGRT CUP ', 2, 130, 260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0009', 276, N'NESTLE YOUGRT ', 2, 190, 380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0010', 25, N'ANCHOVIES FISH ', 1, 375, 375, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0011', 340, N'ZERO SPRITE CAN ', 36, 39, 1404, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0012', 297, N'SUN DRIED TOMATO LOCAL SMALL ', 12, 550, 6600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0013', 345, N'RED KIDNEY BEANS ', 12, 150, 1800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0014', 33, N'BBQ SAUCE ', 6, 590, 3540, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0015', 154, N'KIKOMAN SOYA SAUCE ', 2, 850, 1700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0016', 68, N'OLIVE OIL EXTRA  ', 1, 2400, 2400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0017', 300, N'SWEET CHILI SAUCE 800ML ', 6, 720, 4320, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0018', 230, N'YELLOW CHEESE SLICE ', 4, 920, 3680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0019', 69, N'COOKING OIL 16LTR ', 1, 4300, 4300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (63, N'0020', 332, N'PINE APPLE JUICE ', 12, 230, 2760, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (64, N'0001', 256, N'RICE FOR STAFF ', 65, 150, 9750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (64, N'0002', 348, N'RICE GUEST ZARAFA ', 10, 150, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (65, N'0001', 389, N'DISHWASHING LTR ', 60, 50, 3000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (66, N'0001', 271, N'FRESH MOZELA ', 5, 1259, 6295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (67, N'0001', 338, N'WATER LARGE ', 120, 50, 6000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (67, N'0002', 337, N'WATER SMALL ', 120, 24, 2880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (67, N'0003', 325, N'COKE CAN ', 240, 39, 9360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (67, N'0004', 335, N'SPRITE CAN ', 120, 39, 4680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (67, N'0005', 340, N'ZERO SPRITE CAN ', 96, 39, 3744, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (67, N'0006', 334, N'SPRITE 1.5LTR ', 30, 100, 3000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0001', 297, N'SUN DRIED TOMATO LOCAL SMALL ', 6, 550, 3300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0002', 33, N'BBQ SAUCE ', 4, 580, 2320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0003', 250, N'DAIRY MILK ', 24, 105, 2520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0004', 274, N'MILK PAK ', 24, 150, 3600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0005', 273, N'MILK PAK CREAM ', 48, 118, 5664, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0006', 245, N'DAAL CHANA ', 5, 140, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0007', 249, N'DAAL MONG ', 5, 230, 1150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0008', 277, N'PERMIZAN CHEESE ', 1, 3450, 3450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0009', 47, N'BUTTER MUSHROOMS  ', 8, 850, 6800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0010', 146, N'JALAPENO Can ', 3, 650, 1950, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0011', 69, N'COOKING OIL 16LTR ', 2, 4300, 8600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0012', 275, N'MOZELA CHEESE ADAMS ', 2, 2100, 4200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0013', 104, N'FRENCH MUSTARD GLN ', 1, 3350, 3350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0014', 75, N'OYSTER SAUCE MAMA SITA  ', 1, 3850, 3850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0015', 154, N'KIKOMAN SOYA SAUCE ', 2, 850, 1700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0016', 300, N'SWEET CHILI SAUCE 800ML ', 6, 720, 4320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0017', 60, N'CHILLI SAUCE ', 4, 180, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0018', 246, N'YEAST ', 1, 460, 460, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0019', 366, N'STRAWBERRY FILLING  ', 6, 900, 5400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0020', 41, N'BLUE BERRY FILLING ', 3, 880, 2640, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0021', 37, N'BLACK OLIVE ', 3, 850, 2550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0022', 230, N'YELLOW CHEESE SLICE ', 2, 920, 1840, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0023', 77, N'SPAGHETTI PASTA ', 3, 120, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0024', 78, N'CRUSHED CHILLI  ', 2, 650, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0025', 112, N'GHEE FOR STAFF ', 10, 270, 2700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0026', 166, N'NESCAFE COFFEE ', 1, 950, 950, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0027', 259, N'NUR PUR BUTTER 200G ', 4, 270, 1080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0028', 269, N'EVERY DAY MILK POWDER ', 1, 880, 880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0029', 302, N'TAHINI PASTE  ', 2, 680, 1360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0030', 352, N'RICH,S COOKING CREAM ', 2, 525, 1050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0031', 343, N'RED CHERRY ', 0.5, 680, 340, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0032', 405, N'AIR FRESHNER ', 4, 200, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0033', 433, N'SCOTCH BRIGHT ', 24, 25, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0034', 345, N'RED KIDNEY BEANS ', 6, 160, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0035', 93, N'EMLI SAUCE ', 6, 270, 1620, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0036', 144, N'ICING SUGAR ', 6, 120, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0037', 264, N'CHEDAR CHEESE ', 1, 1580, 1580, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0038', 98, N'FISH SAUCE ', 1, 600, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0039', 85, N'PEANUT  ', 1, 520, 520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0040', 55, N'WHITE CHANA ', 5, 150, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0041', 452, N'BIRYANI MASALA ', 1, 520, 520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0042', 232, N'WHITE PEPPER POWDER ', 2, 1350, 2700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0043', 243, N'WORCESTERSHIRE SAUCE ', 6, 495, 2970, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0044', 396, N'phenyle ', 3, 110, 330, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0045', 158, N'MACRONI PASTA ', 5, 100, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0046', 66, N'COCONUT POWDER SANTAN ', 3, 450, 1350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0047', 68, N'OLIVE OIL EXTRA  ', 1, 2400, 2400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (68, N'0048', 68, N'OLIVE OIL EXTRA  ', 0, 2300, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (69, N'0001', 199, N'BEEF ROD ', 13.8, 1450, 20010, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (70, N'0001', 199, N'BEEF ROD ', 15.4, 1500, 23100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (71, N'0001', 26, N'APPLE CIDER VINEGAR  ', 0, 300, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (71, N'0002', 315, N'YELLOW BUTTER ', 26, 430, 11180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0001', 418, N'shopping bag ', 3, 360, 1080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0002', 375, N'HAIR NET CAP ', 5, 250, 1250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0003', 375, N'HAIR NET CAP ', 0, 250, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0004', 419, N'surf ', 6, 120, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0005', 391, N'FOAM ', 18, 40, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0006', 379, N'JALI ', 24, 8.34, 200.16, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0007', 373, N'GLOVE PLASTIC ', 10, 40, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0008', 377, N'HARPIC ', 6, 150, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0009', 394, N'MAX LIQUID ', 4, 170, 680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0010', 394, N'MAX LIQUID ', 0, 160, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0011', 412, N'F2 BOX ', 200, 11, 2200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0012', 412, N'F2 BOX ', 0, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0013', 413, N'F3 BOX ', 100, 16, 1600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0014', 424, N'TISSUE JUMBO ROLL ', 12, 160, 1920, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0015', 396, N'phenyle ', 2, 100, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0016', 411, N'F1 BOX ', 100, 6.5, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0017', 387, N'PORTION BAG ', 2, 360, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (72, N'0018', 392, N'GREEN JALI ', 0, 35, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0001', 226, N'ICE BERG ', 3, 350, 1050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0002', 209, N'BROCOLI ', 2, 650, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0003', 184, N'TOMATO ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0004', 180, N'POTATO STAFF ', 15, 55, 825, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0005', 177, N'ONION KITCHEN ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0006', 204, N'CARRIAT KITCHEN ', 10, 70, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0007', 210, N'CABBAGE ', 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0008', 194, N'SPINACH KITCHEN ', 2, 40, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0009', 170, N'LEMON FRESH ', 1, 160, 160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0010', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0011', 213, N'CUCMBER ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0012', 222, N'GREEN CAPSICUM ', 10, 110, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0013', 216, N'FRESH BEANS ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0014', 196, N'ZAUCQNI ', 7, 120, 840, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0015', 223, N'GREEN ONION ', 1, 220, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0016', 453, N'beet root ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0017', 454, N'RED CABBAGE ', 1, 60, 60, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0018', 188, N'PEACH FRESH ', 3, 180, 540, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0019', 175, N'MULTI CAPSICUM ', 2, 750, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0020', 212, N'CHERRY TOMATO ', 3, 350, 1050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0021', 192, N'ROCKET LEAVE ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0022', 187, N'PARSELY ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0023', 215, N'FRESH BASIL ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0024', 211, N'CELERY ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0025', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0026', 218, N'FRESH MUSHROOMS ', 5, 220, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0027', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0028', 208, N'BANANA ', 24, 15, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0029', 191, N'GREEN APPLE ', 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (73, N'0030', 188, N'PEACH FRESH ', 0, 180, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (74, N'0001', 148, N'JAPANESE RICE IMP ', 25.68, 1050, 26964, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (75, N'0001', 455, N'APPLE GREEN IMP ', 1, 849, 849, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0001', 226, N'ICE BERG ', 3, 320, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0002', 184, N'TOMATO ', 3, 35, 105, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0003', 180, N'POTATO STAFF ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0004', 176, N'ONION STAFF ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0005', 204, N'CARRIAT KITCHEN ', 5, 55, 275, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0006', 210, N'CABBAGE ', 1, 30, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0007', 219, N'GARLIC  ', 2, 150, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0008', 194, N'SPINACH KITCHEN ', 1, 40, 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0009', 170, N'LEMON FRESH ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0010', 174, N'MINT LEAVE ', 5, 10, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0011', 178, N'FRESH CORIANDER STAFF ', 1, 20, 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0012', 213, N'CUCMBER ', 3, 60, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0013', 222, N'GREEN CAPSICUM ', 10, 100, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0014', 216, N'FRESH BEANS ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0015', 196, N'ZAUCQNI ', 0, 120, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0016', 196, N'ZAUCQNI ', 0, 120, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0017', 223, N'GREEN ONION ', 0.5, 220, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0018', 175, N'MULTI CAPSICUM ', 5, 750, 3750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0019', 208, N'BANANA ', 12, 18, 216, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0020', 188, N'PEACH FRESH ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0021', 456, N'MANGO FRESH ', 2, 150, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (76, N'0022', 207, N'BABY SPINACH ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0001', 209, N'BROCOLI ', 2, 500, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0002', 226, N'ICE BERG ', 3, 320, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0003', 183, N'TOMATO STAFF ', 10, 35, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0004', 180, N'POTATO STAFF ', 12, 55, 660, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0005', 176, N'ONION STAFF ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0006', 203, N'CARRIAT STAFF ', 7, 55, 385, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0007', 170, N'LEMON FRESH ', 4, 250, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0008', 174, N'MINT LEAVE ', 15, 10, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0009', 178, N'FRESH CORIANDER STAFF ', 3, 20, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0010', 213, N'CUCMBER ', 3, 60, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0011', 222, N'GREEN CAPSICUM ', 8, 100, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0012', 216, N'FRESH BEANS ', 1, 220, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0013', 196, N'ZAUCQNI ', 2, 120, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0014', 223, N'GREEN ONION ', 0.5, 220, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0015', 175, N'MULTI CAPSICUM ', 6, 750, 4500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0016', 205, N'AVACADO ', 0.4, 2200, 880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0017', 212, N'CHERRY TOMATO ', 4, 350, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0018', 195, N'THAI BIRD CHILLI ', 2, 450, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0019', 187, N'PARSELY ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0020', 215, N'FRESH BASIL ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0021', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0022', 456, N'MANGO FRESH ', 3, 150, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0023', 188, N'PEACH FRESH ', 2, 180, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0024', 208, N'BANANA ', 24, 15, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (77, N'0025', 457, N'fresh cherry ', 1, 380, 380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (78, N'0001', 143, N'ICE CUBE ', 3, 300, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (78, N'0002', 251, N'ROTTI ', 320, 7, 2240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (79, N'0001', 105, N'FRIES ', 16, 1000, 16000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (80, N'0001', 199, N'BEEF ROD ', 20.4, 1450, 29579.999999999996, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (81, N'0001', 271, N'FRESH MOZELA ', 5, 1259, 6295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (82, N'0001', 357, N'PLAIN BREAD ', 6, 109, 654, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (82, N'0002', 44, N'BURGAR BUN ', 10, 62, 620, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0001', 307, N'TABASCO SAUCE  ', 2, 330, 660, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0002', 275, N'MOZELA CHEESE ADAMS ', 2, 2150, 4300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0003', 264, N'CHEDAR CHEESE ', 1, 1600, 1600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0004', 419, N'surf ', 5, 110, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0005', 348, N'RICE GUEST ZARAFA ', 10, 130, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0006', 88, N'DIJON MUSTARD ', 2, 400, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0007', 104, N'FRENCH MUSTARD GLN ', 1, 3500, 3500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0008', 69, N'COOKING OIL 16LTR ', 2, 4600, 9200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0009', 68, N'OLIVE OIL EXTRA  ', 2, 2300, 4600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0010', 333, N'MANGO JUICE ', 2, 190, 380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0011', 330, N'PEACH JUICE ', 2, 190, 380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0012', 93, N'EMLI SAUCE ', 4, 280, 1120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0013', 308, N'TOMATO PASTE ', 4, 240, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0014', 76, N'PAPRIKA POWDER  ', 1, 1200, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0015', 92, N'PENNE PASTA ', 10, 170, 1700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0016', 52, N'CARAMEL CHOCLATE SYRUP ', 2, 320, 640, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0017', 235, N'WHITE VINEGAR (SHEZAN) ', 2, 300, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (83, N'0018', 344, N'RED JALAPINO ', 2, 300, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0001', 290, N'STRAWBERRY TOPPING FILLING  ', 4, 920, 3680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0002', 25, N'ANCHOVIES FISH ', 1, 300, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0003', 55, N'WHITE CHANA ', 2, 140, 280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0004', 27, N'CHOKER  ', 1, 80, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0005', 37, N'BLACK OLIVE ', 1, 850, 850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0006', 112, N'GHEE FOR STAFF ', 10, 260, 2600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0007', 263, N'EMLI WHOLE  ', 2, 250, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0008', 154, N'KIKOMAN SOYA SAUCE ', 1, 950, 950, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0009', 274, N'MILK PAK ', 24, 150, 3600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0010', 250, N'DAIRY MILK ', 36, 103.5, 3726, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0011', 294, N'SUJI ', 2, 130, 260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0012', 224, N'WALNUTS ', 1, 1400, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0013', 23, N'ALMOND ', 1, 1600, 1600, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0014', 245, N'DAAL CHANA ', 5, 140, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0015', 247, N'DAAL MASH ', 2, 280, 560, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0016', 248, N'DAAL MASOOR ', 2, 160, 320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (84, N'0017', 249, N'DAAL MONG ', 0, 230, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (85, N'0001', 319, N'MOJITO SYRUP ', 1, 1295, 1295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (85, N'0002', 318, N'CRANBERRY SYRUP ', 1, 2100, 2100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0001', 69, N'COOKING OIL 16LTR ', 2, 4300, 8600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0002', 37, N'BLACK OLIVE ', 3, 860, 2580, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0003', 47, N'BUTTER MUSHROOMS  ', 2, 850, 1700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0004', 301, N'SWEET CORN LARGE  ', 3, 700, 2100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0005', 422, N'TEA LIGHT CANDLE ', 175, 6, 1050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0006', 275, N'MOZELA CHEESE ADAMS ', 2, 2150, 4300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0007', 264, N'CHEDAR CHEESE ', 1, 1600, 1600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0008', 333, N'MANGO JUICE ', 2, 190, 380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0009', 437, N'CLING FILM LARGE ', 2, 700, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0010', 132, N'HORS RADISH SAUCE ', 2, 850, 1700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0011', 93, N'EMLI SAUCE ', 4, 250, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0012', 419, N'surf ', 3, 110, 330, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0013', 104, N'FRENCH MUSTARD GLN ', 1, 3500, 3500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0014', 23, N'ALMOND ', 1, 1400, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0015', 294, N'SUJI ', 2, 80, 160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (86, N'0016', 277, N'PERMIZAN CHEESE ', 0.74, 3600, 2664, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (87, N'0001', 143, N'ICE CUBE ', 14, 300, 4200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (87, N'0002', 327, N'VANILA HICO ICE CREAM ', 2, 1895, 3790, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0001', 226, N'ICE BERG ', 3, 380, 1140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0002', 209, N'BROCOLI ', 2, 700, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0003', 184, N'TOMATO ', 8, 35, 280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0004', 180, N'POTATO STAFF ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0005', 176, N'ONION STAFF ', 12, 35, 420, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0006', 203, N'CARRIAT STAFF ', 5, 70, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0007', 220, N'GINGER ', 1.5, 440, 660, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0008', 219, N'GARLIC  ', 2, 160, 320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0009', 170, N'LEMON FRESH ', 3, 190, 570, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0010', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0011', 178, N'FRESH CORIANDER STAFF ', 3, 20, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0012', 213, N'CUCMBER ', 2, 55, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0013', 222, N'GREEN CAPSICUM ', 5, 100, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0014', 185, N'GREEN CHILI STAFF ', 1, 80, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0015', 216, N'FRESH BEANS ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0016', 196, N'ZAUCQNI ', 3, 120, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0017', 223, N'GREEN ONION ', 0.5, 280, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0018', 214, N'EGG PLANET ', 1, 80, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0019', 175, N'MULTI CAPSICUM ', 5, 750, 3750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0020', 195, N'THAI BIRD CHILLI ', 4, 450, 1800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0021', 187, N'PARSELY ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0022', 192, N'ROCKET LEAVE ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0023', 188, N'PEACH FRESH ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (88, N'0024', 208, N'BANANA ', 12, 15, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0001', 345, N'RED KIDNEY BEANS ', 12, 160, 1920, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0002', 92, N'PENNE PASTA ', 6, 160, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0003', 182, N'VERMICELLI ', 6, 30, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0004', 286, N'LIGHT SOYA SAUCE  ', 1, 2500, 2500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0005', 235, N'WHITE VINEGAR (SHEZAN) ', 1, 300, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0006', 47, N'BUTTER MUSHROOMS  ', 6, 820, 4920, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0007', 275, N'MOZELA CHEESE ADAMS ', 2, 2150, 4300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0008', 69, N'COOKING OIL 16LTR ', 2, 4500, 9000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0009', 250, N'DAIRY MILK ', 36, 104.16, 3749.7599999999998, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0010', 301, N'SWEET CORN LARGE  ', 1, 700, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0011', 68, N'OLIVE OIL EXTRA  ', 1, 2600, 2600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0012', 198, N'BEEF PUPRONI ', 12, 280, 3360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0013', 343, N'RED CHERRY ', 0.5, 650, 325, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (89, N'0014', 366, N'STRAWBERRY FILLING  ', 6, 920, 5520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (90, N'0001', 251, N'ROTTI ', 445, 7, 3115, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (90, N'0002', 97, N'PIZZA FLOUR  25KG ', 1, 8280, 8280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (91, N'0001', 117, N'CHICKEN WHOLE  ', 16.8, 340, 5712, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (91, N'0002', 116, N'CHICKEN THAI ', 9.86, 554.47, 5467.0742, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (91, N'0003', 200, N'CHICKEN BREAST FILLET ', 80.74, 554.47, 44767.9078, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (92, N'0001', 137, N'PRAWN 8/12 ', 20, 1350, 27000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (92, N'0002', 136, N'PRAWN 21/25 ', 20, 700, 14000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (93, N'0001', 237, N'HALLUMI CHEESE ', 2, 450, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (94, N'0001', 152, N'KETCHUP 4KG PKT ', 16, 1045.25, 16724, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (94, N'0002', 161, N'MAYONIES BEST FOOD ', 12, 1924.91, 23098.920000000002, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (94, N'0003', 57, N'CHICKEN POWDER ', 12, 779.25, 9351, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (95, N'0001', 265, N'COOKING CREAM ', 60, 530, 31800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0001', 226, N'ICE BERG ', 3, 420, 1260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0002', 209, N'BROCOLI ', 1, 650, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0003', 183, N'TOMATO STAFF ', 3, 40, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0004', 180, N'POTATO STAFF ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0005', 203, N'CARRIAT STAFF ', 5, 70, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0006', 219, N'GARLIC  ', 2, 150, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0007', 194, N'SPINACH KITCHEN ', 2, 40, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0008', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0009', 213, N'CUCMBER ', 2, 55, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0010', 196, N'ZAUCQNI ', 2, 120, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0011', 223, N'GREEN ONION ', 0.5, 280, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0012', 170, N'LEMON FRESH ', 0, 190, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0013', 453, N'beet root ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0014', 456, N'MANGO FRESH ', 3, 150, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0015', 205, N'AVACADO ', 0.5, 2200, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0016', 192, N'ROCKET LEAVE ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0017', 187, N'PARSELY ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0018', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0019', 450, N'graps ', 1, 300, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0020', 188, N'PEACH FRESH ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0021', 208, N'BANANA ', 12, 15, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (96, N'0022', 190, N'RED APPLE ', 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (97, N'0001', 375, N'HAIR NET CAP ', 5, 250, 1250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (97, N'0002', 419, N'surf ', 6, 120, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (97, N'0003', 394, N'MAX LIQUID ', 9, 170, 1530, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (97, N'0004', 379, N'JALI ', 24, 8, 192, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (97, N'0005', 373, N'GLOVE PLASTIC ', 10, 40, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (97, N'0006', 412, N'F2 BOX ', 200, 11, 2200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (97, N'0007', 413, N'F3 BOX ', 100, 16, 1600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (97, N'0008', 424, N'TISSUE JUMBO ROLL ', 12, 160, 1920, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (97, N'0009', 372, N'GLINT ', 6, 130, 780, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (98, N'0001', 275, N'MOZELA CHEESE ADAMS ', 2, 2150, 4300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (98, N'0002', 346, N'RED VINE VINGAR ', 1, 350, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (98, N'0003', 37, N'BLACK OLIVE ', 3, 850, 2550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (98, N'0004', 132, N'HORS RADISH SAUCE ', 1, 850, 850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (98, N'0005', 31, N'BALSAMIC VINEGAR BLACK ', 1, 580, 580, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (98, N'0006', 146, N'JALAPENO Can ', 2, 650, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (98, N'0007', 36, N'BLACK MUSHROOM ', 0.5, 3000, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (98, N'0008', 427, N'TOWEL ', 5, 200, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (99, N'0001', 327, N'VANILA HICO ICE CREAM ', 2, 1895, 3790, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (100, N'0001', 288, N'TOBIKKO ORANGE ', 1, 4200, 4200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (100, N'0002', 153, N'CRAB STICK  ', 1, 2400, 2400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (100, N'0003', 362, N'SIRACHA SAUCE ', 24, 590, 14160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (100, N'0004', 65, N'COCONUT MILK TIN ', 48, 235, 11280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (100, N'0005', 43, N'BREAD CRUMBS ', 12, 380, 4560, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (100, N'0006', 199, N'BEEF ROD ', 59.9, 1450, 86855, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (100, N'0007', 357, N'PLAIN BREAD ', 8, 109, 872, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (100, N'0008', 44, N'BURGAR BUN ', 10, 62, 620, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (101, N'0001', 315, N'YELLOW BUTTER ', 27, 430, 11610, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0001', 209, N'BROCOLI ', 2, 650, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0002', 183, N'TOMATO STAFF ', 15, 40, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0003', 180, N'POTATO STAFF ', 25, 55, 1375, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0004', 204, N'CARRIAT KITCHEN ', 10, 70, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0005', 219, N'GARLIC  ', 1, 150, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0006', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0007', 186, N'GREEN CHILI KITCHEN ', 0.5, 80, 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0008', 196, N'ZAUCQNI ', 5, 120, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0009', 223, N'GREEN ONION ', 0.5, 280, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0010', 210, N'CABBAGE ', 5, 180, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0011', 177, N'ONION KITCHEN ', 5, 40, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0012', 170, N'LEMON FRESH ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0013', 175, N'MULTI CAPSICUM ', 5, 750, 3750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0014', 187, N'PARSELY ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0015', 221, N'GLANGAL ', 0.5, 3800, 1900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0016', 456, N'MANGO FRESH ', 2, 165, 330, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (102, N'0017', 455, N'APPLE GREEN IMP ', 0.6, 700, 420, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (103, N'0001', 271, N'FRESH MOZELA ', 5, 1259, 6295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (104, N'0001', 181, N'POTATOM KITCHEN ', 25, 55, 1375, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (104, N'0002', 207, N'BABY SPINACH ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0001', 226, N'ICE BERG ', 7, 380, 2660, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0002', 209, N'BROCOLI ', 3, 650, 1950, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0003', 184, N'TOMATO ', 10, 40, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0004', 180, N'POTATO STAFF ', 30, 55, 1650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0005', 177, N'ONION KITCHEN ', 13, 40, 520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0006', 204, N'CARRIAT KITCHEN ', 20, 70, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0007', 219, N'GARLIC  ', 3, 160, 480, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0008', 194, N'SPINACH KITCHEN ', 2, 40, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0009', 178, N'FRESH CORIANDER STAFF ', 1, 20, 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0010', 213, N'CUCMBER ', 2, 55, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0011', 222, N'GREEN CAPSICUM ', 10, 90, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0012', 216, N'FRESH BEANS ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0013', 196, N'ZAUCQNI ', 5, 120, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0014', 223, N'GREEN ONION ', 1, 240, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0015', 220, N'GINGER ', 1, 440, 440, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0016', 175, N'MULTI CAPSICUM ', 5, 750, 3750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0017', 205, N'AVACADO ', 0.5, 2200, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0018', 212, N'CHERRY TOMATO ', 3, 350, 1050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0019', 192, N'ROCKET LEAVE ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0020', 187, N'PARSELY ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0021', 211, N'CELERY ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0022', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0023', 217, N'FRESH BLUE BERRY ', 1, 1000, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0024', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0025', 456, N'MANGO FRESH ', 3, 160, 480, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0026', 457, N'fresh cherry ', 1, 310, 310, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0027', 450, N'graps ', 1, 450, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (105, N'0028', 206, N'BABY POTATO ', 5, 50, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0001', 170, N'LEMON FRESH ', 3, 200, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0002', 174, N'MINT LEAVE ', 25, 10, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0003', 208, N'BANANA ', 24, 15, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0004', 456, N'MANGO FRESH ', 4, 150, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0005', 188, N'PEACH FRESH ', 3, 180, 540, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0006', 190, N'RED APPLE ', 1, 140, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0007', 221, N'GLANGAL ', 0.5, 4000, 2000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0008', 218, N'FRESH MUSHROOMS ', 10, 220, 2200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0009', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0010', 211, N'CELERY ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0011', 187, N'PARSELY ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0012', 212, N'CHERRY TOMATO ', 2, 350, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0013', 175, N'MULTI CAPSICUM ', 2, 750, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0014', 223, N'GREEN ONION ', 1, 220, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0015', 196, N'ZAUCQNI ', 3, 120, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0016', 216, N'FRESH BEANS ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0017', 186, N'GREEN CHILI KITCHEN ', 0.5, 60, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0018', 222, N'GREEN CAPSICUM ', 5, 110, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0019', 213, N'CUCMBER ', 2, 55, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0020', 194, N'SPINACH KITCHEN ', 1, 40, 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0021', 219, N'GARLIC  ', 2, 150, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0022', 204, N'CARRIAT KITCHEN ', 7, 60, 420, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0023', 180, N'POTATO STAFF ', 15, 55, 825, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0024', 183, N'TOMATO STAFF ', 10, 35, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0025', 209, N'BROCOLI ', 2, 550, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (106, N'0026', 226, N'ICE BERG ', 4, 320, 1280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0001', 226, N'ICE BERG ', 6.2, 300, 1860, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0002', 209, N'BROCOLI ', 2, 500, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0003', 184, N'TOMATO ', 5, 35, 175, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0004', 180, N'POTATO STAFF ', 20, 55, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0005', 177, N'ONION KITCHEN ', 8, 35, 280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0006', 204, N'CARRIAT KITCHEN ', 10, 50, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0007', 210, N'CABBAGE ', 1, 30, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0008', 170, N'LEMON FRESH ', 1, 250, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0009', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0010', 213, N'CUCMBER ', 3, 50, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0011', 222, N'GREEN CAPSICUM ', 4, 100, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0012', 185, N'GREEN CHILI STAFF ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0013', 196, N'ZAUCQNI ', 9, 120, 1080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0014', 223, N'GREEN ONION ', 0.5, 300, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0015', 175, N'MULTI CAPSICUM ', 3, 750, 2250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0016', 188, N'PEACH FRESH ', 2, 180, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0017', 212, N'CHERRY TOMATO ', 2, 350, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0018', 195, N'THAI BIRD CHILLI ', 3, 450, 1350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0019', 192, N'ROCKET LEAVE ', 0.75, 1000, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0020', 187, N'PARSELY ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0021', 215, N'FRESH BASIL ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0022', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0023', 456, N'MANGO FRESH ', 1, 150, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0024', 454, N'RED CABBAGE ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (107, N'0025', 178, N'FRESH CORIANDER STAFF ', 0, 20, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0001', 209, N'BROCOLI ', 3, 500, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0002', 184, N'TOMATO ', 8, 35, 280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0003', 180, N'POTATO STAFF ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0004', 176, N'ONION STAFF ', 10, 35, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0005', 204, N'CARRIAT KITCHEN ', 10, 50, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0006', 219, N'GARLIC  ', 1, 160, 160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0007', 194, N'SPINACH KITCHEN ', 2, 40, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0008', 170, N'LEMON FRESH ', 4, 250, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0009', 213, N'CUCMBER ', 3, 50, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0010', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0011', 222, N'GREEN CAPSICUM ', 7, 110, 770, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0012', 186, N'GREEN CHILI KITCHEN ', 0.5, 60, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0013', 216, N'FRESH BEANS ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0014', 223, N'GREEN ONION ', 1, 420, 420, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0015', 189, N'PUMPKIN ', 6, 80, 480, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0016', 453, N'beet root ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0017', 175, N'MULTI CAPSICUM ', 5, 750, 3750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0018', 187, N'PARSELY ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0019', 169, N'LEEK ', 1, 400, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0020', 221, N'GLANGAL ', 0.5, 3800, 1900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0021', 173, N'FRESH LIME LEAVES ', 0.25, 4600, 1150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0022', 208, N'BANANA ', 12, 15, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0023', 456, N'MANGO FRESH ', 1, 150, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0024', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (108, N'0025', 190, N'RED APPLE ', 1, 250, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (109, N'0001', 181, N'POTATOM KITCHEN ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (109, N'0002', 177, N'ONION KITCHEN ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (109, N'0003', 178, N'FRESH CORIANDER STAFF ', 3, 20, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (109, N'0004', 213, N'CUCMBER ', 2, 60, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (109, N'0005', 210, N'CABBAGE ', 1, 50, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (109, N'0006', 450, N'graps ', 3, 280, 840, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (109, N'0007', 205, N'AVACADO ', 0.8, 2100, 1680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (109, N'0008', 187, N'PARSELY ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (110, N'0001', 218, N'FRESH MUSHROOMS ', 20, 220, 4400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (110, N'0002', 184, N'TOMATO ', 5, 30, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (110, N'0003', 234, N'PHILDPHIA CHEESE ', 1, 6200, 6200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (110, N'0004', 458, N'pear imp ', 2.2, 650, 1430.0000000000002, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0001', 209, N'BROCOLI ', 3, 480, 1440, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0002', 184, N'TOMATO ', 12, 25, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0003', 180, N'POTATO STAFF ', 7, 55, 385, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0004', 176, N'ONION STAFF ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0005', 203, N'CARRIAT STAFF ', 5, 50, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0006', 219, N'GARLIC  ', 2, 140, 280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0007', 194, N'SPINACH KITCHEN ', 3, 40, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0008', 170, N'LEMON FRESH ', 4, 200, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0009', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0010', 213, N'CUCMBER ', 3, 50, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0011', 222, N'GREEN CAPSICUM ', 6, 130, 780, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0012', 196, N'ZAUCQNI ', 5, 70, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0013', 223, N'GREEN ONION ', 2, 250, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0014', 453, N'beet root ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0015', 175, N'MULTI CAPSICUM ', 5, 750, 3750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0016', 187, N'PARSELY ', 0.3, 800, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0017', 169, N'LEEK ', 1, 400, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0018', 211, N'CELERY ', 1, 400, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0019', 456, N'MANGO FRESH ', 1, 160, 160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0020', 188, N'PEACH FRESH ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (111, N'0021', 191, N'GREEN APPLE ', 1, 130, 130, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0001', 226, N'ICE BERG ', 3, 250, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0002', 209, N'BROCOLI ', 1, 550, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0003', 184, N'TOMATO ', 5, 25, 125, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0004', 180, N'POTATO STAFF ', 14, 55, 770, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0005', 176, N'ONION STAFF ', 9, 35, 315, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0006', 203, N'CARRIAT STAFF ', 5, 50, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0007', 210, N'CABBAGE ', 1, 30, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0008', 220, N'GINGER ', 1, 360, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0009', 219, N'GARLIC  ', 1, 140, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0010', 170, N'LEMON FRESH ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0011', 174, N'MINT LEAVE ', 5, 10, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0012', 178, N'FRESH CORIANDER STAFF ', 2, 20, 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0013', 213, N'CUCMBER ', 2, 50, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0014', 222, N'GREEN CAPSICUM ', 5, 130, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0015', 216, N'FRESH BEANS ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0016', 196, N'ZAUCQNI ', 2, 70, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0017', 453, N'beet root ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0018', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (112, N'0019', 208, N'BANANA ', 12, 15, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0001', 180, N'POTATO STAFF ', 5, 55, 275, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0002', 176, N'ONION STAFF ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0003', 220, N'GINGER ', 0.5, 380, 190, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0004', 219, N'GARLIC  ', 3, 140, 420, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0005', 170, N'LEMON FRESH ', 1.5, 180, 270, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0006', 174, N'MINT LEAVE ', 5, 10, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0007', 178, N'FRESH CORIANDER STAFF ', 2, 20, 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0008', 222, N'GREEN CAPSICUM ', 5, 130, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0009', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0010', 194, N'SPINACH KITCHEN ', 2, 40, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0011', 186, N'GREEN CHILI KITCHEN ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0012', 189, N'PUMPKIN ', 15, 80, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0013', 223, N'GREEN ONION ', 0.5, 260, 130, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0014', 175, N'MULTI CAPSICUM ', 2, 750, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0015', 192, N'ROCKET LEAVE ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0016', 215, N'FRESH BASIL ', 0.3, 800, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0017', 188, N'PEACH FRESH ', 2, 180, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0018', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (113, N'0019', 459, N'plum ', 3, 300, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0001', 180, N'POTATO STAFF ', 5, 55, 275, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0002', 176, N'ONION STAFF ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0003', 170, N'LEMON FRESH ', 2, 250, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0004', 174, N'MINT LEAVE ', 5, 10, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0005', 186, N'GREEN CHILI KITCHEN ', 0.5, 60, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0006', 226, N'ICE BERG ', 2, 260, 520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0007', 209, N'BROCOLI ', 1, 500, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0008', 204, N'CARRIAT KITCHEN ', 3, 50, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0009', 216, N'FRESH BEANS ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0010', 196, N'ZAUCQNI ', 3, 70, 210, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0011', 214, N'EGG PLANET ', 1, 70, 70, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0012', 453, N'beet root ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0013', 212, N'CHERRY TOMATO ', 2, 350, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0014', 218, N'FRESH MUSHROOMS ', 5, 220, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0015', 217, N'FRESH BLUE BERRY ', 1, 1000, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0016', 208, N'BANANA ', 12, 15, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (114, N'0017', 456, N'MANGO FRESH ', 1, 130, 130, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0001', 251, N'ROTTI ', 230, 7, 1610, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0002', 437, N'CLING FILM LARGE ', 2, 680, 1360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0003', 36, N'BLACK MUSHROOM ', 1, 2950, 2950, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0004', 443, N'CHICKS PEAS ', 6, 160, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0005', 363, N'SODA WATER ', 12, 65, 780, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0006', 141, N'HOT SAUCE ', 1, 550, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0007', 68, N'OLIVE OIL EXTRA  ', 1, 2400, 2400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0008', 308, N'TOMATO PASTE ', 1, 280, 280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0009', 355, N'SALT ', 24, 28, 672, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0010', 356, N'SAMBALOELEK SAUCE ', 6, 420, 2520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0011', 67, N'NUTELLA CHOCOLATE ', 1, 650, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0012', 111, N'CHICKEN PEPPERONI  ', 2, 210, 420, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0013', 69, N'COOKING OIL 16LTR ', 1, 4300, 4300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0014', 332, N'PINE APPLE JUICE ', 4, 230, 920, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0015', 300, N'SWEET CHILI SAUCE 800ML ', 4, 720, 2880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0016', 273, N'MILK PAK CREAM ', 24, 120, 2880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0017', 264, N'CHEDAR CHEESE ', 2, 1600, 3200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0018', 275, N'MOZELA CHEESE ADAMS ', 4, 2100, 8400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0019', 344, N'RED JALAPINO ', 1, 340, 340, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0020', 294, N'SUJI ', 2, 90, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0021', 263, N'EMLI WHOLE  ', 2, 300, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0022', 224, N'WALNUTS ', 1, 1550, 1550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0023', 93, N'EMLI SAUCE ', 6, 280, 1680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (115, N'0024', 47, N'BUTTER MUSHROOMS  ', 6, 950, 5700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (116, N'0001', 445, N'LPG GAS ', 7, 6289.6, 44027.200000000004, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (117, N'0001', 391, N'FOAM ', 48, 15, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (117, N'0002', 409, N'BENDING STRAW WHITE ', 20, 90, 1800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (118, N'0001', 460, N'RICE VINEGAR IMP. JAPANIES LARGE GLN ', 1, 25000, 25000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0001', 170, N'LEMON FRESH ', 4, 225, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0002', 174, N'MINT LEAVE ', 15, 10, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0003', 456, N'MANGO FRESH ', 2, 160, 320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0004', 183, N'TOMATO STAFF ', 7, 25, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0005', 176, N'ONION STAFF ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0006', 203, N'CARRIAT STAFF ', 2, 45, 90, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0007', 194, N'SPINACH KITCHEN ', 2, 40, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0008', 216, N'FRESH BEANS ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0009', 196, N'ZAUCQNI ', 2, 70, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0010', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0011', 206, N'BABY POTATO ', 5, 60, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0012', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0013', 190, N'RED APPLE ', 1, 130, 130, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (119, N'0014', 459, N'plum ', 1.5, 300, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0001', 226, N'ICE BERG ', 2, 260, 520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0002', 209, N'BROCOLI ', 3, 500, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0003', 183, N'TOMATO STAFF ', 5, 30, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0004', 180, N'POTATO STAFF ', 20, 55, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0005', 176, N'ONION STAFF ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0006', 204, N'CARRIAT KITCHEN ', 10, 50, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0007', 219, N'GARLIC  ', 1, 220, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0008', 194, N'SPINACH KITCHEN ', 15, 40, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0009', 170, N'LEMON FRESH ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0010', 213, N'CUCMBER ', 3, 50, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0011', 222, N'GREEN CAPSICUM ', 2, 110, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0012', 186, N'GREEN CHILI KITCHEN ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0013', 216, N'FRESH BEANS ', 1, 200, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0014', 196, N'ZAUCQNI ', 4, 80, 320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0015', 223, N'GREEN ONION ', 0.5, 220, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0016', 453, N'beet root ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0017', 175, N'MULTI CAPSICUM ', 3, 750, 2250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0018', 205, N'AVACADO ', 0.45, 2200, 990, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0019', 187, N'PARSELY ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0020', 169, N'LEEK ', 1, 400, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0021', 211, N'CELERY ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0022', 457, N'fresh cherry ', 0, 310, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0023', 188, N'PEACH FRESH ', 1, 180, 180, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (120, N'0024', 174, N'MINT LEAVE ', 8, 10, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0001', 226, N'ICE BERG ', 4, 260, 1040, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0002', 209, N'BROCOLI ', 1, 550, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0003', 183, N'TOMATO STAFF ', 2, 25, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0004', 176, N'ONION STAFF ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0005', 203, N'CARRIAT STAFF ', 3, 50, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0006', 194, N'SPINACH KITCHEN ', 2, 40, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0007', 170, N'LEMON FRESH ', 3, 260, 780, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0008', 174, N'MINT LEAVE ', 5, 10, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0009', 213, N'CUCMBER ', 2, 50, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0010', 186, N'GREEN CHILI KITCHEN ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0011', 216, N'FRESH BEANS ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0012', 196, N'ZAUCQNI ', 2, 70, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0013', 223, N'GREEN ONION ', 0.5, 220, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0014', 189, N'PUMPKIN ', 7, 80, 560, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0015', 453, N'beet root ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0016', 220, N'GINGER ', 0.5, 380, 190, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0017', 212, N'CHERRY TOMATO ', 3, 350, 1050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0018', 187, N'PARSELY ', 0.3, 800, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0019', 211, N'CELERY ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0020', 188, N'PEACH FRESH ', 2, 180, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0021', 459, N'plum ', 1, 300, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0022', 456, N'MANGO FRESH ', 3, 180, 540, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (121, N'0023', 180, N'POTATO STAFF ', 16, 55, 880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (122, N'0001', 183, N'TOMATO STAFF ', 5, 25, 125, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (122, N'0002', 180, N'POTATO STAFF ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (122, N'0003', 177, N'ONION KITCHEN ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (122, N'0004', 194, N'SPINACH KITCHEN ', 25, 40, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (122, N'0005', 170, N'LEMON FRESH ', 3, 280, 840, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (122, N'0006', 186, N'GREEN CHILI KITCHEN ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (122, N'0007', 174, N'MINT LEAVE ', 14, 10, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (122, N'0008', 459, N'plum ', 2, 350, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (122, N'0009', 188, N'PEACH FRESH ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0001', 226, N'ICE BERG ', 2, 260, 520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0002', 209, N'BROCOLI ', 1, 550, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0003', 180, N'POTATO STAFF ', 15, 55, 825, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0004', 203, N'CARRIAT STAFF ', 7, 50, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0005', 220, N'GINGER ', 1, 370, 370, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0006', 219, N'GARLIC  ', 1, 140, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0007', 170, N'LEMON FRESH ', 3, 280, 840, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0008', 174, N'MINT LEAVE ', 5, 10, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0009', 178, N'FRESH CORIANDER STAFF ', 2, 20, 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0010', 213, N'CUCMBER ', 3, 50, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0011', 222, N'GREEN CAPSICUM ', 4, 120, 480, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0012', 216, N'FRESH BEANS ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0013', 196, N'ZAUCQNI ', 3, 70, 210, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0014', 192, N'ROCKET LEAVE ', 1, 1000, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0015', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0016', 208, N'BANANA ', 12, 15, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0017', 188, N'PEACH FRESH ', 2, 180, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (123, N'0018', 459, N'plum ', 1, 300, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0001', 226, N'ICE BERG ', 3, 380, 1140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0002', 180, N'POTATO STAFF ', 30, 55, 1650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0003', 176, N'ONION STAFF ', 5, 40, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0004', 204, N'CARRIAT KITCHEN ', 3, 70, 210, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0005', 219, N'GARLIC  ', 2, 150, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0006', 174, N'MINT LEAVE ', 15, 10, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0007', 222, N'GREEN CAPSICUM ', 3, 85, 255, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0008', 186, N'GREEN CHILI KITCHEN ', 1, 80, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0009', 216, N'FRESH BEANS ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0010', 196, N'ZAUCQNI ', 2, 120, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0011', 223, N'GREEN ONION ', 1, 260, 260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0012', 214, N'EGG PLANET ', 1, 70, 70, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0013', 170, N'LEMON FRESH ', 4, 170, 680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0014', 183, N'TOMATO STAFF ', 5, 45, 225, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0015', 175, N'MULTI CAPSICUM ', 4, 750, 3000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0016', 195, N'THAI BIRD CHILLI ', 5, 450, 2250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0017', 192, N'ROCKET LEAVE ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0018', 187, N'PARSELY ', 0.3, 1000, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0019', 171, N'LEMON GRASS ', 1, 2200, 2200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0020', 173, N'FRESH LIME LEAVES ', 0.5, 4600, 2300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0021', 207, N'BABY SPINACH ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0022', 456, N'MANGO FRESH ', 2, 150, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0023', 188, N'PEACH FRESH ', 2, 180, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (124, N'0024', 458, N'pear imp ', 1, 650, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0001', 225, N'WHEAT BISCUITS  ', 6, 60, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0002', 395, N'GARBAGE BAG  ', 25, 164, 4100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0003', 79, N'PEACH HALVES  ', 2, 250, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0004', 198, N'BEEF PUPRONI ', 6, 300, 1800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0005', 69, N'COOKING OIL 16LTR ', 3, 4500, 13500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0006', 332, N'PINE APPLE JUICE ', 6, 230, 1380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0007', 330, N'PEACH JUICE ', 2, 190, 380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0008', 333, N'MANGO JUICE ', 2, 190, 380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0009', 104, N'FRENCH MUSTARD GLN ', 1, 3800, 3800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0010', 66, N'COCONUT POWDER SANTAN ', 3, 450, 1350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0011', 60, N'CHILLI SAUCE ', 3, 180, 540, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0012', 300, N'SWEET CHILI SAUCE 800ML ', 3, 480, 1440, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0013', 366, N'STRAWBERRY FILLING  ', 3, 920, 2760, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0014', 291, N'STRAWBERRY TOPPING FILLING  LOCAL ', 1, 580, 580, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0015', 246, N'YEAST ', 1, 450, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0016', 47, N'BUTTER MUSHROOMS  ', 3, 850, 2550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0017', 232, N'WHITE PEPPER POWDER ', 1, 1600, 1600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0018', 254, N'ZERA POWDER  ', 0.5, 600, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0019', 362, N'SIRACHA SAUCE ', 6, 700, 4200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0020', 273, N'MILK PAK CREAM ', 24, 119, 2856, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0021', 264, N'CHEDAR CHEESE ', 1, 1600, 1600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (125, N'0022', 461, N'EKA POWDER ', 1, 480, 480, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0001', 122, N'TURKEY BACON  ', 15, 1250, 18750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0002', 44, N'BURGAR BUN ', 10, 62, 620, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0003', 251, N'ROTTI ', 270, 7, 1890, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0004', 307, N'TABASCO SAUCE  ', 2, 360, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0005', 49, N'RISOTO RICE ', 1, 350, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0006', 189, N'PUMPKIN ', 2, 80, 160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0007', 277, N'PERMIZAN CHEESE ', 1, 3700, 3700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0008', 231, N'YOUGRT CUP ', 1, 130, 130, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0009', 163, N'WHOLE SALMON ', 0, 3600, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0010', 163, N'WHOLE SALMON ', 0, 3600, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0011', 192, N'ROCKET LEAVE ', 0.5, 1200, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0012', 215, N'FRESH BASIL ', 0.5, 1200, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0013', 268, N'EGGS ', 360, 12, 4320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (126, N'0014', 143, N'ICE CUBE ', 5, 300, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (127, N'0001', 445, N'LPG GAS ', 5, 6312, 31560, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (128, N'0001', 325, N'COKE CAN ', 240, 39, 9360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (128, N'0002', 339, N'ZERO COKE CAN ', 120, 39, 4680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (128, N'0003', 340, N'ZERO SPRITE CAN ', 120, 39, 4680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (128, N'0004', 334, N'SPRITE 1.5LTR ', 42, 100, 4200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (128, N'0005', 335, N'SPRITE CAN ', 180, 39, 7020, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (128, N'0006', 338, N'WATER LARGE ', 120, 50, 6000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (128, N'0007', 337, N'WATER SMALL ', 120, 27, 3240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (129, N'0001', 315, N'YELLOW BUTTER ', 50, 430, 21500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0001', 226, N'ICE BERG ', 10, 380, 3800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0002', 209, N'BROCOLI ', 6, 650, 3900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0003', 180, N'POTATO STAFF ', 30, 55, 1650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0004', 176, N'ONION STAFF ', 25, 40, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0005', 203, N'CARRIAT STAFF ', 20, 70, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0006', 219, N'GARLIC  ', 2, 160, 320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0007', 193, N'SPINACH STAFF ', 2, 40, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0008', 170, N'LEMON FRESH ', 5, 160, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0009', 174, N'MINT LEAVE ', 15, 10, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0010', 178, N'FRESH CORIANDER STAFF ', 3, 20, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0011', 213, N'CUCMBER ', 3, 55, 165, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0012', 222, N'GREEN CAPSICUM ', 15, 85, 1275, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0013', 186, N'GREEN CHILI KITCHEN ', 1, 80, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0014', 216, N'FRESH BEANS ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0015', 196, N'ZAUCQNI ', 10, 120, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0016', 223, N'GREEN ONION ', 1, 220, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0017', 210, N'CABBAGE ', 6, 65, 390, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0018', 454, N'RED CABBAGE ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0019', 214, N'EGG PLANET ', 1, 70, 70, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0020', 453, N'beet root ', 2, 60, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0021', 175, N'MULTI CAPSICUM ', 12, 750, 9000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0022', 212, N'CHERRY TOMATO ', 5, 350, 1750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0023', 192, N'ROCKET LEAVE ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0024', 187, N'PARSELY ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0025', 211, N'CELERY ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0026', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0027', 218, N'FRESH MUSHROOMS ', 5, 220, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0028', 456, N'MANGO FRESH ', 6, 150, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0029', 188, N'PEACH FRESH ', 6, 180, 1080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0030', 208, N'BANANA ', 16, 15, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0031', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0032', 459, N'plum ', 1, 300, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0033', 450, N'graps ', 5, 200, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0034', 220, N'GINGER ', 0.5, 420, 210, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0035', 184, N'TOMATO ', 25, 50, 1250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (130, N'0036', 190, N'RED APPLE ', 1, 140, 140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0001', 297, N'SUN DRIED TOMATO LOCAL SMALL ', 12, 550, 6600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0002', 274, N'MILK PAK ', 12, 148, 1776, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0003', 273, N'MILK PAK CREAM ', 24, 115, 2760, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0004', 250, N'DAIRY MILK ', 12, 105, 1260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0005', 277, N'PERMIZAN CHEESE ', 1, 3350, 3350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0006', 47, N'BUTTER MUSHROOMS  ', 5, 830, 4150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0007', 146, N'JALAPENO Can ', 2, 640, 1280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0008', 69, N'COOKING OIL 16LTR ', 1, 4300, 4300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0009', 155, N'KISHMISH ', 1, 500, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0010', 275, N'MOZELA CHEESE ADAMS ', 2, 2100, 4200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0011', 104, N'FRENCH MUSTARD GLN ', 1, 3200, 3200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0012', 462, N'VIZYAN CHOCLATE SYRUP ', 1, 650, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0013', 75, N'OYSTER SAUCE MAMA SITA  ', 1, 3850, 3850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0014', 332, N'PINE APPLE JUICE ', 6, 220, 1320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0015', 60, N'CHILLI SAUCE ', 2, 175, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0016', 300, N'SWEET CHILI SAUCE 800ML ', 6, 720, 4320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0017', 366, N'STRAWBERRY FILLING  ', 3, 900, 2700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0018', 41, N'BLUE BERRY FILLING ', 1, 860, 860, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0019', 37, N'BLACK OLIVE ', 1, 830, 830, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0020', 230, N'YELLOW CHEESE SLICE ', 2, 920, 1840, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0021', 58, N'CHILLI PASTE WITH SOYA BEEN ', 1, 520, 520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0022', 78, N'CRUSHED CHILLI  ', 1, 600, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0023', 112, N'GHEE FOR STAFF ', 10, 280, 2800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0024', 141, N'HOT SAUCE ', 2, 520, 1040, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0025', 269, N'EVERY DAY MILK POWDER ', 1, 880, 880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0026', 302, N'TAHINI PASTE  ', 1, 680, 680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (131, N'0027', 154, N'KIKOMAN SOYA SAUCE ', 1, 850, 850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0001', 357, N'PLAIN BREAD ', 8, 109, 872, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0002', 44, N'BURGAR BUN ', 10, 62, 620, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0003', 91, N'EDAMMAME ', 1, 950, 950, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0004', 351, N'RICE VINEGAR IMP90 ', 6, 1500, 9000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0005', 126, N'SMOKE SALMON  ', 1, 1650, 1650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0006', 150, N'JAPANIES TEMPORA FLOUR ', 6, 950, 5700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0007', 361, N'SHUSH SHEET JAPANESES  ', 1, 4500, 4500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0008', 463, N'Japanese  wasabi powder ', 1, 3000, 3000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0009', 122, N'TURKEY BACON  ', 10, 1250, 12500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0010', 143, N'ICE CUBE ', 3, 300, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0011', 251, N'ROTTI ', 300, 7, 2100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (132, N'0012', 199, N'BEEF ROD ', 11.2, 1450, 16239.999999999998, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0001', 209, N'BROCOLI ', 1, 650, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0002', 170, N'LEMON FRESH ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0003', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0004', 196, N'ZAUCQNI ', 2, 120, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0005', 223, N'GREEN ONION ', 0.5, 240, 120, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0006', 175, N'MULTI CAPSICUM ', 2, 750, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0007', 192, N'ROCKET LEAVE ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0008', 215, N'FRESH BASIL ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0009', 208, N'BANANA ', 12, 15, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0010', 464, N'BEANS SPROUT ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (133, N'0011', 216, N'FRESH BEANS ', 1, 220, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (134, N'0001', 271, N'FRESH MOZELA ', 5, 1259, 6295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (135, N'0001', 265, N'COOKING CREAM ', 120, 530, 63600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (136, N'0001', 117, N'CHICKEN WHOLE  ', 16.8, 345, 5796, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (136, N'0002', 116, N'CHICKEN THAI ', 9.85, 609.37, 6002.2945, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (136, N'0003', 200, N'CHICKEN BREAST FILLET ', 151.91, 609.37, 92569.3967, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (137, N'0001', 143, N'ICE CUBE ', 5, 300, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (137, N'0002', 143, N'ICE CUBE ', 0, 300, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (137, N'0003', 389, N'DISHWASHING LTR ', 60, 60, 3600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (137, N'0004', 336, N'WATER 19LTR ', 5, 260, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0001', 200, N'CHICKEN BREAST FILLET ', 12.5, 720, 9000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0002', 336, N'WATER 19LTR ', 0.5, 260, 130, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0003', 77, N'SPAGHETTI PASTA ', 3, 130, 390, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0004', 443, N'CHICKS PEAS ', 6, 160, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0005', 68, N'OLIVE OIL EXTRA  ', 1, 2450, 2450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0006', 308, N'TOMATO PASTE ', 2, 280, 560, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0007', 346, N'RED VINE VINGAR ', 1, 350, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0008', 433, N'SCOTCH BRIGHT ', 20, 25, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0009', 356, N'SAMBALOELEK SAUCE ', 6, 420, 2520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0010', 325, N'COKE CAN ', 24, 45.8, 1099.1999999999998, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0011', 111, N'CHICKEN PEPPERONI  ', 4, 220, 880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0012', 69, N'COOKING OIL 16LTR ', 2, 4250, 8500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0013', 332, N'PINE APPLE JUICE ', 2, 220, 440, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0014', 104, N'FRENCH MUSTARD GLN ', 1, 3200, 3200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0015', 47, N'BUTTER MUSHROOMS  ', 6, 830, 4980, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0016', 254, N'ZERA POWDER  ', 1, 690, 690, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0017', 264, N'CHEDAR CHEESE ', 1, 1570, 1570, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0018', 275, N'MOZELA CHEESE ADAMS ', 2, 2090, 4180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0019', 263, N'EMLI WHOLE  ', 2, 300, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0020', 156, N'LIME SEASONING POWDER ', 4, 520, 2080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0021', 243, N'WORCESTERSHIRE SAUCE ', 2, 495, 990, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0022', 66, N'COCONUT POWDER SANTAN ', 1, 450, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0023', 297, N'SUN DRIED TOMATO LOCAL SMALL ', 12, 550, 6600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0024', 246, N'YEAST ', 1, 450, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0025', 92, N'PENNE PASTA ', 2, 165, 330, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0026', 235, N'WHITE VINEGAR (SHEZAN) ', 2, 280, 560, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0027', 59, N'CHILLI POWDER ', 1, 600, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0028', 125, N'HALDI POWDER ', 1, 270, 270, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0029', 452, N'BIRYANI MASALA ', 1, 520, 520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0030', 108, N'GARAM MASALA WHOLE ', 1, 800, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0031', 61, N'CHILLI WHOLE ', 1, 880, 880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0032', 437, N'CLING FILM LARGE ', 1, 750, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0033', 276, N'NESTLE YOUGRT ', 2, 186, 372, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0034', 103, N'WHEAT WHOLE  ', 1, 84, 84, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0035', 167, N'NESVITA LOW FAT ', 2, 44, 88, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0036', 278, N'PREMA MILK ', 2, 159, 318, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0037', 182, N'VERMICELLI ', 6, 25, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (138, N'0038', 231, N'YOUGRT CUP ', 2, 122, 244, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0001', 233, N'WHITE QUINWA ', 1, 795, 795, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0002', 443, N'CHICKS PEAS ', 12, 160, 1920, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0003', 433, N'SCOTCH BRIGHT ', 10, 25, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0004', 104, N'FRENCH MUSTARD GLN ', 1, 2850, 2850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0005', 300, N'SWEET CHILI SAUCE 800ML ', 4, 720, 2880, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0006', 232, N'WHITE PEPPER POWDER ', 2, 1450, 2900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0007', 273, N'MILK PAK CREAM ', 48, 120, 5760, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0008', 31, N'BALSAMIC VINEGAR BLACK ', 1, 520, 520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0009', 294, N'SUJI ', 2, 90, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0010', 156, N'LIME SEASONING POWDER ', 3, 490, 1470, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0011', 66, N'COCONUT POWDER SANTAN ', 5, 450, 2250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0012', 23, N'ALMOND ', 1, 1450, 1450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0013', 60, N'CHILLI SAUCE ', 6, 180, 1080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0014', 37, N'BLACK OLIVE ', 2, 950, 1900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0015', 286, N'LIGHT SOYA SAUCE  ', 1, 2850, 2850, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0016', 77, N'SPAGHETTI PASTA ', 6, 180, 1080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0017', 251, N'ROTTI ', 240, 7, 1680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (139, N'0018', 112, N'GHEE FOR STAFF ', 12, 260, 3120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (140, N'0001', 105, N'FRIES ', 16, 1000, 16000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (141, N'0001', 237, N'HALLUMI CHEESE ', 2, 450, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (142, N'0001', 117, N'CHICKEN WHOLE  ', 18.4, 345, 6347.9999999999991, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (142, N'0002', 116, N'CHICKEN THAI ', 9.85, 609.37, 6002.2945, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (142, N'0003', 200, N'CHICKEN BREAST FILLET ', 151.91, 609.37, 92569.3967, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0001', 180, N'POTATO STAFF ', 5, 55, 275, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0002', 170, N'LEMON FRESH ', 2, 200, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0003', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0004', 213, N'CUCMBER ', 1, 55, 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0005', 222, N'GREEN CAPSICUM ', 1, 85, 85, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0006', 186, N'GREEN CHILI KITCHEN ', 0.5, 100, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0007', 196, N'ZAUCQNI ', 1, 120, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0008', 223, N'GREEN ONION ', 0.5, 240, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0009', 175, N'MULTI CAPSICUM ', 2, 750, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0010', 192, N'ROCKET LEAVE ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0011', 217, N'FRESH BLUE BERRY ', 1, 1000, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0012', 208, N'BANANA ', 6, 15, 90, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0013', 457, N'fresh cherry ', 1, 300, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (143, N'0014', 458, N'pear imp ', 1, 650, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0001', 209, N'BROCOLI ', 2, 480, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0002', 184, N'TOMATO ', 7, 35, 245, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0003', 180, N'POTATO STAFF ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0004', 176, N'ONION STAFF ', 5, 35, 175, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0005', 203, N'CARRIAT STAFF ', 5, 55, 275, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0006', 220, N'GINGER ', 1, 400, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0007', 219, N'GARLIC  ', 1, 150, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0008', 194, N'SPINACH KITCHEN ', 1, 40, 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0009', 170, N'LEMON FRESH ', 1, 220, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0010', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0011', 213, N'CUCMBER ', 1, 55, 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0012', 222, N'GREEN CAPSICUM ', 3, 100, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0013', 186, N'GREEN CHILI KITCHEN ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0014', 216, N'FRESH BEANS ', 1, 200, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0015', 196, N'ZAUCQNI ', 5, 120, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0016', 223, N'GREEN ONION ', 0.5, 260, 130, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0017', 214, N'EGG PLANET ', 4, 180, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0018', 453, N'beet root ', 2, 60, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0019', 454, N'RED CABBAGE ', 1, 60, 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0020', 175, N'MULTI CAPSICUM ', 3, 750, 2250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0021', 205, N'AVACADO ', 0.5, 2100, 1050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0022', 192, N'ROCKET LEAVE ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0023', 218, N'FRESH MUSHROOMS ', 5, 650, 3250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0024', 217, N'FRESH BLUE BERRY ', 1, 1000, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0025', 459, N'plum ', 1, 250, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0026', 208, N'BANANA ', 12, 15, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0027', 456, N'MANGO FRESH ', 2, 140, 280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (144, N'0028', 458, N'pear imp ', 1, 650, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (145, N'0001', 278, N'PREMA MILK ', 2, 159, 318, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (145, N'0002', 341, N'LIPTON TEA PKT GUST ', 1, 509, 509, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (145, N'0003', 251, N'ROTTI ', 120, 7, 840, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (146, N'0001', 421, N'TAKE WAY BAG BROWN ', 2000, 30, 60000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0001', 153, N'CRAB STICK  ', 1, 2400, 2400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0002', 288, N'TOBIKKO ORANGE ', 1, 4200, 4200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0003', 282, N'HONDASHI ', 1, 5200, 5200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0004', 283, N'TOGARASHI ', 1, 4200, 4200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0005', 150, N'JAPANIES TEMPORA FLOUR ', 15, 1150, 17250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0006', 449, N'PEACH ICE TEA ', 2, 2808, 5616, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0007', 199, N'BEEF ROD ', 10.5, 1450, 15225, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0008', 251, N'ROTTI ', 370, 7, 2590, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0009', 67, N'NUTELLA CHOCOLATE ', 1, 549, 549, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0010', 190, N'RED APPLE ', 1, 200, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0011', 191, N'GREEN APPLE ', 1, 185, 185, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0012', 169, N'LEEK ', 1, 475, 475, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0013', 92, N'PENNE PASTA ', 3, 179, 537, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0014', 259, N'NUR PUR BUTTER 200G ', 1, 1242, 1242, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0015', 231, N'YOUGRT CUP ', 3, 122, 366, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (147, N'0016', 278, N'PREMA MILK ', 3, 159, 477, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0001', 278, N'PREMA MILK ', 2, 159, 318, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0002', 341, N'LIPTON TEA PKT GUST ', 1, 509, 509, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0003', 357, N'PLAIN BREAD ', 4, 120, 480, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0004', 336, N'WATER 19LTR ', 0.4, 260, 104, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0005', 274, N'MILK PAK ', 15, 150, 2250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0006', 356, N'SAMBALOELEK SAUCE ', 12, 420, 5040, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0007', 297, N'SUN DRIED TOMATO LOCAL SMALL ', 12, 550, 6600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0008', 257, N'STAFF TEA ', 1, 800, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0009', 319, N'MOJITO SYRUP ', 1, 1295, 1295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0010', 318, N'CRANBERRY SYRUP ', 1, 2100, 2100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0011', 192, N'ROCKET LEAVE ', 1, 1200, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0012', 215, N'FRESH BASIL ', 1, 1000, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (148, N'0013', 465, N'cherry syrup ', 2, 1995, 3990, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (149, N'0001', 239, N'CHILLI CHEDAR CHEESE 250G ', 1, 1000, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (149, N'0002', 242, N'GOUDA HERBS CHEESE 250G ', 1, 870, 870, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (149, N'0003', 241, N'WALNUTS CHEESE 250 g ', 1, 640, 640, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (150, N'0001', 199, N'BEEF ROD ', 10.8, 1650, 17820, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0001', 226, N'ICE BERG ', 2, 360, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0002', 209, N'BROCOLI ', 2, 600, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0003', 180, N'POTATO STAFF ', 15, 55, 825, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0004', 203, N'CARRIAT STAFF ', 5, 70, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0005', 220, N'GINGER ', 1, 400, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0006', 219, N'GARLIC  ', 4, 190, 760, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0007', 170, N'LEMON FRESH ', 4, 160, 640, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0008', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0009', 178, N'FRESH CORIANDER STAFF ', 6, 20, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0010', 213, N'CUCMBER ', 2, 55, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0011', 222, N'GREEN CAPSICUM ', 2, 80, 160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0012', 196, N'ZAUCQNI ', 2, 120, 240, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0013', 223, N'GREEN ONION ', 0.5, 240, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0014', 175, N'MULTI CAPSICUM ', 5, 750, 3750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0015', 212, N'CHERRY TOMATO ', 2, 350, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0016', 192, N'ROCKET LEAVE ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0017', 187, N'PARSELY ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0018', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0019', 208, N'BANANA ', 12, 15, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0020', 177, N'ONION KITCHEN ', 5, 45, 225, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (151, N'0021', 183, N'TOMATO STAFF ', 5, 60, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0001', 226, N'ICE BERG ', 3, 380, 1140, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0002', 209, N'BROCOLI ', 2, 600, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0003', 183, N'TOMATO STAFF ', 5, 60, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0004', 180, N'POTATO STAFF ', 12, 55, 660, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0005', 176, N'ONION STAFF ', 2, 45, 90, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0006', 204, N'CARRIAT KITCHEN ', 5, 70, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0007', 219, N'GARLIC  ', 2, 180, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0008', 193, N'SPINACH STAFF ', 12, 40, 480, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0009', 170, N'LEMON FRESH ', 3, 160, 480, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0010', 196, N'ZAUCQNI ', 3, 120, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0011', 457, N'fresh cherry ', 1, 350, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0012', 208, N'BANANA ', 24, 15, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0013', 192, N'ROCKET LEAVE ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0014', 187, N'PARSELY ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0015', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0016', 456, N'MANGO FRESH ', 2, 150, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0017', 188, N'PEACH FRESH ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0018', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0019', 213, N'CUCMBER ', 2, 55, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0020', 186, N'GREEN CHILI KITCHEN ', 0.5, 110, 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0021', 216, N'FRESH BEANS ', 1, 200, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0022', 196, N'ZAUCQNI ', 0, 120, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (152, N'0023', 196, N'ZAUCQNI ', 0, 120, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0001', 23, N'ALMOND ', 0, 1450, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0002', 25, N'ANCHOVIES FISH ', 3, 300, 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0003', 31, N'BALSAMIC VINEGAR BLACK ', 5, 580, 2900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0004', 33, N'BBQ SAUCE ', 3, 580, 1740, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0005', 37, N'BLACK OLIVE ', 3, 850, 2550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0006', 47, N'BUTTER MUSHROOMS  ', 3, 850, 2550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0007', 54, N'CASTER SUGAR ', 5, 105, 525, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0008', 53, N'CASHEWNUT ', 1, 1900, 1900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0009', 55, N'WHITE CHANA ', 3, 140, 420, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0010', 245, N'DAAL CHANA ', 5, 140, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0011', 57, N'CHICKEN POWDER ', 2, 950, 1900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0012', 60, N'CHILLI SAUCE ', 4, 180, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0013', 68, N'OLIVE OIL EXTRA  ', 1, 2400, 2400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0014', 73, N'OREGANO DAY ', 1, 450, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0015', 75, N'OYSTER SAUCE MAMA SITA  ', 1, 3900, 3900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0016', 159, N'MAIDA ', 50, 78, 3900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0017', 77, N'SPAGHETTI PASTA ', 4, 170, 680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0018', 86, N'DEMI GLACE  ', 1, 1200, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0019', 466, N'wheat powder atta ', 1, 1080, 1080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0020', 69, N'COOKING OIL 16LTR ', 2, 4200, 8400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0021', 348, N'RICE GUEST ZARAFA ', 50, 130, 6500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0022', 104, N'FRENCH MUSTARD GLN ', 1, 3600, 3600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0023', 111, N'CHICKEN PEPPERONI  ', 2, 300, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0024', 141, N'HOT SAUCE ', 2, 600, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0025', 146, N'JALAPENO Can ', 2, 650, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0026', 156, N'LIME SEASONING POWDER ', 4, 520, 2080, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0027', 316, N'WHITE CHEESE SLICE ', 2, 900, 1800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0028', 235, N'WHITE VINEGAR (SHEZAN) ', 2, 300, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0029', 250, N'DAIRY MILK ', 24, 105, 2520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0030', 275, N'MOZELA CHEESE ADAMS ', 2, 2150, 4300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0031', 341, N'LIPTON TEA PKT GUST ', 3, 520, 1560, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0032', 259, N'NUR PUR BUTTER 200G ', 1, 1300, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0033', 308, N'TOMATO PASTE ', 2, 300, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0034', 333, N'MANGO JUICE ', 2, 190, 380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0035', 330, N'PEACH JUICE ', 2, 190, 380, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0036', 343, N'RED CHERRY ', 1, 700, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0037', 427, N'TOWEL ', 10, 200, 2000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (153, N'0038', 392, N'GREEN JALI ', 40, 35, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (154, N'0001', 357, N'PLAIN BREAD ', 10, 109, 1090, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (154, N'0002', 44, N'BURGAR BUN ', 5, 62, 310, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (154, N'0003', 143, N'ICE CUBE ', 6, 300, 1800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (154, N'0004', 251, N'ROTTI ', 130, 7, 910, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0001', 226, N'ICE BERG ', 4, 380, 1520, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0002', 209, N'BROCOLI ', 2, 600, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0003', 184, N'TOMATO ', 3, 60, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0004', 176, N'ONION STAFF ', 5, 45, 225, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0005', 203, N'CARRIAT STAFF ', 10, 70, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0006', 194, N'SPINACH KITCHEN ', 1, 40, 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0007', 170, N'LEMON FRESH ', 4, 160, 640, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0008', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0009', 178, N'FRESH CORIANDER STAFF ', 1, 20, 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0010', 222, N'GREEN CAPSICUM ', 10, 80, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0011', 216, N'FRESH BEANS ', 1, 200, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0012', 196, N'ZAUCQNI ', 5, 120, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0013', 458, N'pear imp ', 1, 300, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0014', 175, N'MULTI CAPSICUM ', 5, 750, 3750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0015', 212, N'CHERRY TOMATO ', 4, 350, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0016', 195, N'THAI BIRD CHILLI ', 1, 450, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0017', 192, N'ROCKET LEAVE ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0018', 187, N'PARSELY ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0019', 211, N'CELERY ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0020', 218, N'FRESH MUSHROOMS ', 6, 220, 1320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0021', 217, N'FRESH BLUE BERRY ', 1, 1000, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0022', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0023', 456, N'MANGO FRESH ', 3, 150, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0024', 188, N'PEACH FRESH ', 2, 180, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0025', 190, N'RED APPLE ', 1, 260, 260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (155, N'0026', 208, N'BANANA ', 6, 15, 90, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0001', 301, N'SWEET CORN LARGE  ', 2, 680, 1360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0002', 292, N'SUGAR  ', 10, 100, 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0003', 92, N'PENNE PASTA ', 4, 170, 680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0004', 111, N'CHICKEN PEPPERONI  ', 2, 250, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0005', 156, N'LIME SEASONING POWDER ', 3, 490, 1470, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0006', 259, N'NUR PUR BUTTER 200G ', 1, 1300, 1300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0007', 274, N'MILK PAK ', 48, 148, 7104, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0008', 344, N'RED JALAPINO ', 2, 290, 580, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0009', 67, N'NUTELLA CHOCOLATE ', 1, 640, 640, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0010', 279, N'PUCK CHEESE ', 2, 490, 980, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (156, N'0011', 143, N'ICE CUBE ', 5, 330, 1650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (157, N'0001', 407, N'BALL PEN ', 1, 100, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (157, N'0002', 336, N'WATER 19LTR ', 0.4, 260, 104, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (157, N'0003', 48, N'MIX SPICE ', 1, 395, 395, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (157, N'0004', 284, N'BLACK QUINOA ', 1, 795, 795, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (157, N'0005', 233, N'WHITE QUINWA ', 1, 795, 795, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (157, N'0006', 25, N'ANCHOVIES FISH ', 2, 375, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (157, N'0007', 467, N'KIWI KNIFE ', 3, 430, 1290, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (157, N'0008', 468, N'ROOPER PEELER ', 1, 280, 280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (158, N'0001', 271, N'FRESH MOZELA ', 5, 1259, 6295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (159, N'0001', 470, N'BLACK OLIVE WHOLE ', 1, 769, 769, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (159, N'0002', 469, N'green olive whole ', 1, 769, 769, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (160, N'0001', 268, N'EGGS ', 360, 12.47, 4489.2, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (160, N'0002', 103, N'WHEAT WHOLE  ', 2, 84, 168, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (160, N'0003', 332, N'PINE APPLE JUICE ', 3, 225, 675, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (160, N'0004', 111, N'CHICKEN PEPPERONI  ', 3, 325, 975, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (160, N'0005', 199, N'BEEF ROD ', 10.88, 1700, 18496, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (160, N'0006', 163, N'WHOLE SALMON ', 3.98, 3400, 13532, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (161, N'0001', 445, N'LPG GAS ', 6, 6491.7, 38950.2, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (162, N'0001', 271, N'FRESH MOZELA ', 3, 1259, 3777, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (163, N'0001', 357, N'PLAIN BREAD ', 14, 109, 1526, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (163, N'0002', 44, N'BURGAR BUN ', 5, 62, 310, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (163, N'0003', 288, N'TOBIKKO ORANGE ', 2, 4200, 8400, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (163, N'0004', 266, N'CREAM CHEESE ', 5.2, 1600, 8320, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (163, N'0005', 199, N'BEEF ROD ', 15, 1700, 25500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (164, N'0001', 184, N'TOMATO ', 5, 75, 375, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (164, N'0002', 181, N'POTATOM KITCHEN ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (164, N'0003', 186, N'GREEN CHILI KITCHEN ', 1, 110, 110, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (164, N'0004', 223, N'GREEN ONION ', 1, 260, 260, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (164, N'0005', 205, N'AVACADO ', 0.58, 2200, 1276, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (164, N'0006', 91, N'EDAMMAME ', 1, 1100, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0001', 226, N'ICE BERG ', 4, 400, 1600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0002', 209, N'BROCOLI ', 2, 600, 1200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0003', 183, N'TOMATO STAFF ', 8, 80, 640, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0004', 180, N'POTATO STAFF ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0005', 176, N'ONION STAFF ', 3, 50, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0006', 204, N'CARRIAT KITCHEN ', 10, 75, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0007', 219, N'GARLIC  ', 2, 180, 360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0008', 170, N'LEMON FRESH ', 4, 160, 640, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0009', 174, N'MINT LEAVE ', 10, 10, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0010', 213, N'CUCMBER ', 3, 50, 150, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0011', 216, N'FRESH BEANS ', 1, 220, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0012', 196, N'ZAUCQNI ', 5, 120, 600, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0013', 223, N'GREEN ONION ', 0.5, 240, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0014', 175, N'MULTI CAPSICUM ', 4, 750, 3000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0015', 212, N'CHERRY TOMATO ', 2, 350, 700, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0016', 192, N'ROCKET LEAVE ', 0.25, 1000, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0017', 215, N'FRESH BASIL ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0018', 211, N'CELERY ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0019', 169, N'LEEK ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0020', 207, N'BABY SPINACH ', 0.25, 800, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0021', 190, N'RED APPLE ', 1, 250, 250, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0022', 456, N'MANGO FRESH ', 2, 150, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0023', 188, N'PEACH FRESH ', 1, 180, 180, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (165, N'0024', 450, N'graps ', 1, 400, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0001', 226, N'ICE BERG ', 3, 350, 1050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0002', 209, N'BROCOLI ', 2, 550, 1100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0003', 183, N'TOMATO STAFF ', 12, 80, 960, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0004', 180, N'POTATO STAFF ', 10, 55, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0005', 177, N'ONION KITCHEN ', 10, 45, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0006', 204, N'CARRIAT KITCHEN ', 10, 75, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0007', 210, N'CABBAGE ', 1, 50, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0008', 220, N'GINGER ', 1, 550, 550, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0009', 219, N'GARLIC  ', 3, 180, 540, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0010', 170, N'LEMON FRESH ', 2, 150, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0011', 178, N'FRESH CORIANDER STAFF ', 5, 20, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0012', 213, N'CUCMBER ', 3, 55, 165, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0013', 222, N'GREEN CAPSICUM ', 2, 80, 160, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0014', 216, N'FRESH BEANS ', 1, 220, 220, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0015', 196, N'ZAUCQNI ', 5, 130, 650, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0016', 454, N'RED CABBAGE ', 1, 90, 90, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0017', 169, N'LEEK ', 3.2, 400, 1280, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0018', 175, N'MULTI CAPSICUM ', 2, 750, 1500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0019', 212, N'CHERRY TOMATO ', 3, 350, 1050, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0020', 195, N'THAI BIRD CHILLI ', 1, 450, 450, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0021', 192, N'ROCKET LEAVE ', 0.5, 1000, 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0022', 187, N'PARSELY ', 0.3, 1000, 300, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0023', 464, N'BEANS SPROUT ', 0.5, 400, 200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0024', 455, N'APPLE GREEN IMP ', 2, 700, 1400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0025', 184, N'TOMATO ', 10, 80, 800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (166, N'0026', 207, N'BABY SPINACH ', 0.5, 800, 400, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (167, N'0001', 437, N'CLING FILM LARGE ', 10, 590, 5900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (167, N'0002', 438, N'CLING FILM SMALL ', 5, 420, 2100, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (167, N'0003', 406, N'ALUMIN FOIL ', 6, 195, 1170, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (167, N'0004', 369, N'DUSTER ', 10, 190, 1900, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (167, N'0005', 419, N'surf ', 6, 95, 570, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (167, N'0006', 255, N'HAND WASH STAFF ', 5, 70, 350, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (167, N'0007', 389, N'DISHWASHING LTR ', 30, 60, 1800, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (168, N'0001', 271, N'FRESH MOZELA ', 5, 1259, 6295, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (169, N'0001', 325, N'COKE CAN ', 240, 39, 9360, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (169, N'0002', 335, N'SPRITE CAN ', 120, 39, 4680, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (169, N'0003', 326, N'FANTA CAN ', 24, 39, 936, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (169, N'0004', 334, N'SPRITE 1.5LTR ', 42, 100, 4200, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (169, N'0005', 338, N'WATER LARGE ', 120, 50, 6000, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (170, N'0001', 278, N'PREMA MILK ', 2, 159, 318, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (170, N'0002', 175, N'MULTI CAPSICUM ', 1, 750, 750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (171, N'0001', 230, N'YELLOW CHEESE SLICE ', 2, 930, 1860, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (171, N'0002', 47, N'BUTTER MUSHROOMS  ', 2, 830, 1660, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (171, N'0003', 251, N'ROTTI ', 250, 7, 1750, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorToWarehouseDetail] ([Id], [VoucherLineNo], [ItemId], [ItemName], [Quantity], [Rate], [TotalRate], [LineRemarks], [Gst], [AdjustmentIN], [AdjustmentOUT]) VALUES (172, N'0001', 265, N'COOKING CREAM ', 120, 530, 63600, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[VendorToWarehouseHead] ON 

INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (17, 10, NULL, N'OPENING STOCK ', 0, 0, 0, 1264.00003433228, 1264.00003433228, CAST(N'2021-05-31T00:00:00.000' AS DateTime), 12, CAST(N'2021-05-31T17:04:19.533' AS DateTime), CAST(N'2021-05-31T17:04:19.533' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (18, 12, N'01', N'purchase', 0, 0, 0, 22268.7606811523, 22268.7606811523, CAST(N'2021-06-10T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-16T18:40:25.847' AS DateTime), CAST(N'2021-06-16T18:40:25.847' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (19, 23, N'02', N'received', 0, 0, 0, 900, 900, CAST(N'2021-06-17T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-17T13:59:31.650' AS DateTime), CAST(N'2021-06-17T13:59:31.650' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (20, 17, N'03', N'cooking cream ', 0, 0, 0, 31800, 31800, CAST(N'2021-06-17T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T17:53:59.850' AS DateTime), CAST(N'2021-06-17T17:53:59.850' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (21, 34, N'04', N'PURCHASE', 0, 0, 0, 5980, 5980, CAST(N'2021-06-17T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:03:23.850' AS DateTime), CAST(N'2021-06-17T18:03:23.850' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (22, 34, N'05', N'PURCHASE', 0, 0, 0, 5705, 5705, CAST(N'2021-06-17T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:11:44.777' AS DateTime), CAST(N'2021-06-17T18:11:44.777' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (23, 33, N'06', N'BEEF ROD', 0, 0, 0, 30519.9989318848, 30519.9989318848, CAST(N'2021-06-11T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:13:36.450' AS DateTime), CAST(N'2021-06-17T18:13:36.450' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (24, 33, N'07', N'BEEF ROD', 0, 0, 0, 30450, 30450, CAST(N'2021-06-14T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:14:39.950' AS DateTime), CAST(N'2021-06-17T18:14:39.950' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (25, 11, N'08', N'BUTTER', 0, 0, 0, 11180, 11180, CAST(N'2021-06-14T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:15:53.057' AS DateTime), CAST(N'2021-06-17T18:15:53.057' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (26, 15, N'09', N'DISH WASH LIQUID  ', 0, 0, 0, 3600, 3600, CAST(N'2021-06-16T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:17:15.577' AS DateTime), CAST(N'2021-06-17T18:17:15.577' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (27, 20, N'10', N'FRESH MOZZARELLA ', 0, 0, 0, 6295, 6295, CAST(N'2021-06-15T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:18:52.913' AS DateTime), CAST(N'2021-06-17T18:18:52.913' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (28, 13, N'11', N'CHICKEN BREAST, THIGH', 0, 0, 0, 44970.4756818661, 44970.4756818661, CAST(N'2021-06-15T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:23:48.450' AS DateTime), CAST(N'2021-06-17T18:23:48.450' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (29, 12, N'12', N'WATER,COCA COLA', 0, 0, 0, 20397.5999450684, 20397.5999450684, CAST(N'2021-06-14T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:28:56.237' AS DateTime), CAST(N'2021-06-17T18:28:56.237' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (30, 31, N'14', N'PRAWNS 26/30', 0, 0, 0, 1500, 1500, CAST(N'2021-06-05T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:45:46.100' AS DateTime), CAST(N'2021-06-17T18:45:46.100' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (31, 13, N'15', N'CHICKEN', 0, 0, 0, 30310.4217866058, 30310.4217866058, CAST(N'2021-06-04T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:49:16.177' AS DateTime), CAST(N'2021-06-17T18:49:16.177' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (32, 13, N'16', N'CHICKEN ', 0, 0, 0, 42833.5934685669, 42833.5934685669, CAST(N'2021-06-06T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:50:46.697' AS DateTime), CAST(N'2021-06-17T18:50:46.697' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (33, 13, N'17', N'CHICKEN', 0, 0, 0, 40906.1724361572, 40906.1724361572, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:51:59.320' AS DateTime), CAST(N'2021-06-17T18:51:59.320' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (34, 13, N'18', N'CHICKEN ', 0, 0, 0, 33918.4004592591, 33918.4004592591, CAST(N'2021-06-11T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:53:35.070' AS DateTime), CAST(N'2021-06-17T18:53:35.070' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (35, 27, N'19', N'MAYO,KETCHUP', 0, 0, 0, 38259, 38259, CAST(N'2021-06-01T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T18:56:45.657' AS DateTime), CAST(N'2021-06-17T18:56:45.657' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (36, 34, N'13', N'received', 0, 0, 0, 33230, 33230, CAST(N'2021-06-17T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-17T19:01:33.400' AS DateTime), CAST(N'2021-06-17T19:01:33.400' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (37, 21, N'20', N'LPG GAS', 0, 0, 0, 45105.2006835938, 45105.2006835938, CAST(N'2021-06-01T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:04:09.853' AS DateTime), CAST(N'2021-06-17T19:04:09.853' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (38, 21, N'21', N'LPG GAS', 0, 0, 0, 38987.9013671875, 38987.9013671875, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:06:20.627' AS DateTime), CAST(N'2021-06-17T19:06:20.627' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (39, 35, N'23', N'RICE', 0, 0, 0, 9750, 9750, CAST(N'2021-06-05T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:09:48.533' AS DateTime), CAST(N'2021-06-17T19:09:48.533' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (40, 11, N'24', N'BUTTER', 0, 0, 0, 6450, 6450, CAST(N'2021-06-03T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:10:32.453' AS DateTime), CAST(N'2021-06-17T19:10:32.453' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (41, 11, N'25', N'BUTTER', 0, 0, 0, 1350, 1350, CAST(N'2021-06-03T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:11:26.777' AS DateTime), CAST(N'2021-06-17T19:11:26.777' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (42, 11, N'26', N'BUTTER', 0, 0, 0, 6880, 6880, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:17:18.987' AS DateTime), CAST(N'2021-06-17T19:17:18.987' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (43, 36, N'27', N'FRIES', 0, 0, 0, 16000, 16000, CAST(N'2021-06-11T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:21:01.417' AS DateTime), CAST(N'2021-06-17T19:21:01.417' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (44, 30, N'28', N'FISH', 0, 0, 0, 16500, 16500, CAST(N'2021-06-09T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:22:31.707' AS DateTime), CAST(N'2021-06-17T19:22:31.707' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (45, 34, N'22', N'PURCHASE', 0, 0, 0, 27950.0000286102, 27950.0000286102, CAST(N'2021-06-17T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-17T19:27:38.293' AS DateTime), CAST(N'2021-06-17T19:27:38.293' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (46, 20, N'29', N'CHEESE', 0, 0, 0, 3130, 3130, CAST(N'2021-06-01T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:28:47.003' AS DateTime), CAST(N'2021-06-17T19:28:47.003' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (47, 20, N'30', N'MOZZRELLA', 0, 0, 0, 6295, 6295, CAST(N'2021-06-09T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:30:23.937' AS DateTime), CAST(N'2021-06-17T19:30:23.937' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (48, 20, N'31', N'CHEESE', 0, 0, 0, 900, 900, CAST(N'2021-06-14T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:31:40.227' AS DateTime), CAST(N'2021-06-17T19:31:40.227' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (49, 21, N'32', N'LPG GAS', 0, 0, 0, 39391.7993164063, 39391.7993164063, CAST(N'2021-06-16T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:32:55.457' AS DateTime), CAST(N'2021-06-17T19:32:55.457' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (50, 13, N'33', N'CHICKEN', 0, 0, 0, 25319.0821101074, 25319.0821101074, CAST(N'2021-06-12T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:34:50.910' AS DateTime), CAST(N'2021-06-17T19:34:50.910' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (51, 30, N'34', N'CALAMARI', 0, 0, 0, 7885.00018119812, 7885.00018119812, CAST(N'2021-06-14T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:35:45.017' AS DateTime), CAST(N'2021-06-17T19:35:45.017' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (52, 32, N'35', N'PRAWNS', 0, 0, 0, 20500, 20500, CAST(N'2021-06-08T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:36:44.850' AS DateTime), CAST(N'2021-06-17T19:36:44.850' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (53, 17, N'36', N'COOKING CREAM', 0, 0, 0, 31800, 31800, CAST(N'2021-06-12T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-17T19:37:28.503' AS DateTime), CAST(N'2021-06-17T19:37:28.503' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (54, 34, N'37', N'CASH PURCHASE', 0, 0, 0, 26099.6, 26099.6, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-19T15:41:31.387' AS DateTime), CAST(N'2021-06-19T15:41:31.387' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (55, 19, N'39', N'NON FOOD ITEMS ', 0, 0, 0, 25710.16, 25710.16, CAST(N'2021-06-09T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-19T16:31:32.043' AS DateTime), CAST(N'2021-06-19T16:31:32.043' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (56, 34, N'38', N'PURCHASE', 0, 0, 0, 119372, 119372, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T16:37:30.770' AS DateTime), CAST(N'2021-06-19T16:37:30.770' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (57, 33, N'39', N'PURCHASE', 0, 0, 0, 0, 0, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T16:39:00.887' AS DateTime), CAST(N'2021-06-19T16:39:00.887' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (58, 19, N'40', N'PURCHASE', 0, 0, 0, 900, 900, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T16:41:07.023' AS DateTime), CAST(N'2021-06-19T16:41:07.023' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (59, 34, N'41', N'PURCHASE', 0, 0, 0, 1260, 1260, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T16:42:00.087' AS DateTime), CAST(N'2021-06-19T16:42:00.087' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (60, 13, N'42', N'PURCHASE', 0, 0, 0, 62679.6116, 62679.6116, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T16:45:55.653' AS DateTime), CAST(N'2021-06-19T16:45:55.653' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (61, 34, N'43', N'PURCHASE', 0, 0, 0, 3391.8, 3391.8, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T17:16:49.757' AS DateTime), CAST(N'2021-06-19T17:16:49.757' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (62, 34, N'44', N'PURCHASE', 0, 0, 0, 13499.94, 13499.94, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T17:30:42.930' AS DateTime), CAST(N'2021-06-19T17:30:42.930' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (63, 34, N'45', N'PURCHASE', 0, 0, 0, 41425.8, 41425.8, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T17:51:57.457' AS DateTime), CAST(N'2021-06-19T17:51:57.457' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (64, 35, N'47', N'PURCHASE', 0, 0, 0, 11250, 11250, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T18:02:37.327' AS DateTime), CAST(N'2021-06-19T18:02:37.327' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (65, 15, N'48', N'PURCHASE', 0, 0, 0, 3000, 3000, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T18:04:02.150' AS DateTime), CAST(N'2021-06-19T18:04:02.150' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (66, 20, N'49', N'PURCHASE', 0, 0, 0, 6250, 6250, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T18:04:46.583' AS DateTime), CAST(N'2021-06-19T18:04:46.583' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (67, 12, N'50', N'PURCHASE', 0, 0, 0, 29664, 29664, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-19T18:09:19.143' AS DateTime), CAST(N'2021-06-19T18:09:19.143' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (68, 34, N'46', N'CASH PURCHASES', 0, 0, 0, 100024, 100024, CAST(N'2021-06-15T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-19T18:23:09.113' AS DateTime), CAST(N'2021-06-19T18:23:09.113' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (69, 33, N'47', N'BEEF ROD', 0, 0, 0, 20010, 20010, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-21T13:36:09.170' AS DateTime), CAST(N'2021-06-21T13:36:09.170' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (70, 28, N'51', N'BEEF ROD', 0, 0, 0, 23100, 23100, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-21T13:44:23.177' AS DateTime), CAST(N'2021-06-21T13:44:23.177' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (71, 11, N'52', N'butter', 0, 0, 0, 11180, 11180, CAST(N'2021-06-19T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-21T13:54:05.490' AS DateTime), CAST(N'2021-06-21T13:54:05.490' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (72, 19, N'53', N'SHOPER,CAP,SUEF,FOAM,PORTION,JALI,GLOVE,HARPIC,MAX,F2,F3,F1 BOX,JUMBO ROLL,', 0, 0, 0, 13240.16, 13240.16, CAST(N'2021-06-16T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-21T14:18:37.827' AS DateTime), CAST(N'2021-06-21T14:18:37.827' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (73, 22, N'213', N'PURCHASE', 0, 0, 0, 13606, 13606, CAST(N'2021-06-21T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-21T17:48:01.743' AS DateTime), CAST(N'2021-06-21T17:48:01.743' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (74, 34, N'6589', N'CASH PURCHASES', 0, 0, 0, 26964, 26964, CAST(N'2021-06-11T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-21T17:53:34.713' AS DateTime), CAST(N'2021-06-21T17:53:34.713' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (75, 34, N'232', N'PURCHASE', 0, 0, 0, 849, 849, CAST(N'2021-06-21T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-21T17:55:31.740' AS DateTime), CAST(N'2021-06-21T17:55:31.740' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (76, 22, N'1755', N'PURCHASE', 0, 0, 0, 9241, 9241, CAST(N'2021-06-21T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-21T18:07:36.830' AS DateTime), CAST(N'2021-06-21T18:07:36.830' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (77, 22, N'1775', N'PURCHASE', 0, 0, 0, 16120, 16120, CAST(N'2021-06-21T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-21T18:57:40.237' AS DateTime), CAST(N'2021-06-21T18:57:40.237' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (78, 34, N'79830', N'PURCHASE', 0, 0, 0, 3140, 3140, CAST(N'2021-06-22T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-22T16:16:43.137' AS DateTime), CAST(N'2021-06-22T16:16:43.137' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (79, 36, N'34849', N'PURCHASE', 0, 0, 0, 16000, 16000, CAST(N'2021-06-22T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-22T16:19:30.667' AS DateTime), CAST(N'2021-06-22T16:19:30.667' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (80, 33, N'887', N'PURCHASE', 0, 0, 0, 29580, 29580, CAST(N'2021-06-22T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-22T16:20:52.760' AS DateTime), CAST(N'2021-06-22T16:20:52.760' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (81, 20, N'54000', N'PURCHASE', 0, 0, 0, 6295, 6295, CAST(N'2021-06-22T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-22T16:22:16.010' AS DateTime), CAST(N'2021-06-22T16:22:16.010' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (82, 14, N'110140', N'PURCHASE', 0, 0, 0, 1274, 1274, CAST(N'2021-06-22T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-22T16:23:53.443' AS DateTime), CAST(N'2021-06-22T16:23:53.443' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (83, 10, N'2', N'PURCHASE', 0, 0, 0, 34090, 34090, CAST(N'2021-06-22T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-22T17:08:05.343' AS DateTime), CAST(N'2021-06-22T17:08:05.343' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (84, 10, N'1', N'PURCHASE', 0, 0, 0, 21406, 21406, CAST(N'2021-06-22T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-22T18:47:38.427' AS DateTime), CAST(N'2021-06-22T18:47:38.427' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (85, 34, N'39', N'PURCHASE', 0, 0, 0, 3395, 3395, CAST(N'2021-06-22T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-22T18:59:18.357' AS DateTime), CAST(N'2021-06-22T18:59:18.357' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (86, 10, N'3', N'PURCHASE', 0, 0, 0, 34464, 34464, CAST(N'2021-06-23T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-23T14:08:32.153' AS DateTime), CAST(N'2021-06-23T14:08:32.153' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (87, 34, N'71668', N'ICE CUBE,ICE CREAM', 0, 0, 0, 7990, 7990, CAST(N'2021-06-14T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-23T18:34:38.170' AS DateTime), CAST(N'2021-06-23T18:34:38.170' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (88, 22, N'236', N'PURCHASE', 0, 0, 0, 13880, 13880, CAST(N'2021-06-23T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-23T18:38:18.057' AS DateTime), CAST(N'2021-06-23T18:38:18.057' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (89, 10, N'4', N'PURCHASE', 0, 0, 0, 40334.76, 40334.76, CAST(N'2021-06-23T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-23T19:18:54.757' AS DateTime), CAST(N'2021-06-23T19:18:54.757' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (90, 34, N'003361', N'PURCHASE', 0, 0, 0, 11395, 11395, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T14:40:56.057' AS DateTime), CAST(N'2021-06-24T14:40:56.057' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (91, 13, N'6417', N'PURCHASE', 0, 0, 0, 55946.982, 55946.982, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T14:45:39.677' AS DateTime), CAST(N'2021-06-24T14:45:39.677' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (92, 32, N'40375', N'PURCHASE', 0, 0, 0, 41000, 41000, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T14:48:18.267' AS DateTime), CAST(N'2021-06-24T14:48:18.267' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (93, 20, N'54000', N'PURCHASE', 0, 0, 0, 900, 900, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T14:58:17.867' AS DateTime), CAST(N'2021-06-24T14:58:17.867' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (94, 27, N'45454', N'PURCHASE', 0, 0, 0, 49173.92, 49173.92, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T15:01:50.890' AS DateTime), CAST(N'2021-06-24T15:01:50.890' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (95, 17, N'6852', N'PURCHASE', 0, 0, 0, 31800, 31800, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T15:03:29.927' AS DateTime), CAST(N'2021-06-24T15:03:29.927' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (96, 22, N'259', N'PURCHASE', 0, 0, 0, 7320, 7320, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T15:13:31.413' AS DateTime), CAST(N'2021-06-24T15:13:31.413' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (97, 19, N'5634', N'PURCHASE', 0, 0, 0, 10592, 10592, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T15:25:23.810' AS DateTime), CAST(N'2021-06-24T15:25:23.810' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (98, 10, N'1111', N'PURCHASE', 0, 0, 0, 12430, 12430, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T15:30:01.753' AS DateTime), CAST(N'2021-06-24T15:30:01.753' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (99, 34, N'25031', N'PURCHASE', 0, 0, 0, 3790, 3790, CAST(N'2021-06-24T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-24T15:56:26.557' AS DateTime), CAST(N'2021-06-24T15:56:26.557' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (100, 34, N'9321', N'PURCHASE', 0, 0, 0, 124947, 124947, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T13:51:53.057' AS DateTime), CAST(N'2021-06-25T13:51:53.057' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (101, 11, N'1806', N'PURCHASE', 0, 0, 0, 11610, 11610, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T13:53:24.093' AS DateTime), CAST(N'2021-06-25T13:53:24.093' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (102, 22, N'901', N'PURCHASE', 0, 0, 0, 13155, 13155, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T14:04:52.477' AS DateTime), CAST(N'2021-06-25T14:04:52.477' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (103, 20, N'666', N'PURCHASE', 0, 0, 0, 6295, 6295, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T14:06:43.077' AS DateTime), CAST(N'2021-06-25T14:06:43.077' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (104, 22, N'273', N'PURCHASE', 0, 0, 0, 1575, 1575, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T14:08:17.887' AS DateTime), CAST(N'2021-06-25T14:08:17.887' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (105, 22, N'932', N'PURCHASE', 0, 0, 0, 21790, 21790, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T14:30:09.987' AS DateTime), CAST(N'2021-06-25T14:30:09.987' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (106, 22, N'1797', N'PURCHASE', 0, 0, 0, 15475, 15475, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T14:44:39.023' AS DateTime), CAST(N'2021-06-25T14:44:39.023' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (107, 22, N'1429', N'PURCHASE', 0, 0, 0, 13355, 13355, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T14:59:30.743' AS DateTime), CAST(N'2021-06-25T14:59:30.743' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (108, 22, N'1716', N'PURCHASE', 0, 0, 0, 15510, 15510, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T15:09:38.517' AS DateTime), CAST(N'2021-06-25T15:09:38.517' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (109, 22, N'833', N'PURCHASE', 0, 0, 0, 3875, 3875, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T16:06:35.757' AS DateTime), CAST(N'2021-06-25T16:06:35.757' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (110, 22, N'1948', N'PURCHASE', 0, 0, 0, 12180, 12180, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T16:11:02.030' AS DateTime), CAST(N'2021-06-25T16:11:02.030' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (111, 22, N'877', N'PURCHASE', 0, 0, 0, 10950, 10950, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T16:23:27.397' AS DateTime), CAST(N'2021-06-25T16:23:27.397' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (112, 22, N'897', N'PURCHASE', 0, 0, 0, 5290, 5290, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T16:35:28.280' AS DateTime), CAST(N'2021-06-25T16:35:28.280' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (113, 22, N'1816', N'PURCHASE', 0, 0, 0, 7640, 7640, CAST(N'2021-06-25T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-25T17:36:54.110' AS DateTime), CAST(N'2021-06-25T17:36:54.110' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (114, 22, N'1816', N'PURCHASE', 0, 0, 0, 5830, 5830, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T13:02:21.180' AS DateTime), CAST(N'2021-06-26T13:02:21.180' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (115, 34, N'4266', N'PURCHASE', 0, 0, 0, 47782, 47782, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T13:25:07.440' AS DateTime), CAST(N'2021-06-26T13:25:07.440' AS DateTime))
GO
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (116, 21, N'17459', N'PURCHASE', 0, 0, 0, 44027.2, 44027.2, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T13:26:42.267' AS DateTime), CAST(N'2021-06-26T13:26:42.267' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (117, 19, N'5645', N'PURCHASE', 0, 0, 0, 2520, 2520, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T13:27:53.113' AS DateTime), CAST(N'2021-06-26T13:27:53.113' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (118, 34, N'9321', N'PURCHASE', 0, 0, 0, 25000, 25000, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T13:30:03.713' AS DateTime), CAST(N'2021-06-26T13:30:03.713' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (119, 22, N'1866', N'PURCHASE', 0, 0, 0, 3690, 3690, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T13:36:21.537' AS DateTime), CAST(N'2021-06-26T13:36:21.537' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (120, 22, N'1863', N'PURCHASE', 0, 0, 0, 10585, 10585, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T14:22:15.037' AS DateTime), CAST(N'2021-06-26T14:22:15.037' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (121, 22, N'815', N'PURCHASE', 0, 0, 0, 7845, 7845, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T14:29:49.807' AS DateTime), CAST(N'2021-06-26T14:29:49.807' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (122, 22, N'131', N'PURCHASE', 0, 0, 0, 3770, 3770, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T14:35:15.767' AS DateTime), CAST(N'2021-06-26T14:35:15.767' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (123, 22, N'164', N'PURCHASE', 0, 0, 0, 6745, 6745, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T14:40:06.500' AS DateTime), CAST(N'2021-06-26T14:40:06.500' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (124, 22, N'953', N'PURCHASE', 0, 0, 0, 17670, 17670, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T14:57:57.830' AS DateTime), CAST(N'2021-06-26T14:57:57.830' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (125, 34, N'777', N'PURCHASE', 0, 0, 0, 46906, 46906, CAST(N'2021-06-26T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-26T15:28:32.680' AS DateTime), CAST(N'2021-06-26T15:28:32.680' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (126, 34, N'9321', N'PURCHASE', 0, 0, 0, 33340, 33340, CAST(N'2021-06-28T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-28T15:37:04.343' AS DateTime), CAST(N'2021-06-28T15:37:04.343' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (127, 21, N'13216', N'PURCHASE', 0, 0, 0, 31560, 31560, CAST(N'2021-06-28T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-28T15:40:43.013' AS DateTime), CAST(N'2021-06-28T15:40:43.013' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (128, 12, N'125904', N'PURCHASE', 0, 0, 0, 39180, 39180, CAST(N'2021-06-28T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-28T16:08:24.830' AS DateTime), CAST(N'2021-06-28T16:08:24.830' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (129, 11, N'3888', N'PURCHASE', 0, 0, 0, 21500, 21500, CAST(N'2021-06-28T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-28T16:10:46.757' AS DateTime), CAST(N'2021-06-28T16:10:46.757' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (130, 22, N'281', N'PURCHASE', 0, 0, 0, 35660, 35660, CAST(N'2021-06-28T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-28T16:44:05.453' AS DateTime), CAST(N'2021-06-28T16:44:05.453' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (131, 34, N'3849', N'PURCHASE', 0, 0, 0, 57466, 57466, CAST(N'2021-06-28T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-28T16:58:22.270' AS DateTime), CAST(N'2021-06-28T16:58:22.270' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (132, 34, N'73878', N'PURCHASE', 0, 0, 0, 58032, 58032, CAST(N'2021-06-29T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-29T14:07:18.850' AS DateTime), CAST(N'2021-06-29T14:07:18.850' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (133, 22, N'7', N'PURCHASE', 0, 0, 0, 4060, 4060, CAST(N'2021-06-29T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-29T14:46:14.740' AS DateTime), CAST(N'2021-06-29T14:46:14.740' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (134, 20, N'27', N'PURCHASE', 0, 0, 0, 6295, 6295, CAST(N'2021-06-29T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-29T14:47:37.117' AS DateTime), CAST(N'2021-06-29T14:47:37.117' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (135, 17, N'6999', N'PURCHASE', 0, 0, 0, 63600, 63600, CAST(N'2021-06-29T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-29T14:48:40.647' AS DateTime), CAST(N'2021-06-29T14:48:40.647' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (136, 13, N'6537', N'PURCHASE', 0, 0, 0, 104367.6912, 104367.6912, CAST(N'2021-06-29T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-29T14:50:59.567' AS DateTime), CAST(N'2021-06-29T14:50:59.567' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (137, 34, N'138', N'ice,dishwash,water', 0, 0, 0, 6400, 6400, CAST(N'2021-06-29T00:00:00.000' AS DateTime), 12, CAST(N'2021-06-29T16:27:46.990' AS DateTime), CAST(N'2021-06-29T16:27:46.990' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (138, 34, N'1338472', N'PURCHASE', 0, 0, 0, 59535.2, 59535.2, CAST(N'2021-06-29T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-29T17:38:54.080' AS DateTime), CAST(N'2021-06-29T17:38:54.080' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (139, 34, N'4397', N'PURCHASE', 0, 0, 0, 34935, 34935, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T17:17:23.953' AS DateTime), CAST(N'2021-06-30T17:17:23.953' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (140, 36, N'34163', N'PURCHASE', 0, 0, 0, 16000, 16000, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T17:18:43.410' AS DateTime), CAST(N'2021-06-30T17:18:43.410' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (141, 20, N'5400', N'PURCHASE', 0, 0, 0, 900, 900, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T17:20:44.413' AS DateTime), CAST(N'2021-06-30T17:20:44.413' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (142, 13, N'6565', N'PURCHASE', 0, 0, 0, 104919.6912, 104919.6912, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T17:23:34.297' AS DateTime), CAST(N'2021-06-30T17:23:34.297' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (143, 22, N'22', N'PURCHASE', 0, 0, 0, 4995, 4995, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T17:29:26.470' AS DateTime), CAST(N'2021-06-30T17:29:26.470' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (144, 22, N'1733', N'PURCHASE', 0, 0, 0, 14770, 14770, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-06-30T17:41:05.853' AS DateTime), CAST(N'2021-06-30T17:41:05.853' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (145, 34, N'133847', N'PURCHASE', 0, 0, 0, 1667, 1667, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T12:04:59.913' AS DateTime), CAST(N'2021-07-01T12:04:59.913' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (146, 34, N'12345', N'issued', 0, 0, 0, 60000, 60000, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-01T18:11:12.673' AS DateTime), CAST(N'2021-07-01T18:11:12.673' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (147, 34, N'9321', N'PURCHASE', 0, 0, 0, 60712, 60712, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-02T17:13:12.347' AS DateTime), CAST(N'2021-07-02T17:13:12.347' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (148, 34, N'76', N'PURCHASE', 0, 0, 0, 25686, 25686, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-02T17:29:16.530' AS DateTime), CAST(N'2021-07-02T17:29:16.530' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (149, 20, N'5400', N'PURCHASE', 0, 0, 0, 2510, 2510, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-02T17:38:57.600' AS DateTime), CAST(N'2021-07-02T17:38:57.600' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (150, 34, N'6057', N'PURCHASE', 0, 0, 0, 17820, 17820, CAST(N'2021-07-02T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-02T17:57:08.530' AS DateTime), CAST(N'2021-07-02T17:57:08.530' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (151, 22, N'45', N'PURCHASE', 0, 0, 0, 12050, 12050, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-02T18:16:14.913' AS DateTime), CAST(N'2021-07-02T18:16:14.913' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (152, 22, N'66', N'PURCHASE', 0, 0, 0, 7775, 7775, CAST(N'2021-07-02T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-02T18:25:53.677' AS DateTime), CAST(N'2021-07-02T18:25:53.677' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (153, 10, N'888', N'PURCHASE', 0, 0, 0, 71635, 71635, CAST(N'2021-07-01T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T15:04:49.803' AS DateTime), CAST(N'2021-07-03T15:04:49.803' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (154, 34, N'93765', N'PURCHASE', 0, 0, 0, 4110, 4110, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T15:17:35.440' AS DateTime), CAST(N'2021-07-03T15:17:35.440' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (155, 22, N'1601', N'PURCHASE', 0, 0, 0, 16955, 16955, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T15:25:04.300' AS DateTime), CAST(N'2021-07-03T15:25:04.300' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (156, 34, N'77570', N'PURCHASE', 0, 0, 0, 17264, 17264, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T15:45:25.847' AS DateTime), CAST(N'2021-07-03T15:45:25.847' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (157, 34, N'174820', N'PURCHASE', 0, 0, 0, 4509, 4509, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T16:10:16.353' AS DateTime), CAST(N'2021-07-03T16:10:16.353' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (158, 20, N'5400', N'PURCHASE', 0, 0, 0, 6295, 6295, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T16:11:47.200' AS DateTime), CAST(N'2021-07-03T16:11:47.200' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (159, 34, N'1832', N'PURCHASE', 0, 0, 0, 1538, 1538, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-03T19:08:26.077' AS DateTime), CAST(N'2021-07-03T19:08:26.077' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (160, 34, N'160', N'eggs,juice,beef,salmon', 0, 0, 0, 38335.2, 38335.2, CAST(N'2021-07-05T00:00:00.000' AS DateTime), 12, CAST(N'2021-07-05T17:25:18.430' AS DateTime), CAST(N'2021-07-05T17:25:18.430' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (161, 21, N'161', N'LPG GAS', 0, 0, 0, 38950.2, 38950.2, CAST(N'2021-07-03T00:00:00.000' AS DateTime), 12, CAST(N'2021-07-05T17:35:02.493' AS DateTime), CAST(N'2021-07-05T17:35:02.493' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (162, 20, N'14', N'PURCHASE', 0, 0, 0, 3777, 3777, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T14:07:57.237' AS DateTime), CAST(N'2021-07-06T14:07:57.237' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (163, 34, N'9383', N'PURCHASE', 0, 0, 0, 44056, 44056, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T14:14:00.193' AS DateTime), CAST(N'2021-07-06T14:14:00.193' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (164, 22, N'1650', N'PURCHASE', 0, 0, 0, 3671, 3671, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T14:26:20.383' AS DateTime), CAST(N'2021-07-06T14:26:20.383' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (165, 22, N'1651', N'PURCHASE', 0, 0, 0, 12960, 12960, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T14:41:28.167' AS DateTime), CAST(N'2021-07-06T14:41:28.167' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (166, 22, N'501', N'PURCHASE', 0, 0, 0, 15565, 15565, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T15:09:47.407' AS DateTime), CAST(N'2021-07-06T15:09:47.407' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (167, 37, N'6029', N'PURCHASE', 0, 0, 0, 13790, 13790, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T15:25:54.880' AS DateTime), CAST(N'2021-07-06T15:25:54.880' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (168, 20, N'20', N'PURCHASE', 0, 0, 0, 6295, 6295, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T15:35:44.640' AS DateTime), CAST(N'2021-07-06T15:35:44.640' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (169, 12, N'129213', N'PURCHASE', 0, 0, 0, 25176, 25176, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T16:15:49.603' AS DateTime), CAST(N'2021-07-06T16:15:49.603' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (170, 34, N'1842609', N'PURCHASE', 0, 0, 0, 1068, 1068, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T16:19:47.437' AS DateTime), CAST(N'2021-07-06T16:19:47.437' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (171, 34, N'4618', N'PURCHASE', 0, 0, 0, 5270, 5270, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T18:05:16.453' AS DateTime), CAST(N'2021-07-06T18:05:16.453' AS DateTime))
INSERT [dbo].[VendorToWarehouseHead] ([Id], [VendorId], [DocNo], [Remarks], [Discount], [SurCharge], [GstCharges], [GrossAmount], [TotalNetAmount], [TransactionDate], [CreatedBy], [CreationDate], [ModifyDate]) VALUES (172, 17, N'0128', N'PURCHASE', 0, 0, 0, 63600, 63600, CAST(N'2021-07-06T00:00:00.000' AS DateTime), 11, CAST(N'2021-07-06T18:06:19.093' AS DateTime), CAST(N'2021-07-06T18:06:19.093' AS DateTime))
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
/****** Object:  StoredProcedure [dbo].[Comsumption]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[IssueToDeptment]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ReturnToVendor]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ReturnToWareHouse]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ReturnVenderSummary]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ReturnVenderTowareHouseSummary]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[VenderPaymentLedgerSummary]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[VenderToWarhouse]    Script Date: 7/19/2021 4:58:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[WastageRepot]    Script Date: 7/19/2021 4:58:00 PM ******/
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
