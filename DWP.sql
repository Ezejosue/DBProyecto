USE [proyect2]
GO
/****** Object:  Table [dbo].[bank]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bank] [nvarchar](255) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blood_type]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blood_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](10) NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[card_type]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[card_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](255) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[check_payment]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[check_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[check_number] [nvarchar](255) NULL,
	[id_bank] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[civil_status]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[civil_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](20) NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultation]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[price] [float] NOT NULL,
	[hospital_id] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consulting_room]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consulting_room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number] [int] NULL,
	[level_id] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[names] [varchar](80) NOT NULL,
	[surnames] [varchar](80) NOT NULL,
	[date_birth] [date] NOT NULL,
	[profession_id] [int] NOT NULL,
	[height] [float] NOT NULL,
	[weight] [float] NOT NULL,
	[eyes_color] [varchar](10) NOT NULL,
	[blood_type_id] [int] NULL,
	[civil_status_id] [int] NOT NULL,
	[country_id] [int] NOT NULL,
	[id_user_status] [int] NOT NULL,
	[id_user_pwd] [int] NOT NULL,
	[username] [varchar](20) NOT NULL,
	[id_type_user] [int] NOT NULL,
	[email] [nvarchar](320) NOT NULL,
	[salary_month] [float] NOT NULL,
	[salary_fortnight] [float] NULL,
	[salary_hour] [float] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_consulting_room]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_consulting_room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_consulting_room] [int] NULL,
	[id_employee] [int] NULL,
	[id_schedule_employee] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_direction]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_direction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[direction] [varchar](300) NOT NULL,
	[employee_id] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_log]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
	[generation_date] [datetime] NULL,
	[ip_device] [nvarchar](255) NULL,
	[id_log_type] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospital]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospital](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[direction] [varchar](300) NOT NULL,
	[country_id] [int] NOT NULL,
	[parking_quantity] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[level]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[level](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[hospital_id] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_type]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](20) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mail]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[hospital_id] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicine]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[type] [nvarchar](200) NOT NULL,
	[price] [float] NOT NULL,
	[description] [varchar](max) NOT NULL,
	[id_provider] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[surname] [nvarchar](255) NULL,
	[date_birth] [date] NULL,
	[profession_id] [int] NULL,
	[height] [float] NULL,
	[blood_type_id] [int] NULL,
	[civil_status_id] [int] NULL,
	[weight] [float] NULL,
	[eyes_color] [varchar](10) NULL,
	[country_id] [int] NULL,
	[email] [nvarchar](255) NULL,
	[hospital_id] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_direction]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_direction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[direction] [varchar](300) NULL,
	[patient_id] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_disease]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_disease](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[disease] [nvarchar](255) NULL,
	[treatment] [varchar](500) NULL,
	[patient_id] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_record]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_record](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[suffering] [nvarchar](255) NULL,
	[diagnosis] [nvarchar](255) NULL,
	[note] [nvarchar](255) NULL,
	[consultation_date] [datetime] NULL,
	[voucher_generated] [bit] NULL,
	[patient_id] [int] NULL,
	[employee_id] [int] NULL,
	[id_consultation] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_record_medicine]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_record_medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_patient_record] [int] NULL,
	[id_medicine] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_record_surgery]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_record_surgery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_patient_record] [int] NULL,
	[id_surgery] [int] NULL,
	[surgery_date] [datetime] NULL,
	[employee_id] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_relationship]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_relationship](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[surname] [nvarchar](255) NULL,
	[date_birth] [date] NULL,
	[profession] [nvarchar](255) NULL,
	[height] [float] NULL,
	[blood_type_id] [int] NULL,
	[weight] [float] NULL,
	[eyes_color] [varchar](10) NULL,
	[country_id] [int] NULL,
	[email] [nvarchar](255) NULL,
	[patient_id] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_card]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_card](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[owner] [nvarchar](255) NULL,
	[number] [nvarchar](255) NULL,
	[expiration] [datetime] NULL,
	[id_bank] [int] NULL,
	[id_card_type] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_type]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](255) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pharmacy]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pharmacy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hospital_id] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pharmacy_medicine]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pharmacy_medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[date_admission] [datetime] NOT NULL,
	[pharmacy_id] [int] NOT NULL,
	[medicine_id] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profession]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profession](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profession] [varchar](30) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[price_per_day] [float] NOT NULL,
	[level_id] [int] NOT NULL,
	[id_room_type] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room_type]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](20) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_hour] [nvarchar](255) NULL,
	[end_hour] [nvarchar](255) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule_employee]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule_employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_schedule] [int] NULL,
	[id_employee] [int] NULL,
	[id_schedule_freq_type] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule_freq_type]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule_freq_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[freq] [nvarchar](255) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[direction] [varchar](300) NOT NULL,
	[telephone] [varchar](200) NOT NULL,
	[email] [nvarchar](320) NOT NULL,
	[contact_person] [nvarchar](255) NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[surgery]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[surgery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[cost] [float] NULL,
	[id_room] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telephone_employee]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[employee_id] [int] NOT NULL,
	[telephone_type_id] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telephone_hospital]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_hospital](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[hospital_id] [int] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telephone_patient]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_patient](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [varchar](20) NULL,
	[patient_id] [int] NULL,
	[telephone_type_id] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telephone_type]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](10) NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_user]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](255) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_pwd]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_pwd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[is_active] [bit] NULL,
	[pwd] [nvarchar](255) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_status]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](255) NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_patient_record] [int] NULL,
	[transaction_date] [datetime] NULL,
	[id_payment_type] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_card_payment]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_card_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_voucher] [int] NULL,
	[id_card_payment] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_check_payment]    Script Date: 18/10/2021 21:21:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_check_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_voucher] [int] NULL,
	[id_check_payment] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[blood_type] ON 
GO
INSERT [dbo].[blood_type] ([id], [type], [creation_date], [update_date]) VALUES (1, N'O Negativo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[blood_type] ([id], [type], [creation_date], [update_date]) VALUES (2, N'O Positivo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[blood_type] ([id], [type], [creation_date], [update_date]) VALUES (3, N'A Negativo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[blood_type] ([id], [type], [creation_date], [update_date]) VALUES (4, N'A Positivo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[blood_type] ([id], [type], [creation_date], [update_date]) VALUES (5, N'B Negativo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[blood_type] ([id], [type], [creation_date], [update_date]) VALUES (6, N'B Positivo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[blood_type] OFF
GO
SET IDENTITY_INSERT [dbo].[civil_status] ON 
GO
INSERT [dbo].[civil_status] ([id], [status], [creation_date], [update_date]) VALUES (1, N'Soltero', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[civil_status] ([id], [status], [creation_date], [update_date]) VALUES (2, N'Casado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[civil_status] ([id], [status], [creation_date], [update_date]) VALUES (3, N'Viudo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[civil_status] ([id], [status], [creation_date], [update_date]) VALUES (4, N'Divorciado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[civil_status] ([id], [status], [creation_date], [update_date]) VALUES (5, N'Concubinato', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[civil_status] OFF
GO
SET IDENTITY_INSERT [dbo].[consultation] ON 
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (1, N'Consultorio A-1', 10, 1, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (2, N'Consultorio A-2', 15, 1, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (3, N'Consultorio A-1', 10, 10, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (4, N'Consultorio B-1', 30, 7, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (5, N'Consultorio C-2', 13.75, 6, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (6, N'Consultorio B-3', 12.99, 3, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (7, N'Consultorio A-4', 10, 4, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (8, N'Consultorio A-3', 20, 9, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (9, N'Consultorio A-9', 11, 2, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[consultation] ([id], [name], [price], [hospital_id], [creation_date], [update_date]) VALUES (10, N'Consultorio A-7', 17.5, 9, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[consultation] OFF
GO
SET IDENTITY_INSERT [dbo].[country] ON 
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (1, N'El Salvador', CAST(N'2021-07-06T16:30:06.873' AS DateTime), CAST(N'2021-07-06T16:30:06.873' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (2, N'Honduras', CAST(N'2021-07-06T16:30:06.873' AS DateTime), CAST(N'2021-07-06T16:30:06.873' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (3, N'México', CAST(N'2021-07-06T16:30:06.873' AS DateTime), CAST(N'2021-07-06T16:30:06.873' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (4, N'Guatemala', CAST(N'2021-07-06T16:30:06.873' AS DateTime), CAST(N'2021-07-06T16:30:06.873' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (5, N'Costa Rica', CAST(N'2021-07-06T16:30:06.873' AS DateTime), CAST(N'2021-07-06T16:30:06.873' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (6, N'Colombia', CAST(N'2021-07-06T16:30:06.873' AS DateTime), CAST(N'2021-07-06T16:30:06.873' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (7, N'Argentina', CAST(N'2021-07-06T16:30:06.873' AS DateTime), CAST(N'2021-07-06T16:30:06.873' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (8, N'Estados Unidos', CAST(N'2021-07-06T16:30:06.873' AS DateTime), CAST(N'2021-07-06T16:30:06.873' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (9, N'Paraguay', CAST(N'2021-07-06T16:30:06.873' AS DateTime), CAST(N'2021-07-06T16:30:06.873' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (10, N'Nicaragua', CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (216, N'Sao Tome and Principe', CAST(N'2021-10-08T00:00:00.000' AS DateTime), CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (217, N'Nigeria', CAST(N'2021-10-16T00:00:00.000' AS DateTime), CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (218, N'Kazakhstan', CAST(N'2021-10-17T00:00:00.000' AS DateTime), CAST(N'2021-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (219, N'Turkmenistan', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (220, N'Nepal', CAST(N'2021-10-02T00:00:00.000' AS DateTime), CAST(N'2021-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (221, N'Brunei', CAST(N'2021-10-11T00:00:00.000' AS DateTime), CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[country] ([id], [name], [creation_date], [update_date]) VALUES (222, N'Kuwait', CAST(N'2021-10-01T00:00:00.000' AS DateTime), CAST(N'2021-10-17T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[country] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (1, N'Luis Alonso', N'Perez Gonzalez', CAST(N'1996-05-25' AS Date), 1, 1.75, 110, N'Café', 1, 1, 2, 1, 1, N'LuisitoAl', 2, N'luisito@gmail.com', 750, 20, 5, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (2, N'Fabiola Nicole', N'Martinez Ramirez', CAST(N'2001-02-19' AS Date), 2, 1.6, 115, N'Café', 1, 1, 2, 1, 2, N'FabiolaMar', 2, N'faby@gmail.com', 800, 30, 8, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (3, N'Daniel Antonio', N'Manzanarez', CAST(N'1995-06-11' AS Date), 5, 1.6, 125, N'Azules', 3, 1, 2, 1, 3, N'danielAnt', 2, N'dany@gmail.com', 750, 20, 5, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (4, N'Ricardo José', N'Lopez Gonzalez', CAST(N'2000-12-30' AS Date), 3, 1.8, 150, N'Café', 1, 3, 10, 4, 4, N'kaky', 1, N'kaky@gmail.com', 750, 20, 5, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (5, N'Josue Ezequiel', N'Avalos Avalos', CAST(N'1990-12-30' AS Date), 3, 1.8, 150, N'Café', 1, 3, 10, 4, 5, N'ezequiel', 1, N'ezequi@gmail.com', 1000, 40, 8, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (6, N'Adan Alberto', N'Lopez Najarro', CAST(N'1970-07-06' AS Date), 3, 1.8, 133, N'Verde', 1, 3, 10, 1, 6, N'kaky', 1, N'adan007@gmail.com', 750, 20, 5, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (7, N'Raul Alejandro', N'Martinez Ocasio', CAST(N'1994-01-01' AS Date), 3, 1.8, 150, N'Café', 1, 3, 10, 4, 7, N'RauwA', 1, N'rauwvv@gmail.com', 750, 20, 5, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (8, N'Karla Maria', N'Barillas Flores ', CAST(N'2000-09-11' AS Date), 3, 1.55, 100, N'Negros', 2, 3, 10, 4, 8, N'kaMaria', 1, N'kamari@gmail.com', 750, 20, 5, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (9, N'Carlos Arturo', N'Gallardo Hernandez', CAST(N'1980-02-07' AS Date), 3, 1.8, 150, N'Café', 2, 3, 10, 4, 9, N'kaky', 1, N'kaky@gmail.com', 750, 20, 5, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee] ([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour], [creation_date], [update_date]) VALUES (10, N'Carmen Rosivell', N'Valle', CAST(N'1970-07-07' AS Date), 3, 1.8, 150, N'Café', 3, 3, 10, 4, 10, N'kaky', 1, N'kaky@gmail.com', 750, 20, 5, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[employee_direction] ON 
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (1, N'Calle Gerardo Barrios, 17 AV. Sur #412', 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (2, N'Calle Gerardo Barrios, 18 AV. Sur #14', 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (3, N'Calle Gerardo Barrios, 17 AV. Sur #405', 3, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (4, N'Blvd Del Ejérc Nac Urb Altos Del Boulevard 50 Av Nte', 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (5, N'Blvd Del Ejérc Nac Urb Altos Del Boulevard 49 Av Sur', 6, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (6, N'Blvd De los heroes 30 Av Sur', 6, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (7, N'Alam Roosevelt 37 Av S 117', 6, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (8, N'Alam Roosevelt 20 Av S 10', 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (9, N'Alam Roosevelt 19 Av N 120', 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[employee_direction] ([id], [direction], [employee_id], [creation_date], [update_date]) VALUES (10, N'Col Lincoln Cl Castro Morán 7 - 1', 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[employee_direction] OFF
GO
SET IDENTITY_INSERT [dbo].[hospital] ON 
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (1, N'Hospital San Juan', N'29 Cl Pte y 11 Av Nte Bo San Miguelito', 1, 25, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (2, N'Hospital San Miguel', N'28 Cl Pte y 12 Av Nte Bo San Miguelito', 4, 25, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (3, N'Hospital Centro Medico', N'Alam Roosevelt 37 Av S 114', 10, 30, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (4, N'Hospital La familia', N'Alam Roosevelt 35 Av N 120', 9, 100, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (5, N'Hospital Salud integral', N'Alam San Juan 20 Av S 113', 3, 30, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (6, N'Hospital de la mujer', N'Alam Roosevelt 37 Av S 114', 7, 30, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (7, N'Centro Medico general', N'Calle Gerardo Barrios, 18 AV. Sur #350', 1, 30, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (8, N'Centro Lopez Herrera', N'Calle Gustavo Guerrero, 14 AV. Norte #20', 2, 20, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (9, N'Centro Medico Benito Martinez', N'Calle Luis Poma, 20 AV. Sur #10', 3, 50, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (10, N'Hospital El Museo', N'Calle el museo, 1 AV. Norte #142', 6, 63, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
INSERT [dbo].[hospital] ([id], [name], [direction], [country_id], [parking_quantity], [creation_date], [update_date]) VALUES (11, N'Centro Medico El conejo', N'Calle el conejo, 2 AV. Sur #351', 1, 10, CAST(N'2021-07-06T16:30:06.877' AS DateTime), CAST(N'2021-07-06T16:30:06.877' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[hospital] OFF
GO
SET IDENTITY_INSERT [dbo].[level] ON 
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (1, N'Nivel 1A', 1, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (2, N'Nivel 2A', 1, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (3, N'Nivel 2A', 10, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (4, N'Nivel 3A', 5, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (5, N'Nivel 3B', 4, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (6, N'Nivel 1B', 6, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (7, N'Nivel 1C', 1, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (8, N'Nivel 4A', 7, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (9, N'Nivel A1', 10, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[level] ([id], [name], [hospital_id], [creation_date], [update_date]) VALUES (10, N'Nivel A1', 7, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[level] OFF
GO
SET IDENTITY_INSERT [dbo].[mail] ON 
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (1, N'hospitalcontacto@sociedadSaludable.com', 1, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (2, N'hospitalSM@sociedadSaludable.com', 2, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (3, N'hospitalCentroMedicocontacto@sociedadSaludable.com', 3, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (4, N'hospitalSJ@sociedadSaludable.com', 1, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (5, N'cmLopezHerrera@sociedadSaludable.com', 8, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (6, N'cmelconejo@sociedadSaludable.com', 11, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (7, N'hospitalmuseo@sociedadSaludable.com', 10, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (8, N'hospitaldelamujer@sociedadSaludable.com', 6, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (9, N'hospitalmedicogeneral@sociedadSaludable.com', 7, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[mail] ([id], [email], [hospital_id], [creation_date], [update_date]) VALUES (10, N'hospitalsaludintegral@sociedadSaludable.com', 5, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[mail] OFF
GO
SET IDENTITY_INSERT [dbo].[medicine] ON 
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (1, N'Amoxicilina', N'Antibiotico', 2.5, N'La amoxicilina es un antibiótico similar a la ampicilina', 1, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (2, N'Penicilina', N'Antibiotico', 50, N'La penicilina fue el primer antibiótico descubierto y a día de hoy se sigue utilizando con frecuencia. Se trata también de un bactericida que bloquea la síntesis y reparación de la pared bacteriana, por lo que es de amplio espectro.', 2, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (3, N'Tetraciclina', N'Antibiotico', 20, N'La tetraciclina es un antibiótico bacteriostático, es decir, no mata a las bacterias (como sí hacen los bactericidas) pero inhibe su crecimiento.', 3, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (4, N'Estreptomicina', N'Antibiotico', 80, N'La estreptomicina es un antibiótico bactericida que daña a los ribosomas, unas estructuras celulares encargadas de sintetizar las proteínas. Esto hace que las bacterias mueran.', 4, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (5, N'Cetirizina', N'Antihistamínicos', 4.5, N'La cetirizina es un fármaco utilizado para el tratamiento de la alergia.', 4, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (6, N'Desloratadina', N'Antihistamínicos', 4.5, N'La desloratadina es un fármaco antihistamínico utilizado para tratar alergias', 10, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (7, N'Fexofenadina', N'Antihistamínicos', 7, N' es un medicamento antihistamínico usado en el tratamiento de síntomas de alergia', 7, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (8, N'Levocetirizina', N'Antihistamínicos', 8.5, N' es un antihistamínico utilizado para el tratamiento de la rinitis alérgica', 8, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (9, N'Oxacilina', N'Antibiotico', 5.5, N'es un antibiótico betalactámico, de espectro reducido del grupo de las penicilinas', 10, CAST(N'2021-07-06T16:36:51.557' AS DateTime), CAST(N'2021-07-06T16:36:51.557' AS DateTime))
GO
INSERT [dbo].[medicine] ([id], [name], [type], [price], [description], [id_provider], [creation_date], [update_date]) VALUES (10, N'Loratadina', N'Antihistamínicos', 1.5, N'es un fármaco usado para tratar alergias', 9, CAST(N'2021-07-06T16:36:51.567' AS DateTime), CAST(N'2021-07-06T16:36:51.567' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[pharmacy] ON 
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (1, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (2, 2, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (3, 3, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (4, 4, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (5, 5, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (6, 6, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (7, 7, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (8, 8, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (9, 9, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[pharmacy] ([id], [hospital_id], [creation_date], [update_date]) VALUES (10, 10, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[pharmacy] OFF
GO
SET IDENTITY_INSERT [dbo].[pharmacy_medicine] ON 
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (1, 100, CAST(N'2021-07-06T16:33:49.670' AS DateTime), 1, 1, CAST(N'2021-07-06T16:33:49.670' AS DateTime), CAST(N'2021-07-06T16:33:49.670' AS DateTime))
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (2, 200, CAST(N'2021-07-06T16:33:49.680' AS DateTime), 1, 4, CAST(N'2021-07-06T16:33:49.680' AS DateTime), CAST(N'2021-07-06T16:33:49.680' AS DateTime))
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (3, 784, CAST(N'2021-07-06T16:33:49.680' AS DateTime), 3, 7, CAST(N'2021-07-06T16:33:49.680' AS DateTime), CAST(N'2021-07-06T16:33:49.680' AS DateTime))
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (5, 374, CAST(N'2021-07-06T16:33:49.680' AS DateTime), 10, 2, CAST(N'2021-07-06T16:33:49.680' AS DateTime), CAST(N'2021-07-06T16:33:49.680' AS DateTime))
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (6, 654, CAST(N'2021-07-06T16:36:55.973' AS DateTime), 5, 10, CAST(N'2021-07-06T16:36:55.973' AS DateTime), CAST(N'2021-07-06T16:36:55.973' AS DateTime))
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (7, 50, CAST(N'2021-07-06T16:40:12.653' AS DateTime), 1, 2, CAST(N'2021-07-06T16:40:12.653' AS DateTime), CAST(N'2021-07-06T16:40:12.653' AS DateTime))
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (8, 1000, CAST(N'2021-07-06T16:40:12.687' AS DateTime), 7, 4, CAST(N'2021-07-06T16:40:12.687' AS DateTime), CAST(N'2021-07-06T16:40:12.687' AS DateTime))
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (9, 845, CAST(N'2021-07-06T16:40:12.687' AS DateTime), 6, 1, CAST(N'2021-07-06T16:40:12.687' AS DateTime), CAST(N'2021-07-06T16:40:12.687' AS DateTime))
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (10, 700, CAST(N'2021-07-06T16:40:12.687' AS DateTime), 2, 4, CAST(N'2021-07-06T16:40:12.687' AS DateTime), CAST(N'2021-07-06T16:40:12.687' AS DateTime))
GO
INSERT [dbo].[pharmacy_medicine] ([id], [quantity], [date_admission], [pharmacy_id], [medicine_id], [creation_date], [update_date]) VALUES (11, 500, CAST(N'2021-07-06T16:40:12.687' AS DateTime), 4, 6, CAST(N'2021-07-06T16:40:12.687' AS DateTime), CAST(N'2021-07-06T16:40:12.687' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[pharmacy_medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[profession] ON 
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (1, N'Medico', CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (2, N'Cirujano', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (3, N'Ingeniero', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (4, N'Secretaria', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (5, N'Medico general', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (6, N'Licenciado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (7, N'Técnico', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (8, N'Administrador', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (9, N'Medico', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[profession] ([id], [profession], [creation_date], [update_date]) VALUES (10, N'Anestesiologo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[profession] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON 
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (1, N'Habitación 1', 8.5, 1, 2, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (2, N'Habitación 2', 10, 2, 3, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (3, N'Habitación San Juan', 20, 8, 2, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (4, N'Habitación La Familia', 35, 7, 3, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (5, N'Habitación Buenavista', 75, 5, 9, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (6, N'Habitación San Marcos', 45, 7, 5, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (7, N'Habitación El trevor', 45, 8, 8, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (8, N'Habitación B', 13.75, 3, 4, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (9, N'Habitación C', 33.2, 9, 7, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[room] ([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date]) VALUES (10, N'Habitación D', 17.5, 5, 8, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[room] OFF
GO
SET IDENTITY_INSERT [dbo].[room_type] ON 
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (1, N'Pequeña', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (2, N'Para cirugias', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (3, N'Habitación', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (4, N'Consultorio', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (5, N'Grande', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (6, N'Multiusos', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (7, N'Descanso', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (8, N'Mediana', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (9, N'De espera', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
INSERT [dbo].[room_type] ([id], [type], [creation_date], [update_date]) VALUES (10, N'Administración', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[room_type] OFF
GO
SET IDENTITY_INSERT [dbo].[supplier] ON 
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (1, N'Pfizer', N'Colonia Buenos Aires 3, Diagonal Centroamérica, Avenida Alvarado, contiguo al Ministerio de Hacienda', N'7458-9857', N'pfizer@gmail.com', N'Amanda Hernandez', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (2, N'Laboratorios Lopez', N'1ª Calle Poniente entre 60ª Avenida Norte y Boulevard Constitución No. 3549', N'7458-0000', N'lablo@gmail.com', N'Armando lopez', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (3, N'Laboratorios Vermex', N'1ª Calle Poniente entre 59ª Avenida Sur y Boulevard Constitución No. 3000', N'1458-7000', N'labVer@gmail.com', N'Manuel Valle', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (4, N'Laboratorios La salud', N'2ª Calle Poniente entre 30ª Avenida Norte y Boulevard el ejercito No. 1445', N'7402-9999', N'labLaSalud@gmail.com', N'Daniel Lopez', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (5, N'Laboratorios la esperanza', N'10ª Calle Poniente entre 49ª Avenida Sur y Boulevard los proceres No. 1478', N'7411-8742', N'labesperanza@gmail.com', N'Armando lopez', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (6, N'Laboratorios BestandLab', N'Colonia San Francisco, Avenida Las Camelias y Calle Los Abetos No. 22', N'6425-7485', N'bestandLab@gmail.com', N'Yancy Lopez', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (7, N'Laboratorios FarHome', N'Colonia San Juan, Avenida Las Camelias y Calle Los Abetos No. 1245', N'2596-8574', N'FarHome@gmail.com', N'Karen Lopez', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (8, N'Laboratorios San Jose', N'Colonia San Lucas, Avenida Las Camelias y Calle Los Abetos No. 1458', N'4517-9895', N'sanjoselab@gmail.com', N'Karen Lopez', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (9, N'Laboratorios Bayer', N'10ª Avenida Sur y Calle Lara No. 935, Barrio San Jacinto', N'2596-8574', N'bayer@gmail.com', N'Issela Mejia', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
INSERT [dbo].[supplier] ([id], [name], [direction], [telephone], [email], [contact_person], [creation_date], [update_date]) VALUES (10, N'Laboratorios Moderna', N'10ª Avenida Sur y Calle Lara No. 940, Barrio San Jacinto', N'4589-65100', N'labmoderna@gmail.com', N'Juan Andres', CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[telephone_employee] ON 
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (1, N'7487-8497', 1, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (2, N'7487-8498', 1, 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (3, N'2525-2477', 2, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (4, N'7482-0000', 2, 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (5, N'2257-1452', 3, 3, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (6, N'7071-7372', 3, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (7, N'7885-5842', 1, 3, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (8, N'2541-7458', 3, 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (9, N'7574-8500', 6, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (10, N'7454-8715', 6, 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_employee] ([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date]) VALUES (11, N'4569-8751', 6, 3, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[telephone_employee] OFF
GO
SET IDENTITY_INSERT [dbo].[telephone_hospital] ON 
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (1, N'7458-8452', 1, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (2, N'7458-8333', 2, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (3, N'7458-0000', 3, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (4, N'6569-8452', 1, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (5, N'2525-2626', 10, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (6, N'7458-8888', 7, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (7, N'2758-8574', 9, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (8, N'7458-8453', 6, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (9, N'7458-7475', 5, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
INSERT [dbo].[telephone_hospital] ([id], [phone], [hospital_id], [creation_date], [update_date]) VALUES (10, N'8571-8840', 1, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[telephone_hospital] OFF
GO
SET IDENTITY_INSERT [dbo].[telephone_type] ON 
GO
INSERT [dbo].[telephone_type] ([id], [type], [creation_date], [update_date]) VALUES (1, N'Movil', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_type] ([id], [type], [creation_date], [update_date]) VALUES (2, N'Casa', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[telephone_type] ([id], [type], [creation_date], [update_date]) VALUES (3, N'Trabajo', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[telephone_type] OFF
GO
SET IDENTITY_INSERT [dbo].[type_user] ON 
GO
INSERT [dbo].[type_user] ([id], [type], [creation_date], [update_date]) VALUES (1, N'Administrado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[type_user] ([id], [type], [creation_date], [update_date]) VALUES (2, N'Empleado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[type_user] ([id], [type], [creation_date], [update_date]) VALUES (3, N'Secretario', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[type_user] ([id], [type], [creation_date], [update_date]) VALUES (4, N'Super Admin', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[type_user] OFF
GO
SET IDENTITY_INSERT [dbo].[user_pwd] ON 
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (1, 0, N'123456', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (2, 1, N'ABCDEF', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (3, 0, N'lucasxd', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (4, 1, N'pocho123456', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (5, 0, N'20020147525', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (6, 1, N'admin', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (7, 0, N'bono', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (8, 1, N'kakPac', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (9, 0, N'josueayalaxd', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
INSERT [dbo].[user_pwd] ([id], [is_active], [pwd], [creation_date], [update_date]) VALUES (10, 1, N'6543210', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[user_pwd] OFF
GO
SET IDENTITY_INSERT [dbo].[user_status] ON 
GO
INSERT [dbo].[user_status] ([id], [status], [creation_date], [update_date]) VALUES (1, N'Activo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[user_status] ([id], [status], [creation_date], [update_date]) VALUES (2, N'Inactivo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[user_status] ([id], [status], [creation_date], [update_date]) VALUES (3, N'Deshabilitado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
INSERT [dbo].[user_status] ([id], [status], [creation_date], [update_date]) VALUES (4, N'Bloqueado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[user_status] OFF
GO
ALTER TABLE [dbo].[check_payment]  WITH CHECK ADD FOREIGN KEY([id_bank])
REFERENCES [dbo].[bank] ([id])
GO
ALTER TABLE [dbo].[consultation]  WITH CHECK ADD FOREIGN KEY([hospital_id])
REFERENCES [dbo].[hospital] ([id])
GO
ALTER TABLE [dbo].[consulting_room]  WITH CHECK ADD FOREIGN KEY([level_id])
REFERENCES [dbo].[level] ([id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([blood_type_id])
REFERENCES [dbo].[blood_type] ([id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([civil_status_id])
REFERENCES [dbo].[civil_status] ([id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([id_type_user])
REFERENCES [dbo].[type_user] ([id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([id_user_status])
REFERENCES [dbo].[user_status] ([id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([id_user_pwd])
REFERENCES [dbo].[user_pwd] ([id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([profession_id])
REFERENCES [dbo].[profession] ([id])
GO
ALTER TABLE [dbo].[employee_consulting_room]  WITH CHECK ADD FOREIGN KEY([id_consulting_room])
REFERENCES [dbo].[consulting_room] ([id])
GO
ALTER TABLE [dbo].[employee_consulting_room]  WITH CHECK ADD FOREIGN KEY([id_employee])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[employee_consulting_room]  WITH CHECK ADD FOREIGN KEY([id_schedule_employee])
REFERENCES [dbo].[schedule_employee] ([id])
GO
ALTER TABLE [dbo].[employee_direction]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[employee_log]  WITH CHECK ADD FOREIGN KEY([id_employee])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[employee_log]  WITH CHECK ADD FOREIGN KEY([id_log_type])
REFERENCES [dbo].[log_type] ([id])
GO
ALTER TABLE [dbo].[hospital]  WITH CHECK ADD FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([id])
GO
ALTER TABLE [dbo].[level]  WITH CHECK ADD FOREIGN KEY([hospital_id])
REFERENCES [dbo].[hospital] ([id])
GO
ALTER TABLE [dbo].[mail]  WITH CHECK ADD FOREIGN KEY([hospital_id])
REFERENCES [dbo].[hospital] ([id])
GO
ALTER TABLE [dbo].[medicine]  WITH CHECK ADD FOREIGN KEY([id_provider])
REFERENCES [dbo].[supplier] ([id])
GO
ALTER TABLE [dbo].[patient]  WITH CHECK ADD FOREIGN KEY([blood_type_id])
REFERENCES [dbo].[blood_type] ([id])
GO
ALTER TABLE [dbo].[patient]  WITH CHECK ADD FOREIGN KEY([civil_status_id])
REFERENCES [dbo].[civil_status] ([id])
GO
ALTER TABLE [dbo].[patient]  WITH CHECK ADD FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([id])
GO
ALTER TABLE [dbo].[patient]  WITH CHECK ADD FOREIGN KEY([hospital_id])
REFERENCES [dbo].[hospital] ([id])
GO
ALTER TABLE [dbo].[patient]  WITH CHECK ADD FOREIGN KEY([profession_id])
REFERENCES [dbo].[profession] ([id])
GO
ALTER TABLE [dbo].[patient_direction]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
GO
ALTER TABLE [dbo].[patient_disease]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
GO
ALTER TABLE [dbo].[patient_record]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[patient_record]  WITH CHECK ADD FOREIGN KEY([id_consultation])
REFERENCES [dbo].[consultation] ([id])
GO
ALTER TABLE [dbo].[patient_record]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
GO
ALTER TABLE [dbo].[patient_record_medicine]  WITH CHECK ADD FOREIGN KEY([id_medicine])
REFERENCES [dbo].[medicine] ([id])
GO
ALTER TABLE [dbo].[patient_record_medicine]  WITH CHECK ADD FOREIGN KEY([id_patient_record])
REFERENCES [dbo].[patient_record] ([id])
GO
ALTER TABLE [dbo].[patient_record_surgery]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[patient_record_surgery]  WITH CHECK ADD FOREIGN KEY([id_patient_record])
REFERENCES [dbo].[patient_record] ([id])
GO
ALTER TABLE [dbo].[patient_record_surgery]  WITH CHECK ADD FOREIGN KEY([id_surgery])
REFERENCES [dbo].[surgery] ([id])
GO
ALTER TABLE [dbo].[patient_relationship]  WITH CHECK ADD FOREIGN KEY([blood_type_id])
REFERENCES [dbo].[blood_type] ([id])
GO
ALTER TABLE [dbo].[patient_relationship]  WITH CHECK ADD FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([id])
GO
ALTER TABLE [dbo].[patient_relationship]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
GO
ALTER TABLE [dbo].[payment_card]  WITH CHECK ADD FOREIGN KEY([id_bank])
REFERENCES [dbo].[bank] ([id])
GO
ALTER TABLE [dbo].[payment_card]  WITH CHECK ADD FOREIGN KEY([id_card_type])
REFERENCES [dbo].[card_type] ([id])
GO
ALTER TABLE [dbo].[pharmacy]  WITH CHECK ADD FOREIGN KEY([hospital_id])
REFERENCES [dbo].[hospital] ([id])
GO
ALTER TABLE [dbo].[pharmacy_medicine]  WITH CHECK ADD FOREIGN KEY([medicine_id])
REFERENCES [dbo].[medicine] ([id])
GO
ALTER TABLE [dbo].[pharmacy_medicine]  WITH CHECK ADD FOREIGN KEY([pharmacy_id])
REFERENCES [dbo].[pharmacy] ([id])
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD FOREIGN KEY([id_room_type])
REFERENCES [dbo].[room_type] ([id])
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD FOREIGN KEY([level_id])
REFERENCES [dbo].[level] ([id])
GO
ALTER TABLE [dbo].[schedule_employee]  WITH CHECK ADD FOREIGN KEY([id_employee])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[schedule_employee]  WITH CHECK ADD FOREIGN KEY([id_schedule])
REFERENCES [dbo].[schedule] ([id])
GO
ALTER TABLE [dbo].[schedule_employee]  WITH CHECK ADD FOREIGN KEY([id_schedule_freq_type])
REFERENCES [dbo].[schedule_freq_type] ([id])
GO
ALTER TABLE [dbo].[surgery]  WITH CHECK ADD FOREIGN KEY([id_room])
REFERENCES [dbo].[room] ([id])
GO
ALTER TABLE [dbo].[telephone_employee]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[telephone_employee]  WITH CHECK ADD FOREIGN KEY([telephone_type_id])
REFERENCES [dbo].[telephone_type] ([id])
GO
ALTER TABLE [dbo].[telephone_hospital]  WITH CHECK ADD FOREIGN KEY([hospital_id])
REFERENCES [dbo].[hospital] ([id])
GO
ALTER TABLE [dbo].[telephone_patient]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
GO
ALTER TABLE [dbo].[telephone_patient]  WITH CHECK ADD FOREIGN KEY([telephone_type_id])
REFERENCES [dbo].[telephone_type] ([id])
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD FOREIGN KEY([id_patient_record])
REFERENCES [dbo].[patient_record] ([id])
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD FOREIGN KEY([id_payment_type])
REFERENCES [dbo].[payment_type] ([id])
GO
ALTER TABLE [dbo].[voucher_card_payment]  WITH CHECK ADD FOREIGN KEY([id_card_payment])
REFERENCES [dbo].[payment_card] ([id])
GO
ALTER TABLE [dbo].[voucher_card_payment]  WITH CHECK ADD FOREIGN KEY([id_voucher])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[voucher_check_payment]  WITH CHECK ADD FOREIGN KEY([id_check_payment])
REFERENCES [dbo].[check_payment] ([id])
GO
ALTER TABLE [dbo].[voucher_check_payment]  WITH CHECK ADD FOREIGN KEY([id_voucher])
REFERENCES [dbo].[voucher] ([id])
GO


/*LLENADO DE DATOS*/	

