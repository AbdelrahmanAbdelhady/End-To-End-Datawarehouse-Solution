
/****** Object:  Table [dbo].[Dim_Customers]    Script Date: 1/18/2025 11:03:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Customers](
	[customer_sk] int identity(1,1) primary key ,
	[customer_id] [int] NULL,
	[first_name] [varchar](200) NULL,
	[last_name] [varchar](200) NULL,
	[email] [varchar](350) NULL,
	[street_number] [varchar](10) NULL,
	[street_name] [varchar](200) NULL,
	[city] [varchar](100) NULL,
	[country_name] [varchar](200) NULL,
	[address_status] [varchar](30) NULL,
	[start_date] [datetime] not null default '01-01-1900',
	[end_date] [datetime] null
) ON [PRIMARY]
GO

