


/****** Object:  Table [dbo].[Dim_Authors]    Script Date: 1/18/2025 11:04:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Authors](
	[author_sk] [int] identity(1,1) primary key ,
	[author_id] [int] NOT NULL,
	[author_name] [varchar](400) NULL,
	[start_date] [datetime] not null default '01-01-1900',
	[end_date] [datetime] null
) ON [PRIMARY]
GO

