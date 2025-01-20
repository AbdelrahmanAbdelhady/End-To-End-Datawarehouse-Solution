/****** Object:  Table [dbo].[Dim_Books]    Script Date: 1/18/2025 11:03:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Books](
	[book_sk] int identity(1,1) primary key ,
	[book_id] [int] NULL,
	[title] [varchar](400) NULL,
	[isbn13] [varchar](13) NULL,
	[language_code] [varchar](8) NULL,
	[language_name] [varchar](50) NULL,
	[publisher_name] [varchar](400) NULL ,
	[start_date] [datetime] not null default '01-01-1900',
	[end_date] [datetime] null 
) ON [PRIMARY]
GO
