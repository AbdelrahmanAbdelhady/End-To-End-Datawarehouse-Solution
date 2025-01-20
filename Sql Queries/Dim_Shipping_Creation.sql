
/****** Object:  Table [dbo].[Dim_Shippings]    Script Date: 1/18/2025 11:04:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Shippings](
	[shipping_sk] int identity(1,1) primary key,
	[method_id] [int] NULL,
	[method_name] [varchar](100) NULL,
	[cost] [numeric](6, 2) NULL,
	[start_date] [datetime] not null default '01-01-1900',
	[end_date] [datetime] null
) ON [PRIMARY]
GO

/*****************************************************************/