--Llenando tabla hospital--
alter table hospital
drop column update_date


alter table hospital
drop column update_date

select * from hospital
INSERT INTO hospital VALUES('Nicholas','St. Jamess  Street, 3343','1',598);
INSERT INTO hospital VALUES('Cynthia','Argyle  Tunnel, 365','2',669);
INSERT INTO hospital VALUES('Ryan','Chesterfield  Route, 2858','3',679);
INSERT INTO hospital VALUES('Rocco','Gatonby   Way, 3822','4',692);
INSERT INTO hospital VALUES('Tyler','Sundown Avenue, 7243','5',156);
INSERT INTO hospital VALUES('Doug','Belmore  Avenue, 6325','6',425);
INSERT INTO hospital VALUES('Javier','Underwood  Alley, 5722','7',590);
INSERT INTO hospital VALUES('Marissa','Kinglake  Way, 911','8',61);
INSERT INTO hospital VALUES('Eduardo','Abbotswell  Route, 1692','9',208);
INSERT INTO hospital VALUES('Kenzie','Bective  Grove, 7793','10',279);
INSERT INTO hospital VALUES('Julian','Timber   Tunnel, 3585','11',72);
INSERT INTO hospital VALUES('Josh','Bective  Tunnel, 2237','12',119);
INSERT INTO hospital VALUES('Winnie','Baltic  Boulevard, 3538','13',947);
INSERT INTO hospital VALUES('Stephanie','Becher  Tunnel, 4079','14',788);
INSERT INTO hospital VALUES('Aiden','Apollo  Road, 431','15',481);
INSERT INTO hospital VALUES('Julian','Chalcot  Road, 8088','16',851);
INSERT INTO hospital VALUES('Aileen','Pine Lane, 2380','17',209);
INSERT INTO hospital VALUES('Denis','Buttonwood Boulevard, 276','18',455);
INSERT INTO hospital VALUES('Marilyn','Black Swan  Drive, 7406','19',3);
INSERT INTO hospital VALUES('Zoe','Bloomsbury  Vale, 5534','20',861);
INSERT INTO hospital VALUES('Karla','Howard Grove, 7766','21',496);
INSERT INTO hospital VALUES('Sarah','Chester      Route, 6618','22',362);
INSERT INTO hospital VALUES('Emerald','Arundel   Pass, 1335','23',565);
INSERT INTO hospital VALUES('Penny','Fairfield  Boulevard, 1004','24',881);
INSERT INTO hospital VALUES('Aiden','Bond Route, 7107','25',780);
INSERT INTO hospital VALUES('Juliette','Monroe Street, 6515','26',886);
INSERT INTO hospital VALUES('Mason','Cavell   Street, 6163','27',677);
INSERT INTO hospital VALUES('George','Vine  Grove, 1188','28',976);
INSERT INTO hospital VALUES('George','Gathorne   Pass, 927','29',211);
INSERT INTO hospital VALUES('Helen','Virginia Drive, 7753','30',280);
INSERT INTO hospital VALUES('Nate','Bedford  Vale, 8634','31',197);
INSERT INTO hospital VALUES('Phillip','Angel  Rue, 3877','32',471);
INSERT INTO hospital VALUES('Jane','Longleigh   Walk, 7913','33',547);
INSERT INTO hospital VALUES('Sebastian','Charnwood   Road, 9200','34',153);
INSERT INTO hospital VALUES('Kurt','Meadow Street, 8235','35',716);
INSERT INTO hospital VALUES('Francesca','Blackall   Walk, 7061','36',271);
INSERT INTO hospital VALUES('Havana','Tilson  Boulevard, 5130','37',463);
INSERT INTO hospital VALUES('Harvey','Byland  Grove, 2479','38',233);
INSERT INTO hospital VALUES('Harry','Carpenter Rue, 5762','39',529);
INSERT INTO hospital VALUES('Aiden','Boadicea   Avenue, 2391','40',73);
INSERT INTO hospital VALUES('Johnathan','Woodland Route, 159','41',977);
INSERT INTO hospital VALUES('Fred','Elystan  Grove, 7563','42',367);
INSERT INTO hospital VALUES('Miley','Clissold  Lane, 1465','43',108);
INSERT INTO hospital VALUES('Nick','Magnolia Vale, 7426','44',226);
INSERT INTO hospital VALUES('Jolene','Woodland Route, 8845','45',207);
INSERT INTO hospital VALUES('Michael','Westbourne Way, 4792','46',817);
INSERT INTO hospital VALUES('Nick','Black Swan  Street, 8410','47',534);
INSERT INTO hospital VALUES('Zoe','Woodland Walk, 8454','48',497);
INSERT INTO hospital VALUES('Aleksandra','Glenwood Boulevard, 5038','49',777);
INSERT INTO hospital VALUES('Julius','Empress  Way, 8248','50',84);
INSERT INTO hospital VALUES('Wade','Waldram Park  Drive, 6113','51',207);
INSERT INTO hospital VALUES('Sebastian','Dunton  Lane, 2857','52',679);
INSERT INTO hospital VALUES('Hayden','Carolina  Road, 596','53',713);
INSERT INTO hospital VALUES('Kurt','Battersea   Boulevard, 5640','54',898);
INSERT INTO hospital VALUES('Amelia','Heritage Route, 870','55',795);
INSERT INTO hospital VALUES('Gabriel','Cobden  Pass, 497','56',617);
INSERT INTO hospital VALUES('Tony','Fieldstone Way, 5956','57',604);
INSERT INTO hospital VALUES('Bree','Paris   Rue, 88','58',713);
INSERT INTO hospital VALUES('Marjorie','Fawn Tunnel, 2241','59',31);
INSERT INTO hospital VALUES('Harriet','Cardinal Lane, 937','60',86);
INSERT INTO hospital VALUES('Enoch','Elystan  Walk, 511','61',263);
INSERT INTO hospital VALUES('Andrea','Calverley  Road, 3030','62',926);
INSERT INTO hospital VALUES('Angelina','Clarks  Avenue, 4387','63',685);
INSERT INTO hospital VALUES('Natalie','Bagford   Boulevard, 2505','64',566);
INSERT INTO hospital VALUES('Benjamin','Black Swan  Way, 7170','65',244);
INSERT INTO hospital VALUES('Stephanie','Howard Boulevard, 4743','66',821);
INSERT INTO hospital VALUES('Maddison','Waldram Park  Grove, 6360','67',412);
INSERT INTO hospital VALUES('Rylee','Bede  Rue, 9434','68',476);
INSERT INTO hospital VALUES('Evie','Chapel  Drive, 7310','69',914);
INSERT INTO hospital VALUES('Rocco','English   Way, 6346','70',425);
INSERT INTO hospital VALUES('Tyson','Wadham  Avenue, 465','71',527);
INSERT INTO hospital VALUES('Doug','Badric  Route, 325','72',346);
INSERT INTO hospital VALUES('Lily','Magnolia Alley, 3600','73',97);
INSERT INTO hospital VALUES('Peter','Blue Anchor  Boulevard, 7798','74',203);
INSERT INTO hospital VALUES('Priscilla','Heritage Vale, 7629','75',646);
INSERT INTO hospital VALUES('Kimberly','Archery  Route, 9721','76',210);
INSERT INTO hospital VALUES('Audrey','Ernest  Rue, 8110','77',979);
INSERT INTO hospital VALUES('Russel','South Road, 1173','78',969);
INSERT INTO hospital VALUES('Rosalyn','Vintners  Grove, 2412','79',163);
INSERT INTO hospital VALUES('Marvin','Abourne   Rue, 6216','80',65);
INSERT INTO hospital VALUES('Abdul','Camberwell  Way, 786','81',171);
INSERT INTO hospital VALUES('Russel','Carol   Boulevard, 5712','82',885);
INSERT INTO hospital VALUES('Phillip','Shepherds  Rue, 1204','83',325);
INSERT INTO hospital VALUES('Manuel','Bigland  Alley, 7547','84',299);
INSERT INTO hospital VALUES('Michaela','Carolina  Boulevard, 6594','85',830);
INSERT INTO hospital VALUES('Manuel','Spruce Road, 2079','86',50);
INSERT INTO hospital VALUES('Ruth','Adelaide  Boulevard, 1352','87',662);
INSERT INTO hospital VALUES('Andie','Gathorne   Hill, 4377','88',585);
INSERT INTO hospital VALUES('Bart','Maple Boulevard, 9547','89',768);
INSERT INTO hospital VALUES('Phoebe','Besson  Lane, 4504','90',207);
INSERT INTO hospital VALUES('Naomi','Apollo  Drive, 7691','91',714);
INSERT INTO hospital VALUES('Adalie','Queen Caroline   Way, 9232','92',546);
INSERT INTO hospital VALUES('Luke','Kilner   Street, 8958','93',717);
INSERT INTO hospital VALUES('Harry','Elgood   Road, 7930','94',619);
INSERT INTO hospital VALUES('Maia','Adderley   Alley, 8437','95',800);
INSERT INTO hospital VALUES('Isabella','St. Jamess  Vale, 7597','96',544);
INSERT INTO hospital VALUES('Rebecca','Cam  Street, 5518','97',492);
INSERT INTO hospital VALUES('Jackeline','Chestnut  Avenue, 3716','98',544);
INSERT INTO hospital VALUES('Rosalee','Cavendish Tunnel, 4971','99',856);
INSERT INTO hospital VALUES('Evie','Black Swan  Street, 1513','100',526);