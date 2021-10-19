CREATE DATABASE proyect2
GO
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
drop column creation_date

select * from hospital
INSERT INTO hospital VALUES('Emma','Empress  Drive, 5843',3,277);
INSERT INTO hospital VALUES('Joy','Geary   Hill, 5511',9,498);
INSERT INTO hospital VALUES('Julius','Endsleigh  Route, 5228',9,250);
INSERT INTO hospital VALUES('Julian','Udall   Way, 341',5,230);
INSERT INTO hospital VALUES('Oliver','Battersea   Street, 4084',8,268);
INSERT INTO hospital VALUES('Madelyn','Maple Road, 6358',5,445);
INSERT INTO hospital VALUES('Jayden','Zealand Lane, 400',2,350);
INSERT INTO hospital VALUES('Sara','Canning  Way, 2753',3,365);
INSERT INTO hospital VALUES('Cassidy','Cheltenham  Hill, 7724',1,17);
INSERT INTO hospital VALUES('Kassandra','Blackwall  Vale, 800',5,85);
INSERT INTO hospital VALUES('Gabriel','Blackwall  Lane, 4597',6,319);
INSERT INTO hospital VALUES('Marvin','Linda   Drive, 3948',7,306);
INSERT INTO hospital VALUES('Peter','Geary   Vale, 5822',8,297);
INSERT INTO hospital VALUES('Carla','Vine  Crossroad, 4318',8,107);
INSERT INTO hospital VALUES('Aleksandra','Hampden  Drive, 6783',5,451);
INSERT INTO hospital VALUES('Joyce','Aspen Walk, 6579',1,378);
INSERT INTO hospital VALUES('Selena','Viscount   Route, 3367',4,15);
INSERT INTO hospital VALUES('Adelaide','Linda Lane Avenue, 6564',6,25);
INSERT INTO hospital VALUES('Harvey','Heritage Road, 7491',4,343);
INSERT INTO hospital VALUES('Maggie','Cedarne  Pass, 2256',7,95);
INSERT INTO hospital VALUES('Hannah','Lincoln Lane, 7133',8,342);
INSERT INTO hospital VALUES('Melania','Andsell    Alley, 4400',2,350);
INSERT INTO hospital VALUES('Jules','Norland  Road, 9589',8,164);
INSERT INTO hospital VALUES('Mayleen','Bicknell  Lane, 6663',1,110);
INSERT INTO hospital VALUES('Caleb','Shepherds  Alley, 7097',8,441);
INSERT INTO hospital VALUES('Kamila','Castle Drive, 7356',4,177);
INSERT INTO hospital VALUES('Bob','Cliff  Boulevard, 2408',9,433);
INSERT INTO hospital VALUES('Keira','Longman   Tunnel, 8545',8,339);
INSERT INTO hospital VALUES('Maya','Cloth  Road, 7676',5,166);
INSERT INTO hospital VALUES('Alex','Gavel   Pass, 3434',8,240);
INSERT INTO hospital VALUES('Josh','Carltoun   Street, 4906',9,312);
INSERT INTO hospital VALUES('Manuel','Elba  Grove, 834',4,224);
INSERT INTO hospital VALUES('Maggie','Armory  Crossroad, 9810',2,316);
INSERT INTO hospital VALUES('George','Monroe Drive, 8987',1,224);
INSERT INTO hospital VALUES('Greta','Dyott   Lane, 1691',4,97);
INSERT INTO hospital VALUES('Rick','Caedmon  Route, 8853',1,6);
INSERT INTO hospital VALUES('Makena','Carolina  Rue, 1121',8,235);
INSERT INTO hospital VALUES('Elena','Blandford  Route, 6140',8,439);
INSERT INTO hospital VALUES('Macy','Balfe   Way, 9513',2,227);
INSERT INTO hospital VALUES('Gabriel','Clyde Lane, 9668',3,134);
INSERT INTO hospital VALUES('Morgan','Bolton  Alley, 1495',6,244);
INSERT INTO hospital VALUES('John','Cleaver Walk, 1392',9,428);
INSERT INTO hospital VALUES('Danny','Castile  Hill, 5384',3,176);
INSERT INTO hospital VALUES('Bryce','Tiptree   Lane, 8774',6,384);
INSERT INTO hospital VALUES('Maddison','Berry  Vale, 6289',2,253);
INSERT INTO hospital VALUES('Nina','King William  Grove, 2263',4,95);
INSERT INTO hospital VALUES('Chuck','Chandos  Walk, 1982',6,49);
INSERT INTO hospital VALUES('Aileen','Bury  Grove, 9416',9,459);
INSERT INTO hospital VALUES('Samantha','Wakley   Tunnel, 657',7,373);
INSERT INTO hospital VALUES('Clint','Cobden  Avenue, 7767',4,236);
INSERT INTO hospital VALUES('Brad','Eaglet  Boulevard, 9206',2,262);
INSERT INTO hospital VALUES('Maggie','Berriman  Rue, 9570',7,40);
INSERT INTO hospital VALUES('Luke','Kilner   Rue, 2853',6,162);
INSERT INTO hospital VALUES('David','Balham   Vale, 6742',4,363);
INSERT INTO hospital VALUES('Daphne','East Grove, 2494',6,498);
INSERT INTO hospital VALUES('Brad','Chicksand  Road, 7548',4,99);
INSERT INTO hospital VALUES('Rosalie','Carnegie   Alley, 463',7,41);
INSERT INTO hospital VALUES('Carter','Bacton   Avenue, 7606',2,327);
INSERT INTO hospital VALUES('Cedrick','Chamberlain  Tunnel, 7176',8,179);
INSERT INTO hospital VALUES('Harvey','Bales  Pass, 463',1,188);
INSERT INTO hospital VALUES('Oliver','Victoria  Hill, 1956',2,456);
INSERT INTO hospital VALUES('Oliver','Blore  Way, 7769',6,178);
INSERT INTO hospital VALUES('Ruby','Thoresby   Avenue, 4783',4,280);
INSERT INTO hospital VALUES('Stella','West Road, 5943',8,474);
INSERT INTO hospital VALUES('Bryon','Baynes  Drive, 5841',7,480);
INSERT INTO hospital VALUES('Chester','Boleyn  Hill, 211',7,50);
INSERT INTO hospital VALUES('Margot','Collins  Lane, 1539',1,282);
INSERT INTO hospital VALUES('Johnny','Chestnut Rise Hill, 7412',8,385);
INSERT INTO hospital VALUES('Vicky','Victoria Rise Way, 2861',9,422);
INSERT INTO hospital VALUES('Phillip','Under  Street, 9388',4,457);
INSERT INTO hospital VALUES('Doug','Cable    Grove, 5990',5,37);
INSERT INTO hospital VALUES('Chester','Elf  Grove, 8369',4,440);
INSERT INTO hospital VALUES('Hank','Elgood   Crossroad, 8901',2,344);
INSERT INTO hospital VALUES('Nick','Becher  Pass, 7782',3,17);
INSERT INTO hospital VALUES('Kieth','Cave   Street, 6095',6,9);
INSERT INTO hospital VALUES('Darlene','Arlington  Vale, 3551',7,385);
INSERT INTO hospital VALUES('Christine','Wakley   Grove, 5797',9,130);
INSERT INTO hospital VALUES('Maxwell','Bel   Road, 2024',3,29);
INSERT INTO hospital VALUES('Anthony','Betton  Walk, 2047',1,209);
INSERT INTO hospital VALUES('Nate','Fieldstone Street, 7335',8,324);
INSERT INTO hospital VALUES('Johnny','Paris   Hill, 4939',9,265);
INSERT INTO hospital VALUES('Gladys','Babmaes    Street, 2921',7,489);
INSERT INTO hospital VALUES('Christine','Linden Route, 4256',9,428);
INSERT INTO hospital VALUES('Tania','Bletchley   Vale, 6557',4,285);
INSERT INTO hospital VALUES('Eduardo','Clerkenwell Crossroad, 1015',6,291);
INSERT INTO hospital VALUES('Ilona','Cleveland  Pass, 3058',5,215);
INSERT INTO hospital VALUES('Marissa','Clere  Lane, 2677',4,186);
INSERT INTO hospital VALUES('Moira','Pine Boulevard, 9011',8,276);
INSERT INTO hospital VALUES('Eryn','Camdenhurst   Crossroad, 5664',9,12);
INSERT INTO hospital VALUES('Gil','Glenwood Street, 1624',4,460);
INSERT INTO hospital VALUES('Phillip','Marina  Vale, 4337',4,90);
INSERT INTO hospital VALUES('Tess','Central  Route, 9143',2,49);
INSERT INTO hospital VALUES('Lorraine','Arundel   Street, 8209',1,470);
INSERT INTO hospital VALUES('Lucy','Bennett  Pass, 5666',4,145);
INSERT INTO hospital VALUES('Brad','Betton  Alley, 416',5,102);
INSERT INTO hospital VALUES('Carl','Dunstable   Grove, 3633',4,490);
INSERT INTO hospital VALUES('Marvin','Dunstans  Rue, 7622',9,495);
INSERT INTO hospital VALUES('Harvey','Abbey   Boulevard, 3655',9,239);
INSERT INTO hospital VALUES('Rocco','Durnford  Crossroad, 184',9,290);
INSERT INTO hospital VALUES('Clint','Cleaver Crossroad, 7465',9,235);

--TABLA LEVEL

alter table level
drop column creation_date

alter table level
drop column update_date 

INSERT INTO level VALUES('Nivel Otawa',34);
INSERT INTO level VALUES('Nivel Fremont',69);
INSERT INTO level VALUES('Nivel Rome',99);
INSERT INTO level VALUES('Nivel Omaha',87);
INSERT INTO level VALUES('Nivel Quebec',56);
INSERT INTO level VALUES('Nivel Hollywood',97);
INSERT INTO level VALUES('Nivel Boston',58);
INSERT INTO level VALUES('Nivel El Paso',39);
INSERT INTO level VALUES('Nivel Chicago',90);
INSERT INTO level VALUES('Nivel Colorado Springs',78);
INSERT INTO level VALUES('Nivel Salt Lake City',5);
INSERT INTO level VALUES('Nivel Wien',22);
INSERT INTO level VALUES('Nivel Los Angeles',74);
INSERT INTO level VALUES('Nivel Garland',29);
INSERT INTO level VALUES('Nivel Lancaster',80);
INSERT INTO level VALUES('Nivel Oklahoma City',10);
INSERT INTO level VALUES('Nivel Quebec',22);
INSERT INTO level VALUES('Nivel Bridgeport',72);
INSERT INTO level VALUES('Nivel Jersey City',60);
INSERT INTO level VALUES('Nivel San Jose',29);
INSERT INTO level VALUES('Nivel Lakewood',14);
INSERT INTO level VALUES('Nivel Garland',4);
INSERT INTO level VALUES('Nivel Nashville',52);
INSERT INTO level VALUES('Nivel Omaha',44);
INSERT INTO level VALUES('Nivel Rome',78);
INSERT INTO level VALUES('Nivel Henderson',52);
INSERT INTO level VALUES('Nivel Glendale',40);
INSERT INTO level VALUES('Nivel Bellevue',65);
INSERT INTO level VALUES('Nivel Tallahassee',41);
INSERT INTO level VALUES('Nivel Fullerton',78);
INSERT INTO level VALUES('Nivel Otawa',28);
INSERT INTO level VALUES('Nivel Arlington',21);
INSERT INTO level VALUES('Nivel Lincoln',88);
INSERT INTO level VALUES('Nivel Norfolk',98);
INSERT INTO level VALUES('Nivel Huntsville',16);
INSERT INTO level VALUES('Nivel Denver',88);
INSERT INTO level VALUES('Nivel Atlanta',50);
INSERT INTO level VALUES('Nivel Berlin',97);
INSERT INTO level VALUES('Nivel Moreno Valley',3);
INSERT INTO level VALUES('Nivel Berlin',22);
INSERT INTO level VALUES('Nivel Laredo',86);
INSERT INTO level VALUES('Nivel Moreno Valley',83);
INSERT INTO level VALUES('Nivel Phoenix',99);
INSERT INTO level VALUES('Nivel Arlington',60);
INSERT INTO level VALUES('Nivel Wien',99);
INSERT INTO level VALUES('Nivel Miami',83);
INSERT INTO level VALUES('Nivel Dallas',61);
INSERT INTO level VALUES('Nivel Saint Paul',60);
INSERT INTO level VALUES('Nivel Lakewood',10);
INSERT INTO level VALUES('Nivel Hollywood',43);
INSERT INTO level VALUES('Nivel Tulsa',58);
INSERT INTO level VALUES('Nivel Atlanta',38);
INSERT INTO level VALUES('Nivel Fremont',25);
INSERT INTO level VALUES('Nivel Lyon',34);
INSERT INTO level VALUES('Nivel Milano',20);
INSERT INTO level VALUES('Nivel New York',26);
INSERT INTO level VALUES('Nivel Atlanta',75);
INSERT INTO level VALUES('Nivel Lancaster',83);
INSERT INTO level VALUES('Nivel Murfreesboro',43);
INSERT INTO level VALUES('Nivel Rome',7);
INSERT INTO level VALUES('Nivel Anaheim',37);
INSERT INTO level VALUES('Nivel Huntsville',94);
INSERT INTO level VALUES('Nivel Oakland',31);
INSERT INTO level VALUES('Nivel Innsbruck',88);
INSERT INTO level VALUES('Nivel New York',31);
INSERT INTO level VALUES('Nivel Bakersfield',66);
INSERT INTO level VALUES('Nivel Tokyo',49);
INSERT INTO level VALUES('Nivel Irving',59);
INSERT INTO level VALUES('Nivel San Francisco',38);
INSERT INTO level VALUES('Nivel Kansas City',43);
INSERT INTO level VALUES('Nivel Norfolk',92);
INSERT INTO level VALUES('Nivel Stockton',86);
INSERT INTO level VALUES('Nivel Toledo',20);
INSERT INTO level VALUES('Nivel Long Beach',89);
INSERT INTO level VALUES('Nivel Quebec',75);
INSERT INTO level VALUES('Nivel Ontario',45);
INSERT INTO level VALUES('Nivel Omaha',92);
INSERT INTO level VALUES('Nivel San Antonio',18);
INSERT INTO level VALUES('Nivel Bridgeport',56);
INSERT INTO level VALUES('Nivel Phoenix',33);
INSERT INTO level VALUES('Nivel Quebec',13);
INSERT INTO level VALUES('Nivel Indianapolis',18);
INSERT INTO level VALUES('Nivel Bakersfield',25);
INSERT INTO level VALUES('Nivel Albuquerque',2);
INSERT INTO level VALUES('Nivel Ontario',2);
INSERT INTO level VALUES('Nivel Chicago',15);
INSERT INTO level VALUES('Nivel Salem',10);
INSERT INTO level VALUES('Nivel Toledo',69);
INSERT INTO level VALUES('Nivel Memphis',7);
INSERT INTO level VALUES('Nivel San Bernardino',51);
INSERT INTO level VALUES('Nivel Norfolk',35);
INSERT INTO level VALUES('Nivel El Paso',15);
INSERT INTO level VALUES('Nivel Salem',65);
INSERT INTO level VALUES('Nivel Bakersfield',12);
INSERT INTO level VALUES('Nivel Phoenix',49);
INSERT INTO level VALUES('Nivel Amarillo',79);
INSERT INTO level VALUES('Nivel Oakland',87);
INSERT INTO level VALUES('Nivel Springfield',84);
INSERT INTO level VALUES('Nivel Atlanta',93);
INSERT INTO level VALUES('Nivel Jacksonville',84);
--TABLA EMPLOYEE
ALTER TABLE employee
DROP COLUMN creation_date

ALTER TABLE employee
DROP COLUMN update_date

SELECT * FROM employee

INSERT INTO employee VALUES('Chanelle','Lewis','1998-02-14 10:13:18',6,2.2749537085532,42.719506694339,'Salmon',5,2,1,3,3,'nOd4Fh2dkN',3,'Chanelle_Lewis9052@gmail.com',1604.60897397371,793.460400833031,51.5270260174419);
INSERT INTO employee VALUES('Nate','Aldridge','1977-08-30 18:45:48',9,1.62545450796627,36.6027001401422,'White',1,4,1,1,9,'6edGyfIemE',1,'Nate_Aldridge4250@typill.biz',1153.74532882811,914.611055146256,47.9281170251445);
INSERT INTO employee VALUES('Chuck','Leslie','1965-05-16 21:42:41',5,1.63953258862697,30.537190437567,'Azure',2,2,3,3,9,'nZu1sa2rUE',3,'Chuck_Leslie9346@deavo.com',1340.4504351157,615.54879144465,70.5983552609563);
INSERT INTO employee VALUES('Enoch','Hopkinson','1983-12-25 22:47:51',9,1.9337750676711,146.251899568947,'Sky blue',2,1,7,2,7,'4gkF5vxi1t',3,'Enoch_Hopkinson3119@qater.org',1949.13301523222,986.287900892686,95.8759621702488);
INSERT INTO employee VALUES('Kate','Shaw','1998-08-12 07:28:10',9,2.26945471114919,99.8481154529602,'Dark Red',5,2,216,1,9,'nqvHlASfJ2',3,'Kate_Shaw6861@ovock.tech',1369.22775682445,974.533226553133,72.2603263739777);
INSERT INTO employee VALUES('Hank','Spencer','1976-12-12 03:41:38',8,1.45057641353951,27.4067273779804,'Sky blue',4,4,6,1,2,'X55mtQ1rTX',3,'Hank_Spencer200@sheye.org',572.504458486803,611.212628656632,59.4855433788549);
INSERT INTO employee VALUES('Ron','Lowe','1993-05-20 11:22:48',7,2.26872048623335,92.4511096456326,'Salmon',3,2,7,1,1,'9RF3Wadz0h',2,'Ron_Lowe6324@gembat.biz',1101.83973859988,938.719244649503,41.1404397930673);
INSERT INTO employee VALUES('Bernadette','Ulyatt','1964-08-31 13:00:36',3,1.70160946645849,47.3153248705507,'Auburn',2,3,9,1,3,'ioDlg1cPsx',2,'Bernadette_Ulyatt3236@brety.org',1368.00702504302,835.602129758616,84.9812651276501);
INSERT INTO employee VALUES('Nathan','Farrant','1983-10-24 02:40:03',7,2.09107020352551,52.5637895765546,'Brown',4,2,5,3,9,'SioTFt6h2d',3,'Nathan_Farrant603@guentu.biz',1087.94601866042,688.748252684133,92.4773394924017);
INSERT INTO employee VALUES('Chuck','Phillips','1979-04-22 07:45:16',9,2.2225801930868,79.2997355499769,'Cadet blue',4,3,13,2,8,'nx2mn7czlp',2,'Chuck_Phillips8879@qater.org',503.105676043362,696.752997785692,74.1944090859938);
INSERT INTO employee VALUES('Chuck','Garner','1986-01-12 19:05:56',6,1.86812350045337,113.336480912443,'Sepia',1,2,3,2,3,'H8YMG3AllO',2,'Chuck_Garner1899@joiniaa.com',1525.08048694398,802.893468198317,90.0502785197693);
INSERT INTO employee VALUES('Juliette','Wilkinson','1962-10-20 02:58:11',8,2.35929373053801,74.8649598159198,'Gold',4,1,8,3,3,'9E2PHIoHkb',1,'Juliette_Wilkinson730@famism.biz',901.186105944303,857.769566270415,48.6484180920052);
INSERT INTO employee VALUES('Domenic','Villiger','1984-02-29 07:10:01',9,1.70453697419937,196.341476069922,'Ruby',3,1,7,3,5,'f4Gq61EzlE',3,'Domenic_Villiger8646@fuliss.net',1641.47951415343,807.662183562136,83.1996110636739);
INSERT INTO employee VALUES('Rocco','Davies','1968-01-26 17:25:22',9,1.81306298431617,61.4581280045482,'Apricot',3,2,222,3,2,'9SN1MyRN4d',2,'Rocco_Davies8741@sheye.org',1027.52723418527,539.275368013547,40.9490850050697);
INSERT INTO employee VALUES('Ron','Talbot','1981-02-17 07:04:11',3,1.97031910287697,188.622835121873,'Black',5,3,9,3,4,'1n75bPdmHH',2,'Ron_Talbot6736@kideod.biz',686.002694732511,724.018183989924,71.5983263927504);
INSERT INTO employee VALUES('David','Needham','1977-04-10 20:41:24',8,1.80368641698905,66.2372611170808,'Peach',1,3,8,1,7,'bIymY6C57F',1,'David_Needham521@bungar.biz',1278.93428270655,956.084315044845,71.2272568322845);
INSERT INTO employee VALUES('Amelia','Doherty','1983-01-27 19:30:15',9,1.91684958372118,153.706749463317,'Yellow',3,4,217,1,8,'fdySK8LtXF',2,'Amelia_Doherty955@gompie.com',773.350709779817,624.746291916234,63.0833820933864);
INSERT INTO employee VALUES('Katelyn','Skinner','1988-01-07 05:42:26',9,2.27404246575853,198.363093652466,'Gray',2,1,3,1,5,'R7kWrojoyj',3,'Katelyn_Skinner7887@jiman.org',1620.76606737206,829.376350158535,67.1073633982369);
INSERT INTO employee VALUES('Shay','Ellery','1963-09-13 09:30:03',3,2.13601254529134,91.5757964679859,'Magenta',1,3,218,3,9,'wlPlPAnBuO',3,'Shay_Ellery8411@ubusive.com',1373.32609634582,950.544471756809,68.6816468707666);
INSERT INTO employee VALUES('Chris','Rothwell','1988-07-17 10:13:18',9,1.91165158604814,87.9296727012515,'Black',3,2,222,3,4,'lZ2PsiENcW',2,'Chris_Rothwell4067@sheye.org',910.325375067687,545.757128277215,72.449610631191);
INSERT INTO employee VALUES('Carrie','Wilson','1967-01-11 11:22:06',7,1.44666976679427,126.76858283196,'Sepia',4,1,13,3,5,'WuKlBtzTS6',3,'Carrie_Wilson4010@jiman.org',1531.32823532882,728.52272250807,79.5165785758368);
INSERT INTO employee VALUES('Olivia','Mann','1965-09-05 19:03:07',2,2.34028184513575,189.543042923111,'Carmine',2,1,2,1,7,'Gv6bRGkPxb',1,'Olivia_Mann778@vetan.org',1684.98029399057,807.05981099748,76.3852873213521);
INSERT INTO employee VALUES('Jaylene','Potter','1995-01-20 21:29:48',7,1.57785382744756,66.431882494796,'Dark red',3,3,5,3,8,'jUJikTjrYk',3,'Jaylene_Potter6252@irrepsy.com',1639.76294296131,763.47376730967,96.0301496558963);
INSERT INTO employee VALUES('Madelyn','Smith','1982-06-13 01:26:35',1,1.81442804244087,110.733140444724,'Aquamarine',2,1,2,1,9,'osjpRHnOGe',3,'Madelyn_Smith5261@dionrab.com',1784.14832307545,795.389410942974,47.2280635397081);
INSERT INTO employee VALUES('Ryan','Richardson','1963-11-17 10:33:08',1,1.55730750148991,101.297512305573,'Silver',5,4,6,1,2,'pVrk13H2MP',2,'Ryan_Richardson8567@bungar.biz',646.167251258235,598.439226083662,78.7852223337559);
INSERT INTO employee VALUES('Ethan','Farrow','1993-11-01 18:43:31',9,1.62436827338504,124.71826420199,'Emerald',1,3,7,3,6,'1OZI1dNjvk',3,'Ethan_Farrow4145@guentu.biz',737.426605172188,505.299971106136,82.0829530670694);
INSERT INTO employee VALUES('Chadwick','Yoman','1998-09-01 13:02:12',6,1.8702547427594,138.315707932839,'Magenta',4,1,221,3,2,'WUcSZs3Sc4',3,'Chadwick_Yoman8451@gembat.biz',1603.88629642869,829.283090419734,52.423989230033);
INSERT INTO employee VALUES('Chad','Ingram','1976-02-23 03:26:58',1,1.75542136540423,127.955043326111,'Magenta',1,2,10,1,8,'VP7a8UCiRD',3,'Chad_Ingram6454@zorer.org',596.869332848056,554.506454545775,90.6241163916998);
INSERT INTO employee VALUES('Gladys','Parker','1995-11-01 18:22:46',8,2.04822162904228,191.470074095982,'Cadet blue',2,3,3,3,1,'AejFfga7xL',3,'Gladys_Parker301@eirey.tech',783.673612972569,839.786155090568,85.6580523753809);
INSERT INTO employee VALUES('Carissa','Carpenter','1959-11-15 05:16:37',3,1.47175513965625,33.2897144128986,'Aqua',3,4,8,2,9,'QYvxzkyfv2',3,'Carissa_Carpenter4118@supunk.biz',1259.0516760736,990.048120040935,90.677722541931);
INSERT INTO employee VALUES('Benny','Davies','1972-10-30 15:28:16',3,2.18142298002794,116.293704805567,'Apricot',2,3,9,3,5,'YqoOGYA4cM',2,'Benny_Davies7687@typill.biz',1904.21810216932,986.35013797523,96.0169632751574);
INSERT INTO employee VALUES('Chester','Mann','2001-08-20 05:50:26',5,2.3610249283542,45.4536888624791,'Lavender',2,4,1,1,8,'S7oEi2weOb',2,'Chester_Mann5786@irrepsy.com',888.911781206686,962.455622875809,85.5497095773694);
INSERT INTO employee VALUES('Mason','Hall','1970-04-20 20:01:21',7,2.21953403531552,93.6003223399633,'Cyan',2,4,216,3,9,'Ve8ha2Bd2j',2,'Mason_Hall5863@nanoff.biz',1664.53881383154,879.295005017563,89.039194359928);
INSERT INTO employee VALUES('Marjorie','Willis','1979-07-12 06:22:28',9,1.55235450498404,189.229469976029,'Maroon',2,2,3,3,3,'ooqDQ45kza',3,'Marjorie_Willis3825@supunk.biz',1802.32615147965,950.863896402001,96.8969113481682);
INSERT INTO employee VALUES('Boris','Hood','1962-11-13 09:17:17',1,1.69321306724717,18.2553845412356,'Peach',3,3,9,1,2,'IvE4ZZePtL',2,'Boris_Hood9723@zorer.org',571.659805057878,785.325248063693,91.9450672594575);
INSERT INTO employee VALUES('Rosa','Robertson','1975-05-20 15:36:38',8,1.67039298101812,139.330261456003,'coral',4,1,10,1,6,'dZCkeP0ktv',1,'Rosa_Robertson6786@liret.org',546.797233919984,816.799403823819,65.2292287606882);
INSERT INTO employee VALUES('Russel','Rixon','1969-03-02 11:57:15',4,2.1264465222724,19.3385739570198,'Red',3,1,10,3,8,'KCph1zsVUy',1,'Russel_Rixon1912@zorer.org',1665.19379566479,807.329278466911,48.0493279053128);
INSERT INTO employee VALUES('Doug','Kelly','1988-02-08 10:20:21',6,2.35989162426437,197.597135412319,'Rust',3,1,217,2,3,'91TInN6zXP',2,'Doug_Kelly739@yahoo.com',1889.95231058539,561.633125039578,62.1033886583072);
INSERT INTO employee VALUES('Hank','Horton','1974-10-18 01:30:22',6,1.78145719253526,187.326323024615,'Brown',4,3,216,1,2,'L5Dnu4xhUl',1,'Hank_Horton3589@tonsy.org',818.987516743591,939.401143159904,78.4116087618338);
INSERT INTO employee VALUES('Barney','Gray','1958-10-30 20:22:54',7,1.67905355686278,179.437270619179,'Silver',3,3,3,3,5,'qLtVIV9iPy',2,'Barney_Gray2835@bauros.biz',1609.00366699556,607.748926410335,66.9622399434272);
INSERT INTO employee VALUES('Florence','Wright','1995-01-16 08:51:50',2,2.36707297347815,141.962729179749,'Cyan',1,2,3,1,2,'bhJa00GNML',3,'Florence_Wright9019@eirey.tech',612.529573763967,920.775074596878,51.973964495572);
INSERT INTO employee VALUES('Iris','Randall','1998-11-11 19:10:20',8,1.74929582306617,155.515693413334,'Emerald',4,1,1,3,5,'ornaLQIKI3',1,'Iris_Randall6513@iatim.tech',1983.5920283881,900.619369195597,56.6696031678792);
INSERT INTO employee VALUES('Michael','Durrant','1960-02-19 17:12:01',8,1.81019265698744,8.7524590332771,'Black',5,3,1,2,8,'Zsw5mI39Zm',3,'Michael_Durrant7921@supunk.biz',1953.69174085823,632.4514604348,77.9173777266021);
INSERT INTO employee VALUES('Domenic','Allcott','1966-09-24 15:27:26',1,1.606548062715,151.915773419624,'Aqua',1,4,13,2,8,'uBEDAVDHmg',3,'Domenic_Allcott1032@mafthy.com',1808.23650748573,778.379692881545,75.9509036466251);
INSERT INTO employee VALUES('Alexander','Stewart','1980-02-04 14:12:20',3,1.89982000724404,92.3849559120764,'Blue',1,3,218,3,1,'pm2qgvK18l',2,'Alexander_Stewart1034@atink.com',717.950338089816,828.350686848793,57.9349870527792);
INSERT INTO employee VALUES('Felicity','Marshall','1987-11-05 11:00:50',3,2.20773479482519,4.30071947458234,'Gray',2,4,4,3,8,'QVTabxQ44s',3,'Felicity_Marshall3779@bretoux.com',1706.47364303725,927.953033586942,40.7036265389545);
INSERT INTO employee VALUES('Lynn','Barclay','1983-06-22 14:29:40',6,2.00026172576484,155.391476519588,'Capri',3,3,2,1,5,'DeNzDYuhy7',1,'Lynn_Barclay374@joiniaa.com',1886.6029281484,736.277649516369,93.2265327522655);
INSERT INTO employee VALUES('Alan','Nelson','1972-09-26 00:10:26',5,1.50642089885959,32.9644659003077,'Black',5,1,221,3,5,'pL0w9Ir1AT',1,'Alan_Nelson8623@yahoo.com',598.803914379703,607.131296567214,58.2991033155933);
INSERT INTO employee VALUES('Iris','Bolton','1959-08-07 04:53:42',1,1.72199999891315,166.233037767575,'Cerise',4,1,3,1,3,'eEGJErxYGT',3,'Iris_Bolton2202@gmail.com',1312.63253498293,511.782623380321,95.6981398927505);
INSERT INTO employee VALUES('Emma','Jobson','1958-08-17 15:48:12',7,1.41418117806976,151.863594757795,'Lime',2,4,217,2,3,'06SlV1Md2P',2,'Emma_Jobson7683@sveldo.biz',1137.18233115048,701.721181448419,68.1259317086665);
INSERT INTO employee VALUES('Barney','Chadwick','1967-09-18 03:52:41',8,1.40406285980906,94.5742096489175,'Pink',5,1,216,3,2,'g3UqMgTpIJ',2,'Barney_Chadwick7846@cispeto.com',890.340666381335,916.130710076136,62.8497423677937);
INSERT INTO employee VALUES('Julia','Stuart','1997-10-24 10:11:33',8,2.09042030055561,77.8945266301253,'coral',5,2,7,2,4,'KeNOSqzG60',2,'Julia_Stuart4824@naiker.biz',1169.80261249505,638.416813006353,80.6654764184102);
INSERT INTO employee VALUES('Denny','Huggins','1997-01-10 03:50:06',1,1.43388548131747,132.710707610338,'Olive',1,2,4,3,2,'n36FNeyFTZ',2,'Denny_Huggins5666@sheye.org',511.149715252756,973.34546794479,85.8360794604924);
INSERT INTO employee VALUES('Josh','Morris','1988-01-23 07:11:15',6,2.20075262244826,78.1356426352335,'Lime',1,1,9,3,5,'UQoiztjZwp',1,'Josh_Morris2001@gompie.com',781.974000659294,871.854268058135,51.1536566788115);
INSERT INTO employee VALUES('Analise','Ulyatt','1978-04-19 01:00:51',6,1.49860772364708,79.0557134398519,'Emerald',1,4,7,2,6,'COMK1N0Y7R',3,'Analise_Ulyatt7672@eirey.tech',1489.68581538633,891.959565035049,51.9181801913856);
INSERT INTO employee VALUES('Julian','Irving','1970-06-15 21:52:48',8,2.14437058844807,91.3529623799738,'Gold',4,3,1,2,6,'N1tWoJueZp',3,'Julian_Irving5348@mafthy.com',749.226467815333,884.699892550567,79.351061684243);
INSERT INTO employee VALUES('Monica','Bryant','1967-12-21 03:06:00',8,2.11567173149235,154.079670832064,'Capri',3,2,8,1,1,'XJRH25Bqlk',2,'Monica_Bryant4407@bungar.biz',1396.60799136088,824.913397728891,53.8358550890516);
INSERT INTO employee VALUES('Cedrick','Brown','1982-04-27 09:14:47',4,1.61459761970425,141.399160003475,'Gold',2,2,9,2,5,'VwKdymOotS',3,'Cedrick_Brown5706@bulaffy.com',1531.82181968159,998.445809375237,87.1529315198552);
INSERT INTO employee VALUES('Hank','Brooks','1967-09-10 21:09:55',1,2.14920408322904,22.0781354396968,'Ruby',2,3,9,2,5,'TTBjoupVXf',1,'Hank_Brooks6559@infotech44.tech',1622.37820623926,711.410710091894,67.5096059578981);
INSERT INTO employee VALUES('Dalia','Connor','1966-05-06 15:37:44',4,1.58502236212838,49.5324928786291,'Capri',3,3,8,2,9,'mwWrY4RAZa',3,'Dalia_Connor3351@elnee.tech',538.404681287429,711.951019021194,41.6726518965665);
INSERT INTO employee VALUES('Bart','Thomson','1977-06-24 14:32:38',9,2.37004124986475,3.93201082848572,'Mauve',5,3,4,2,5,'xvNHCliGHc',2,'Bart_Thomson5620@yahoo.com',1172.16235463236,874.357874113302,97.8937312750582);
INSERT INTO employee VALUES('Liam','Bentley','1993-06-04 18:51:49',5,2.34550641437318,160.993808390104,'Camel',5,3,7,1,4,'46jvCirTWM',3,'Liam_Bentley9941@twace.org',792.593154235088,836.468704901388,54.7174341765779);
INSERT INTO employee VALUES('Grace','Price','1992-02-21 08:33:43',1,1.75923011803964,63.831512545157,'Balck',1,3,9,2,5,'dylYPaQrik',1,'Grace_Price7610@mafthy.com',626.242594106702,996.73441723908,60.2847589358151);
INSERT INTO employee VALUES('Hayden','Andersson','1969-03-30 04:32:31',2,2.35199383932724,114.724267212546,'Gold',3,3,216,1,8,'uwOk1WKOMz',1,'Hayden_Andersson4199@elnee.tech',972.934528555225,636.871370273582,90.0236985930352);
INSERT INTO employee VALUES('Mary','Foxley','2000-09-06 10:14:22',4,2.31819594144737,162.011660085996,'Turquoise',1,4,6,3,2,'jgPwXny8zu',2,'Mary_Foxley7166@acrit.org',1003.81398599586,603.544438587755,75.2819186143027);
INSERT INTO employee VALUES('Manuel','Bullock','1962-04-02 19:21:43',7,2.30851992736967,165.244494299053,'Black',1,2,7,2,8,'yjdM7iVE0h',2,'Manuel_Bullock4613@jiman.org',1091.02938107961,789.989282374265,47.6021917958754);
INSERT INTO employee VALUES('Angela','Knight','1964-06-11 17:25:10',6,1.97947747110365,126.896056389388,'Champagne',4,4,9,1,3,'DmaNrKVy8H',2,'Angela_Knight9465@hourpy.biz',1859.6619605467,919.995638606136,44.1554352418312);
INSERT INTO employee VALUES('Eduardo','Hood','1997-05-02 19:25:21',3,1.68200395884086,27.2922517942694,'Apricot',5,4,8,1,1,'0usOzusVxp',1,'Eduardo_Hood5248@vetan.org',1958.70641380302,905.120721680634,92.0878740959279);
INSERT INTO employee VALUES('Martin','Morgan','1987-09-01 13:02:42',4,2.03367421442348,197.098105602478,'Pink',1,2,219,3,2,'IpKksqEW0e',1,'Martin_Morgan2855@famism.biz',862.276783744468,950.932593797768,83.2234922983793);



--TABLA CONSULTING ROOM
select * from consulting_room
ALTER TABLE consulting_room
DROP COLUMN creation_date

ALTER TABLE consulting_room
DROP COLUMN update_date

INSERT INTO consulting_room VALUES(56,3);
INSERT INTO consulting_room VALUES(36,4);
INSERT INTO consulting_room VALUES(25,9);
INSERT INTO consulting_room VALUES(98,2);
INSERT INTO consulting_room VALUES(49,2);
INSERT INTO consulting_room VALUES(89,1);
INSERT INTO consulting_room VALUES(69,9);
INSERT INTO consulting_room VALUES(47,9);
INSERT INTO consulting_room VALUES(22,4);
INSERT INTO consulting_room VALUES(36,9);
INSERT INTO consulting_room VALUES(31,7);
INSERT INTO consulting_room VALUES(80,8);
INSERT INTO consulting_room VALUES(67,9);
INSERT INTO consulting_room VALUES(4,7);
INSERT INTO consulting_room VALUES(79,8);
INSERT INTO consulting_room VALUES(72,7);
INSERT INTO consulting_room VALUES(44,3);
INSERT INTO consulting_room VALUES(58,6);
INSERT INTO consulting_room VALUES(24,2);
INSERT INTO consulting_room VALUES(74,6);
INSERT INTO consulting_room VALUES(22,8);
INSERT INTO consulting_room VALUES(10,3);
INSERT INTO consulting_room VALUES(46,8);
INSERT INTO consulting_room VALUES(39,8);
INSERT INTO consulting_room VALUES(16,8);
INSERT INTO consulting_room VALUES(52,5);
INSERT INTO consulting_room VALUES(41,7);
INSERT INTO consulting_room VALUES(96,5);
INSERT INTO consulting_room VALUES(28,1);
INSERT INTO consulting_room VALUES(98,5);
INSERT INTO consulting_room VALUES(40,2 );
INSERT INTO consulting_room VALUES(15,6);
INSERT INTO consulting_room VALUES(62,6);
INSERT INTO consulting_room VALUES(18,5);
INSERT INTO consulting_room VALUES(47,1);
INSERT INTO consulting_room VALUES(54,7);
INSERT INTO consulting_room VALUES(47,5);
INSERT INTO consulting_room VALUES(48,7);
INSERT INTO consulting_room VALUES(10,2);
INSERT INTO consulting_room VALUES(64,7);
INSERT INTO consulting_room VALUES(22,1);
INSERT INTO consulting_room VALUES(36,8);
INSERT INTO consulting_room VALUES(26,2);
INSERT INTO consulting_room VALUES(90,3);
INSERT INTO consulting_room VALUES(50,5);
INSERT INTO consulting_room VALUES(32,6);
INSERT INTO consulting_room VALUES(76,7);
INSERT INTO consulting_room VALUES(8,4);
INSERT INTO consulting_room VALUES(27,4);
INSERT INTO consulting_room VALUES(97,1);

--TABLA 
select * from schedule

ALTER TABLE schedule
DROP COLUMN creation_date

ALTER TABLE schedule
DROP COLUMN update_date

INSERT INTO schedule VALUES(10,3);
INSERT INTO schedule VALUES(8,3);
INSERT INTO schedule VALUES(11,2);
INSERT INTO schedule VALUES(6,1);
INSERT INTO schedule VALUES(8,4);
INSERT INTO schedule VALUES(8,4);
INSERT INTO schedule VALUES(11,5);
INSERT INTO schedule VALUES(10,3);
INSERT INTO schedule VALUES(11,3);
INSERT INTO schedule VALUES(8,5);
INSERT INTO schedule VALUES(8,3);
INSERT INTO schedule VALUES(7,7);
INSERT INTO schedule VALUES(8,1);
INSERT INTO schedule VALUES(10,4);
INSERT INTO schedule VALUES(7,1);
INSERT INTO schedule VALUES(8,6);
INSERT INTO schedule VALUES(11,7);
INSERT INTO schedule VALUES(10,4);
INSERT INTO schedule VALUES(9,6);
INSERT INTO schedule VALUES(9,5);
INSERT INTO schedule VALUES(9,7);
INSERT INTO schedule VALUES(6,1);
INSERT INTO schedule VALUES(7,6);
INSERT INTO schedule VALUES(10,4);
INSERT INTO schedule VALUES(10,1);
INSERT INTO schedule VALUES(10,2);
INSERT INTO schedule VALUES(8,1);
INSERT INTO schedule VALUES(8,3);
INSERT INTO schedule VALUES(7,4);
INSERT INTO schedule VALUES(11,6);
INSERT INTO schedule VALUES(8,4);
INSERT INTO schedule VALUES(10,3);
INSERT INTO schedule VALUES(7,5);
INSERT INTO schedule VALUES(10,7);
INSERT INTO schedule VALUES(11,2);

--TABLA SCHEDULE_FREQ_TYPE
select * from schedule_freq_type

ALTER TABLE schedule_freq_type
DROP COLUMN creation_date

ALTER TABLE schedule_freq_type
DROP COLUMN update_date

INSERT INTO schedule_freq_type VALUES('2 veces a la semana')
INSERT INTO schedule_freq_type VALUES('1 vez a la semana')
INSERT INTO schedule_freq_type VALUES('3 veces a la semana')
INSERT INTO schedule_freq_type VALUES('4 veces a la semana')
INSERT INTO schedule_freq_type VALUES('Todos los días de la semana')
INSERT INTO schedule_freq_type VALUES('Sábados')

--TABLA SCHEDULE_EMPLOYEE
select * from schedule_employee

ALTER TABLE schedule_employee
DROP COLUMN creation_date

ALTER TABLE schedule_employee
DROP COLUMN update_date

INSERT INTO schedule_employee VALUES(29,10,5);
INSERT INTO schedule_employee VALUES(34,47,2);
INSERT INTO schedule_employee VALUES(11,5,3);
INSERT INTO schedule_employee VALUES(33,30,3);
INSERT INTO schedule_employee VALUES(26,24,2);
INSERT INTO schedule_employee VALUES(30,28,4);
INSERT INTO schedule_employee VALUES(19,4,4);
INSERT INTO schedule_employee VALUES(17,64,4);
INSERT INTO schedule_employee VALUES(27,38,2);
INSERT INTO schedule_employee VALUES(1,52,1);
INSERT INTO schedule_employee VALUES(4,32,2);
INSERT INTO schedule_employee VALUES(1,42,4);
INSERT INTO schedule_employee VALUES(32,2,2);
INSERT INTO schedule_employee VALUES(20,66,1);
INSERT INTO schedule_employee VALUES(22,69,5);
INSERT INTO schedule_employee VALUES(11,61,4);
INSERT INTO schedule_employee VALUES(33,33,1);
INSERT INTO schedule_employee VALUES(14,38,3);
INSERT INTO schedule_employee VALUES(4,28,2);
INSERT INTO schedule_employee VALUES(2,16,1);
INSERT INTO schedule_employee VALUES(34,24,2);
INSERT INTO schedule_employee VALUES(12,65,5);
INSERT INTO schedule_employee VALUES(6,54,4);
INSERT INTO schedule_employee VALUES(18,70,2);
INSERT INTO schedule_employee VALUES(9,72,1);
INSERT INTO schedule_employee VALUES(20,62,5);
INSERT INTO schedule_employee VALUES(32,36,4);
INSERT INTO schedule_employee VALUES(26,5,2);
INSERT INTO schedule_employee VALUES(1,52,5);
INSERT INTO schedule_employee VALUES(24,69,1);
INSERT INTO schedule_employee VALUES(15,65,5);
INSERT INTO schedule_employee VALUES(8,45,3);
INSERT INTO schedule_employee VALUES(26,23,1);
INSERT INTO schedule_employee VALUES(31,11,1);
INSERT INTO schedule_employee VALUES(30,32,3);
INSERT INTO schedule_employee VALUES(26,11,3);
INSERT INTO schedule_employee VALUES(15,39,3);
INSERT INTO schedule_employee VALUES(12,10,4);
INSERT INTO schedule_employee VALUES(15,17,2);
INSERT INTO schedule_employee VALUES(4,26,1);
INSERT INTO schedule_employee VALUES(2,35,4);
INSERT INTO schedule_employee VALUES(20,7,1);
INSERT INTO schedule_employee VALUES(18,4,2);
INSERT INTO schedule_employee VALUES(21,62,3);
INSERT INTO schedule_employee VALUES(30,3,2);
INSERT INTO schedule_employee VALUES(20,67,4);
INSERT INTO schedule_employee VALUES(26,20,3);
INSERT INTO schedule_employee VALUES(13,21,3);
INSERT INTO schedule_employee VALUES(22,7,4);
INSERT INTO schedule_employee VALUES(3,58,2);
INSERT INTO schedule_employee VALUES(11,49,5);
INSERT INTO schedule_employee VALUES(31,62,4);
INSERT INTO schedule_employee VALUES(11,22,2);
INSERT INTO schedule_employee VALUES(15,16,1);
INSERT INTO schedule_employee VALUES(7,61,4);
INSERT INTO schedule_employee VALUES(1,35,1);
INSERT INTO schedule_employee VALUES(14,65,2);
INSERT INTO schedule_employee VALUES(21,25,1);
INSERT INTO schedule_employee VALUES(21,52,1);
INSERT INTO schedule_employee VALUES(13,71,1);
INSERT INTO schedule_employee VALUES(12,33,2);
INSERT INTO schedule_employee VALUES(34,22,1);
INSERT INTO schedule_employee VALUES(20,73,2);
INSERT INTO schedule_employee VALUES(23,19,4);
INSERT INTO schedule_employee VALUES(11,24,1);
INSERT INTO schedule_employee VALUES(16,14,3);
INSERT INTO schedule_employee VALUES(25,47,4);
INSERT INTO schedule_employee VALUES(22,51,5);
INSERT INTO schedule_employee VALUES(2,53,2);
INSERT INTO schedule_employee VALUES(30,22,1);
INSERT INTO schedule_employee VALUES(17,71,2);
INSERT INTO schedule_employee VALUES(11,8,4);
INSERT INTO schedule_employee VALUES(29,14,3);
INSERT INTO schedule_employee VALUES(18,33,3);
INSERT INTO schedule_employee VALUES(31,56,4);
INSERT INTO schedule_employee VALUES(25,23,1);
INSERT INTO schedule_employee VALUES(1,11,3);
INSERT INTO schedule_employee VALUES(25,48,2);
INSERT INTO schedule_employee VALUES(14,51,4);
INSERT INTO schedule_employee VALUES(12,70,3);
INSERT INTO schedule_employee VALUES(30,52,4);
INSERT INTO schedule_employee VALUES(3,12,2);
INSERT INTO schedule_employee VALUES(10,73,2);
INSERT INTO schedule_employee VALUES(10,47,5);
INSERT INTO schedule_employee VALUES(32,17,1);
INSERT INTO schedule_employee VALUES(5,56,5);
INSERT INTO schedule_employee VALUES(11,25,2);
INSERT INTO schedule_employee VALUES(11,64,1);
INSERT INTO schedule_employee VALUES(22,57,2);
INSERT INTO schedule_employee VALUES(1,69,3);
INSERT INTO schedule_employee VALUES(1,36,2);
INSERT INTO schedule_employee VALUES(32,48,4);
INSERT INTO schedule_employee VALUES(28,61,3);
INSERT INTO schedule_employee VALUES(11,34,2);
INSERT INTO schedule_employee VALUES(28,56,3);
INSERT INTO schedule_employee VALUES(18,59,3);
INSERT INTO schedule_employee VALUES(5,21,5);
INSERT INTO schedule_employee VALUES(28,5,4);
INSERT INTO schedule_employee VALUES(7,42,5);
INSERT INTO schedule_employee VALUES(19,33,2);

--TABLA EMPLOYEE_CONSULTING_ROOM
select * from employee_consulting_room

ALTER TABLE employee_consulting_room
DROP COLUMN creation_date

ALTER TABLE employee_consulting_room
DROP COLUMN update_date

INSERT INTO employee_consulting_room VALUES(7,41,13);
INSERT INTO employee_consulting_room VALUES(22,26,16);
INSERT INTO employee_consulting_room VALUES(4,40,52);
INSERT INTO employee_consulting_room VALUES(38,2,50);
INSERT INTO employee_consulting_room VALUES(30,58,25);
INSERT INTO employee_consulting_room VALUES(47,70,55);
INSERT INTO employee_consulting_room VALUES(45,5,81);
INSERT INTO employee_consulting_room VALUES(43,14,93);
INSERT INTO employee_consulting_room VALUES(27,40,57);
INSERT INTO employee_consulting_room VALUES(10,48,30);
INSERT INTO employee_consulting_room VALUES(43,18,86);
INSERT INTO employee_consulting_room VALUES(2,2,61);
INSERT INTO employee_consulting_room VALUES(23,2,80);
INSERT INTO employee_consulting_room VALUES(20,67,66);
INSERT INTO employee_consulting_room VALUES(14,8,42);
INSERT INTO employee_consulting_room VALUES(37,21,57);
INSERT INTO employee_consulting_room VALUES(27,41,69);
INSERT INTO employee_consulting_room VALUES(43,15,86);
INSERT INTO employee_consulting_room VALUES(18,19,35);
INSERT INTO employee_consulting_room VALUES(10,67,80);
INSERT INTO employee_consulting_room VALUES(29,66,89);
INSERT INTO employee_consulting_room VALUES(11,68,78);
INSERT INTO employee_consulting_room VALUES(32,42,77);
INSERT INTO employee_consulting_room VALUES(32,36,53);
INSERT INTO employee_consulting_room VALUES(37,39,16);
INSERT INTO employee_consulting_room VALUES(8,45,9);
INSERT INTO employee_consulting_room VALUES(26,60,26);
INSERT INTO employee_consulting_room VALUES(1,48,9);
INSERT INTO employee_consulting_room VALUES(30,74,5);
INSERT INTO employee_consulting_room VALUES(49,51,76);
INSERT INTO employee_consulting_room VALUES(13,51,52);
INSERT INTO employee_consulting_room VALUES(49,60,2);
INSERT INTO employee_consulting_room VALUES(38,4,20);
INSERT INTO employee_consulting_room VALUES(32,8,72);
INSERT INTO employee_consulting_room VALUES(40,68,7);
INSERT INTO employee_consulting_room VALUES(9,9,67);
INSERT INTO employee_consulting_room VALUES(35,15,65);
INSERT INTO employee_consulting_room VALUES(14,51,10);
INSERT INTO employee_consulting_room VALUES(27,43,24);
INSERT INTO employee_consulting_room VALUES(40,46,92);
INSERT INTO employee_consulting_room VALUES(37,48,87);
INSERT INTO employee_consulting_room VALUES(1,28,22);
INSERT INTO employee_consulting_room VALUES(1,56,71);
INSERT INTO employee_consulting_room VALUES(7,29,56);
INSERT INTO employee_consulting_room VALUES(44,65,69);
INSERT INTO employee_consulting_room VALUES(27,16,74);
INSERT INTO employee_consulting_room VALUES(1,33,87);
INSERT INTO employee_consulting_room VALUES(18,22,49);
INSERT INTO employee_consulting_room VALUES(21,34,24);
INSERT INTO employee_consulting_room VALUES(39,71,43);
INSERT INTO employee_consulting_room VALUES(13,67,46);
INSERT INTO employee_consulting_room VALUES(42,59,53);
INSERT INTO employee_consulting_room VALUES(42,12,36);
INSERT INTO employee_consulting_room VALUES(48,43,80);
INSERT INTO employee_consulting_room VALUES(5,29,81);
INSERT INTO employee_consulting_room VALUES(20,1,37);
INSERT INTO employee_consulting_room VALUES(25,59,18);
INSERT INTO employee_consulting_room VALUES(3,28,35);
INSERT INTO employee_consulting_room VALUES(20,67,38);
INSERT INTO employee_consulting_room VALUES(32,43,30);
INSERT INTO employee_consulting_room VALUES(24,27,43);
INSERT INTO employee_consulting_room VALUES(7,47,97);
INSERT INTO employee_consulting_room VALUES(12,52,42);
INSERT INTO employee_consulting_room VALUES(11,13,28);
INSERT INTO employee_consulting_room VALUES(25,30,71);
INSERT INTO employee_consulting_room VALUES(34,2,61);
INSERT INTO employee_consulting_room VALUES(38,3,44);
INSERT INTO employee_consulting_room VALUES(43,22,18);
INSERT INTO employee_consulting_room VALUES(13,16,52);
INSERT INTO employee_consulting_room VALUES(6,34,89);
INSERT INTO employee_consulting_room VALUES(8,16,58);
INSERT INTO employee_consulting_room VALUES(4,36,22);
INSERT INTO employee_consulting_room VALUES(19,72,75);
INSERT INTO employee_consulting_room VALUES(42,13,32);
INSERT INTO employee_consulting_room VALUES(47,22,62);
INSERT INTO employee_consulting_room VALUES(44,41,97);
INSERT INTO employee_consulting_room VALUES(32,53,87);
INSERT INTO employee_consulting_room VALUES(38,65,55);
INSERT INTO employee_consulting_room VALUES(43,46,7);
INSERT INTO employee_consulting_room VALUES(13,66,42);
INSERT INTO employee_consulting_room VALUES(23,9,24);
INSERT INTO employee_consulting_room VALUES(26,5,95);
INSERT INTO employee_consulting_room VALUES(35,33,91);
INSERT INTO employee_consulting_room VALUES(25,23,6);
INSERT INTO employee_consulting_room VALUES(42,69,86);
INSERT INTO employee_consulting_room VALUES(7,68,99);
INSERT INTO employee_consulting_room VALUES(28,26,66);
INSERT INTO employee_consulting_room VALUES(27,35,75);
INSERT INTO employee_consulting_room VALUES(1,28,35);
INSERT INTO employee_consulting_room VALUES(2,16,87);
INSERT INTO employee_consulting_room VALUES(8,9,8);
INSERT INTO employee_consulting_room VALUES(17,29,5);
INSERT INTO employee_consulting_room VALUES(5,29,6);
INSERT INTO employee_consulting_room VALUES(33,15,11);
INSERT INTO employee_consulting_room VALUES(3,12,40);
INSERT INTO employee_consulting_room VALUES(41,68,93);
INSERT INTO employee_consulting_room VALUES(34,55,69);
INSERT INTO employee_consulting_room VALUES(4,52,53);
INSERT INTO employee_consulting_room VALUES(38,68,65);

--TABLA EMPLOYEE_DIRECTION

select * from employee_direction

ALTER TABLE employee_direction
DROP COLUMN creation_date

ALTER TABLE employee_direction
DROP COLUMN update_date

insert into employee_direction (direction, employee_id) values ('89394 American Ash Pass', 1);
insert into employee_direction (direction, employee_id) values ('35 Killdeer Place', 2);
insert into employee_direction (direction, employee_id) values ('195 Mesta Street', 3);
insert into employee_direction (direction, employee_id) values ('68 Glendale Point', 4);
insert into employee_direction (direction, employee_id) values ('6040 Norway Maple Avenue', 5);
insert into employee_direction (direction, employee_id) values ('689 Oakridge Crossing', 6);
insert into employee_direction (direction, employee_id) values ('5 Ridgeview Road', 7);
insert into employee_direction (direction, employee_id) values ('5 Eastwood Center', 8);
insert into employee_direction (direction, employee_id) values ('417 Waywood Parkway', 9);
insert into employee_direction (direction, employee_id) values ('89 Ilene Point', 10);
insert into employee_direction (direction, employee_id) values ('9 Ridgeview Center', 11);
insert into employee_direction (direction, employee_id) values ('5557 Rieder Plaza', 12);
insert into employee_direction (direction, employee_id) values ('3 Eastwood Junction', 13);
insert into employee_direction (direction, employee_id) values ('9430 Sunfield Avenue', 14);
insert into employee_direction (direction, employee_id) values ('42154 Longview Circle', 15);
insert into employee_direction (direction, employee_id) values ('74 Burrows Terrace', 16);
insert into employee_direction (direction, employee_id) values ('2044 Macpherson Lane', 17);
insert into employee_direction (direction, employee_id) values ('2 Glacier Hill Circle', 18);
insert into employee_direction (direction, employee_id) values ('36 Kings Drive', 19);
insert into employee_direction (direction, employee_id) values ('671 Hollow Ridge Road', 20);
insert into employee_direction (direction, employee_id) values ('75231 7th Avenue', 21);
insert into employee_direction (direction, employee_id) values ('1 Porter Crossing', 22);
insert into employee_direction (direction, employee_id) values ('0726 Buena Vista Circle', 23);
insert into employee_direction (direction, employee_id) values ('6224 Butternut Alley', 24);
insert into employee_direction (direction, employee_id) values ('78 Ridge Oak Street', 25);
insert into employee_direction (direction, employee_id) values ('23087 Little Fleur Drive', 26);
insert into employee_direction (direction, employee_id) values ('13 Lerdahl Street', 27);
insert into employee_direction (direction, employee_id) values ('35889 Hallows Place', 28);
insert into employee_direction (direction, employee_id) values ('94145 Shelley Crossing', 29);
insert into employee_direction (direction, employee_id) values ('36 Mcguire Trail',29);
insert into employee_direction (direction, employee_id) values ('7620 Cardinal Circle', 31);
insert into employee_direction (direction, employee_id) values ('6258 Nelson Court', 32);
insert into employee_direction (direction, employee_id) values ('43 Meadow Valley Hill', 33);
insert into employee_direction (direction, employee_id) values ('41806 Birchwood Trail', 34);
insert into employee_direction (direction, employee_id) values ('9 Golf Course Drive', 35);
insert into employee_direction (direction, employee_id) values ('92859 Cardinal Plaza', 36);
insert into employee_direction (direction, employee_id) values ('8222 Holmberg Alley', 37);
insert into employee_direction (direction, employee_id) values ('182 Loomis Street', 38);
insert into employee_direction (direction, employee_id) values ('947 Tomscot Street', 39);
insert into employee_direction (direction, employee_id) values ('36179 Porter Court', 40);
insert into employee_direction (direction, employee_id) values ('23 Tony Street', 41);
insert into employee_direction (direction, employee_id) values ('26523 Toban Hill', 42);
insert into employee_direction (direction, employee_id) values ('119 Katie Terrace', 43);
insert into employee_direction (direction, employee_id) values ('7 Orin Center', 44);
insert into employee_direction (direction, employee_id) values ('031 Hallows Point', 45);
insert into employee_direction (direction, employee_id) values ('144 Sugar Avenue', 46);
insert into employee_direction (direction, employee_id) values ('28304 Westport Center', 47);
insert into employee_direction (direction, employee_id) values ('4721 Hintze Road', 48);
insert into employee_direction (direction, employee_id) values ('0 Sugar Street', 49);
insert into employee_direction (direction, employee_id) values ('7693 Nelson Point', 50);
insert into employee_direction (direction, employee_id) values ('67 Green Ridge Hill', 51);
insert into employee_direction (direction, employee_id) values ('802 Cottonwood Plaza', 52);
insert into employee_direction (direction, employee_id) values ('5562 Crest Line Center', 53);
insert into employee_direction (direction, employee_id) values ('5608 Huxley Point', 55);
insert into employee_direction (direction, employee_id) values ('03 Park Meadow Center', 55);
insert into employee_direction (direction, employee_id) values ('9155 Vera Point', 56);
insert into employee_direction (direction, employee_id) values ('0 Messerschmidt Place', 57);
insert into employee_direction (direction, employee_id) values ('57 Brown Trail', 58);
insert into employee_direction (direction, employee_id) values ('79516 Harper Drive', 59);
insert into employee_direction (direction, employee_id) values ('2508 Hudson Crossing', 60);
insert into employee_direction (direction, employee_id) values ('64145 Colorado Junction', 61);
insert into employee_direction (direction, employee_id) values ('77 Brentwood Terrace', 62);
insert into employee_direction (direction, employee_id) values ('59 Talisman Drive', 63);
insert into employee_direction (direction, employee_id) values ('850 Dennis Center', 64);
insert into employee_direction (direction, employee_id) values ('297 Nevada Hill', 65);
insert into employee_direction (direction, employee_id) values ('03 Ridge Oak Center', 66);
insert into employee_direction (direction, employee_id) values ('79 Maple Wood Center', 67);
insert into employee_direction (direction, employee_id) values ('1229 Messerschmidt Terrace', 68);
insert into employee_direction (direction, employee_id) values ('62999 Sloan Terrace', 69);

--TABLA LOG_TYPE
select * from log_type

ALTER TABLE log_type
DROP COLUMN creation_date

ALTER TABLE log_type
DROP COLUMN update_date

INSERT INTO log_type VALUES('Administrador')
INSERT INTO log_type VALUES('Usuario')

--TABLA EMPLOYEE_LOG
select * from employee_log

ALTER TABLE employee_log
DROP COLUMN creation_date

ALTER TABLE employee_log
DROP COLUMN update_date

insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (1, '8/17/2019', '30.186.47.252', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (2, '7/1/2021', '186.220.219.252', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (3, '3/12/2021', '146.191.118.121', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (4, '5/22/2020', '158.186.251.189', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (5, '10/4/2020', '84.145.121.79', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (6, '10/18/2020', '0.17.12.229', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (7, '2/21/2019', '21.20.98.27', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (8, '10/18/2020', '127.113.244.255', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (9, '5/24/2020', '20.139.110.6', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (10, '3/25/2019', '154.59.168.154', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (11, '3/3/2019', '123.46.103.93', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (12, '6/9/2020', '37.139.17.88', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (13, '9/19/2020', '174.193.213.203', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (14, '10/26/2020', '177.121.128.201', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (15, '6/29/2020', '224.95.134.36', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (16, '12/20/2020', '68.102.229.149', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (17, '6/16/2021', '4.157.158.242', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (18, '1/14/2021', '205.32.66.91', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (19, '12/16/2019', '113.170.178.242', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (21, '2/9/2019', '92.162.93.48', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (21, '12/22/2020', '9.55.228.223', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (22, '5/11/2019', '169.214.95.76', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (23, '11/24/2019', '80.184.28.92', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (24, '5/2/2021', '31.183.74.168', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (25, '1/17/2020', '151.158.51.48', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (26, '2/28/2020', '125.145.204.75', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (27, '8/13/2019', '68.192.53.181', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (28, '5/19/2021', '221.69.230.63', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (29, '9/22/2020', '135.92.117.237', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (30, '1/22/2019', '207.39.172.38', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (30, '6/10/2021', '17.133.9.107',1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (32, '9/26/2020', '190.113.200.249', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (33, '9/2/2019', '173.139.135.91', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (34, '1/10/2021', '3.30.148.83', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (35, '4/17/2019', '251.39.153.104', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (36, '1/7/2019', '175.99.237.36', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (37, '9/5/2019', '222.235.56.97', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (38, '6/17/2021', '213.137.200.57', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (39, '4/8/2021', '53.98.198.64', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (40, '5/1/2019', '99.210.40.193', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (41, '9/1/2020', '234.160.51.149', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (42, '9/12/2021', '78.100.57.149', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (43, '5/2/2021', '89.158.70.23', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (44, '5/18/2019', '50.2.173.98', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (45, '7/2/2020', '180.246.206.151', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (46, '9/6/2021', '27.98.31.42', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (47, '5/1/2020', '186.16.134.71', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (48, '3/11/2020', '68.46.248.84', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (49, '4/26/2019', '33.113.54.168', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (50, '4/25/2020', '156.139.254.82', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (51, '12/12/2018', '239.133.36.3', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (52, '2/2/2019', '83.212.225.87', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (53, '9/17/2019', '236.55.21.12', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (53, '3/29/2019', '197.173.206.89', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (55, '6/30/2020', '216.7.168.249', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (56, '8/28/2019', '33.142.76.80', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (57, '12/23/2018', '16.183.179.139', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (58, '7/27/2021', '54.78.171.246', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (59, '3/20/2021', '60.141.41.83', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (60, '1/26/2019', '221.202.83.172', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (61, '10/23/2018', '237.143.99.222', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (62, '9/29/2019', '167.222.226.199', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (63, '5/20/2020', '16.178.106.98', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (64, '2/1/2021', '12.18.5.147', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (65, '6/11/2021', '124.24.21.79', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (66, '12/2/2019', '62.245.42.130', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (67, '1/20/2019', '175.178.162.47', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (68, '6/23/2019', '56.3.146.217', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (69, '6/10/2020', '126.165.227.74', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (70, '3/1/2019', '228.113.117.109', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (71, '1/9/2019', '67.147.185.84', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (72, '12/21/2019', '91.142.116.20', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (73, '9/25/2021', '162.20.210.107', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (74, '5/18/2019', '254.167.48.245', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (75, '5/2/2021', '70.106.219.164', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (76, '8/28/2020', '160.246.183.158', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (77, '5/7/2019', '10.47.224.47', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (78, '8/12/2019', '91.187.46.3', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (79, '1/25/2020', '126.23.143.52', 1);


--LLENANDO TABLA TELEPHONE_HOSPITAL
alter table telephone_hospital
drop column creation_date

alter table telephone_hospital
drop column update_date

INSERT INTO telephone_hospital VALUES('4-557-868-5273',76);
INSERT INTO telephone_hospital VALUES('6-637-732-6688',95);
INSERT INTO telephone_hospital VALUES('3-757-778-8658',83);
INSERT INTO telephone_hospital VALUES('1-316-737-6442',75);
INSERT INTO telephone_hospital VALUES('6-182-881-4565',10);
INSERT INTO telephone_hospital VALUES('1-164-841-1647',54);
INSERT INTO telephone_hospital VALUES('3-474-235-7572',86);
INSERT INTO telephone_hospital VALUES('8-617-552-4785',72);
INSERT INTO telephone_hospital VALUES('5-468-411-2247',50);
INSERT INTO telephone_hospital VALUES('1-533-165-3874',17);
INSERT INTO telephone_hospital VALUES('4-351-247-4817',73);
INSERT INTO telephone_hospital VALUES('5-544-686-5756',94);
INSERT INTO telephone_hospital VALUES('3-831-427-7855',5);
INSERT INTO telephone_hospital VALUES('5-887-545-8757',46);
INSERT INTO telephone_hospital VALUES('3-168-283-8567',29);
INSERT INTO telephone_hospital VALUES('1-716-387-8838',68);
INSERT INTO telephone_hospital VALUES('8-884-872-6176',39);
INSERT INTO telephone_hospital VALUES('5-868-364-8166',85);
INSERT INTO telephone_hospital VALUES('4-857-774-1188',23);
INSERT INTO telephone_hospital VALUES('1-787-422-3161',40);
INSERT INTO telephone_hospital VALUES('3-763-815-3311',91);
INSERT INTO telephone_hospital VALUES('2-383-463-5848',44);
INSERT INTO telephone_hospital VALUES('6-548-547-6825',2);
INSERT INTO telephone_hospital VALUES('2-218-468-1716',15);
INSERT INTO telephone_hospital VALUES('2-874-344-7725',31);
INSERT INTO telephone_hospital VALUES('6-568-331-8781',20);
INSERT INTO telephone_hospital VALUES('5-423-486-6836',61);
INSERT INTO telephone_hospital VALUES('5-344-762-8673',84);
INSERT INTO telephone_hospital VALUES('8-174-163-3768',91);
INSERT INTO telephone_hospital VALUES('3-138-583-4723',1);
INSERT INTO telephone_hospital VALUES('8-521-615-6234',42);
INSERT INTO telephone_hospital VALUES('1-252-847-7351',74);
INSERT INTO telephone_hospital VALUES('3-246-478-7675',49);
INSERT INTO telephone_hospital VALUES('5-256-137-1587',36);
INSERT INTO telephone_hospital VALUES('4-244-346-4547',56);
INSERT INTO telephone_hospital VALUES('6-723-366-3616',73);
INSERT INTO telephone_hospital VALUES('7-161-682-4313',29);
INSERT INTO telephone_hospital VALUES('3-542-128-2411',27);
INSERT INTO telephone_hospital VALUES('1-578-256-3576',34);
INSERT INTO telephone_hospital VALUES('6-665-332-6588',77);
INSERT INTO telephone_hospital VALUES('3-435-143-7148',22);
INSERT INTO telephone_hospital VALUES('2-227-317-5814',40);
INSERT INTO telephone_hospital VALUES('4-482-737-1585',77);
INSERT INTO telephone_hospital VALUES('3-221-473-3643',4);
INSERT INTO telephone_hospital VALUES('1-435-238-3871',70);
INSERT INTO telephone_hospital VALUES('5-216-686-3645',22);
INSERT INTO telephone_hospital VALUES('7-611-626-1181',33);
INSERT INTO telephone_hospital VALUES('8-282-137-4154',33);
INSERT INTO telephone_hospital VALUES('7-557-714-6816',45);
INSERT INTO telephone_hospital VALUES('2-756-215-6166',48);
INSERT INTO telephone_hospital VALUES('1-423-622-3272',15);
INSERT INTO telephone_hospital VALUES('6-821-444-7548',25);
INSERT INTO telephone_hospital VALUES('7-128-872-2716',36);
INSERT INTO telephone_hospital VALUES('8-117-842-4631',19);
INSERT INTO telephone_hospital VALUES('8-526-378-5485',58);
INSERT INTO telephone_hospital VALUES('8-234-583-5272',41);
INSERT INTO telephone_hospital VALUES('3-581-255-4811',39);
INSERT INTO telephone_hospital VALUES('6-488-118-8548',82);
INSERT INTO telephone_hospital VALUES('1-776-148-1373',69);
INSERT INTO telephone_hospital VALUES('8-848-315-7187',12);
INSERT INTO telephone_hospital VALUES('1-352-827-8618',39);
INSERT INTO telephone_hospital VALUES('6-735-211-7121',20);
INSERT INTO telephone_hospital VALUES('6-864-717-1176',80);
INSERT INTO telephone_hospital VALUES('8-712-841-8813',50);
INSERT INTO telephone_hospital VALUES('7-168-881-7334',4);
INSERT INTO telephone_hospital VALUES('5-415-383-7256',33);
INSERT INTO telephone_hospital VALUES('8-886-213-6526',82);
INSERT INTO telephone_hospital VALUES('4-722-675-5315',51);
INSERT INTO telephone_hospital VALUES('3-461-643-2438',3);
INSERT INTO telephone_hospital VALUES('8-362-164-4632',45);
INSERT INTO telephone_hospital VALUES('6-224-818-8343',81);
INSERT INTO telephone_hospital VALUES('4-311-744-1722',41);
INSERT INTO telephone_hospital VALUES('1-356-527-1223',56);
INSERT INTO telephone_hospital VALUES('3-723-416-5876',75);
INSERT INTO telephone_hospital VALUES('6-353-725-5863',63);
INSERT INTO telephone_hospital VALUES('5-332-636-3847',5);
INSERT INTO telephone_hospital VALUES('2-257-464-3678',28);
INSERT INTO telephone_hospital VALUES('5-428-576-5457',7);
INSERT INTO telephone_hospital VALUES('7-576-247-3551',69);
INSERT INTO telephone_hospital VALUES('5-712-318-7415',19);
INSERT INTO telephone_hospital VALUES('1-662-725-5351',90);
INSERT INTO telephone_hospital VALUES('8-612-856-1453',79);
INSERT INTO telephone_hospital VALUES('6-534-616-6166',51);
INSERT INTO telephone_hospital VALUES('6-554-843-1722',56);
INSERT INTO telephone_hospital VALUES('8-677-347-5384',22);
INSERT INTO telephone_hospital VALUES('7-283-838-3154',37);
INSERT INTO telephone_hospital VALUES('1-318-231-5374',90);
INSERT INTO telephone_hospital VALUES('3-745-722-7235',82);
INSERT INTO telephone_hospital VALUES('5-125-384-4246',91);
INSERT INTO telephone_hospital VALUES('3-831-888-1611',12);
INSERT INTO telephone_hospital VALUES('7-448-462-7733',20);
INSERT INTO telephone_hospital VALUES('2-433-316-7152',94);
INSERT INTO telephone_hospital VALUES('7-182-442-4816',89);
INSERT INTO telephone_hospital VALUES('5-585-281-1518',41);
INSERT INTO telephone_hospital VALUES('6-576-421-2241',30);
INSERT INTO telephone_hospital VALUES('6-833-273-1736',70);
INSERT INTO telephone_hospital VALUES('1-161-414-6255',83);
INSERT INTO telephone_hospital VALUES('6-416-846-2468',22);
INSERT INTO telephone_hospital VALUES('5-686-776-3715',31);
INSERT INTO telephone_hospital VALUES('5-871-141-1456',67);


--LLENANDO TABLA country
alter table country
drop column creation_date

alter table country
drop column update_date

SELECT * FROM country;


INSERT INTO country(name) VALUES('Bolivia');
INSERT INTO country(name) VALUES('Albania');
INSERT INTO country(name) VALUES('Jamaica');
INSERT INTO country(name) VALUES('Sudan, South');
INSERT INTO country(name) VALUES('Belarus');
INSERT INTO country(name) VALUES('Kiribati');
INSERT INTO country(name) VALUES('Macedonia');
INSERT INTO country(name) VALUES('Vietnam');
INSERT INTO country(name) VALUES('Slovenia');
INSERT INTO country(name) VALUES('Indonesia');
INSERT INTO country(name) VALUES('Côte d’Ivoire');
INSERT INTO country(name) VALUES('Belgium');
INSERT INTO country(name) VALUES('Bosnia and Herzegovina');
INSERT INTO country(name) VALUES('Andorra');
INSERT INTO country(name) VALUES('Malaysia');
INSERT INTO country(name) VALUES('Liberia');
INSERT INTO country(name) VALUES('Georgia');
INSERT INTO country(name) VALUES('Korea, North');
INSERT INTO country(name) VALUES('Lebanon');
INSERT INTO country(name) VALUES('Maldives');
INSERT INTO country(name) VALUES('Trinidad and Tobago');
INSERT INTO country(name) VALUES('Malawi');
INSERT INTO country(name) VALUES('Korea, North');
INSERT INTO country(name) VALUES('Qatar');
INSERT INTO country(name) VALUES('Mozambique');
INSERT INTO country(name) VALUES('Angola');
INSERT INTO country(name) VALUES('Fiji');
INSERT INTO country(name) VALUES('Lebanon');
INSERT INTO country(name) VALUES('Haiti');
INSERT INTO country(name) VALUES('Moldova');
INSERT INTO country(name) VALUES('Gabon');
INSERT INTO country(name) VALUES('Romania');
INSERT INTO country(name) VALUES('Jamaica');
INSERT INTO country(name) VALUES('Rwanda');
INSERT INTO country(name) VALUES('Dominican Republic');
INSERT INTO country(name) VALUES('Andorra');
INSERT INTO country(name) VALUES('Georgia');
INSERT INTO country(name) VALUES('Costa Rica');
INSERT INTO country(name) VALUES('Trinidad and Tobago');
INSERT INTO country(name) VALUES('Haiti');
INSERT INTO country(name) VALUES('Bosnia and Herzegovina');
INSERT INTO country(name) VALUES('Nauru');
INSERT INTO country(name) VALUES('Argentina');
INSERT INTO country(name) VALUES('Equatorial Guinea');
INSERT INTO country(name) VALUES('Madagascar');
INSERT INTO country(name) VALUES('Iraq');
INSERT INTO country(name) VALUES('Bolivia');
INSERT INTO country(name) VALUES('Indonesia');
INSERT INTO country(name) VALUES('United Arab Emirates');
INSERT INTO country(name) VALUES('Russia');
INSERT INTO country(name) VALUES('Netherlands');
INSERT INTO country(name) VALUES('Congo, Republic of the');
INSERT INTO country(name) VALUES('Vanuatu');
INSERT INTO country(name) VALUES('Saint Lucia');
INSERT INTO country(name) VALUES('Burkina Faso');
INSERT INTO country(name) VALUES('Panama');
INSERT INTO country(name) VALUES('Austria');
INSERT INTO country(name) VALUES('Mongolia');
INSERT INTO country(name) VALUES('United Arab Emirates');
INSERT INTO country(name) VALUES('Tonga');
INSERT INTO country(name) VALUES('Grenada');
INSERT INTO country(name) VALUES('Slovenia');
INSERT INTO country(name) VALUES('Kazakhstan');
INSERT INTO country(name) VALUES('Spain');
INSERT INTO country(name) VALUES('Montenegro');
INSERT INTO country(name) VALUES('Netherlands');
INSERT INTO country(name) VALUES('Angola');
INSERT INTO country(name) VALUES('Bangladesh');
INSERT INTO country(name) VALUES('Poland');
INSERT INTO country(name) VALUES('Tanzania');
INSERT INTO country(name) VALUES('Benin');
INSERT INTO country(name) VALUES('Dominican Republic');
INSERT INTO country(name) VALUES('Austria');
INSERT INTO country(name) VALUES('Morocco');
INSERT INTO country(name) VALUES('Sri Lanka');
INSERT INTO country(name) VALUES('Portugal');
INSERT INTO country(name) VALUES('Sierra Leone');
INSERT INTO country(name) VALUES('Costa Rica');
INSERT INTO country(name) VALUES('Liberia');
INSERT INTO country(name) VALUES('Iran');
INSERT INTO country(name) VALUES('Dominica');
INSERT INTO country(name) VALUES('Algeria');
INSERT INTO country(name) VALUES('Czech Republic');
INSERT INTO country(name) VALUES('Denmark');
INSERT INTO country(name) VALUES('Serbia');
INSERT INTO country(name) VALUES('Côte d’Ivoire');
INSERT INTO country(name) VALUES('Uganda');
INSERT INTO country(name) VALUES('Taiwan');
INSERT INTO country(name) VALUES('Mozambique');
INSERT INTO country(name) VALUES('Congo, Republic of the');
INSERT INTO country(name) VALUES('Korea, South');
INSERT INTO country(name) VALUES('Burkina Faso');
INSERT INTO country(name) VALUES('Finland');
INSERT INTO country(name) VALUES('Lithuania');
INSERT INTO country(name) VALUES('Kazakhstan');
INSERT INTO country(name) VALUES('Equatorial Guinea');
INSERT INTO country(name) VALUES('Saint Vincent and the Grenadines');
INSERT INTO country(name) VALUES('Samoa');
INSERT INTO country(name) VALUES('Marshall Islands');
INSERT INTO country(name) VALUES('India');
INSERT INTO country(name) VALUES('Malta');
INSERT INTO country(name) VALUES('Singapore');
INSERT INTO country(name) VALUES('Italy');
INSERT INTO country(name) VALUES('United Kingdom');
INSERT INTO country(name) VALUES('Guinea-Bissau');
INSERT INTO country(name) VALUES('The Gambia');
INSERT INTO country(name) VALUES('Syria');
INSERT INTO country(name) VALUES('Zimbabwe');
INSERT INTO country(name) VALUES('Uganda');
INSERT INTO country(name) VALUES('Fiji');
INSERT INTO country(name) VALUES('Uganda');
INSERT INTO country(name) VALUES('Argentina');
INSERT INTO country(name) VALUES('Kuwait');
INSERT INTO country(name) VALUES('Vatican City');
INSERT INTO country(name) VALUES('Kenya');
INSERT INTO country(name) VALUES('Malaysia');
INSERT INTO country(name) VALUES('Dominica');
INSERT INTO country(name) VALUES('Uruguay');
INSERT INTO country(name) VALUES('Egypt');
INSERT INTO country(name) VALUES('Haiti');
INSERT INTO country(name) VALUES('Sudan, South');
INSERT INTO country(name) VALUES('Grenada');
INSERT INTO country(name) VALUES('Greece');
INSERT INTO country(name) VALUES('Grenada');
INSERT INTO country(name) VALUES('Korea, South');
INSERT INTO country(name) VALUES('Tanzania');
INSERT INTO country(name) VALUES('Nauru');
INSERT INTO country(name) VALUES('Mauritania');
INSERT INTO country(name) VALUES('Laos');
INSERT INTO country(name) VALUES('Suriname');
INSERT INTO country(name) VALUES('Belize');
INSERT INTO country(name) VALUES('Nicaragua');
INSERT INTO country(name) VALUES('Cabo Verde');
INSERT INTO country(name) VALUES('Ecuador');
INSERT INTO country(name) VALUES('Senegal');
INSERT INTO country(name) VALUES('Eritrea');
INSERT INTO country(name) VALUES('Ukraine');
INSERT INTO country(name) VALUES('Dominican Republic');
INSERT INTO country(name) VALUES('Côte d’Ivoire');
INSERT INTO country(name) VALUES('Ecuador');
INSERT INTO country(name) VALUES('Saint Lucia');
INSERT INTO country(name) VALUES('Kazakhstan');
INSERT INTO country(name) VALUES('Jordan');
INSERT INTO country(name) VALUES('Sierra Leone');
INSERT INTO country(name) VALUES('El Salvador');
INSERT INTO country(name) VALUES('Norway');
INSERT INTO country(name) VALUES('Nauru');
INSERT INTO country(name) VALUES('Tuvalu');
INSERT INTO country(name) VALUES('Saint Vincent and the Grenadines');
INSERT INTO country(name) VALUES('Namibia');
INSERT INTO country(name) VALUES('Seychelles');
INSERT INTO country(name) VALUES('Turkey');
INSERT INTO country(name) VALUES('Equatorial Guinea');
INSERT INTO country(name) VALUES('Bahrain');
INSERT INTO country(name) VALUES('Vatican City');
INSERT INTO country(name) VALUES('Singapore');
INSERT INTO country(name) VALUES('Burundi');
INSERT INTO country(name) VALUES('Armenia');
INSERT INTO country(name) VALUES('Norway');
INSERT INTO country(name) VALUES('Kazakhstan');
INSERT INTO country(name) VALUES('Jamaica');
INSERT INTO country(name) VALUES('Fiji');
INSERT INTO country(name) VALUES('Kosovo');
INSERT INTO country(name) VALUES('Comoros');
INSERT INTO country(name) VALUES('Tajikistan');
INSERT INTO country(name) VALUES('Estonia');
INSERT INTO country(name) VALUES('Bosnia and Herzegovina');
INSERT INTO country(name) VALUES('Laos');
INSERT INTO country(name) VALUES('Samoa');
INSERT INTO country(name) VALUES('Korea, North');
INSERT INTO country(name) VALUES('Kiribati');
INSERT INTO country(name) VALUES('Botswana');
INSERT INTO country(name) VALUES('Sierra Leone');
INSERT INTO country(name) VALUES('Greece');
INSERT INTO country(name) VALUES('Israel');
INSERT INTO country(name) VALUES('Bosnia and Herzegovina');
INSERT INTO country(name) VALUES('Italy');
INSERT INTO country(name) VALUES('Malta');
INSERT INTO country(name) VALUES('Uganda');
INSERT INTO country(name) VALUES('Argentina');
INSERT INTO country(name) VALUES('Togo');
INSERT INTO country(name) VALUES('Ecuador');
INSERT INTO country(name) VALUES('Peru');
INSERT INTO country(name) VALUES('Ireland');
INSERT INTO country(name) VALUES('Mauritius');
INSERT INTO country(name) VALUES('Nicaragua');
INSERT INTO country(name) VALUES('United Kingdom');
INSERT INTO country(name) VALUES('Cabo Verde');
INSERT INTO country(name) VALUES('Sao Tome and Principe');
INSERT INTO country(name) VALUES('Kyrgyzstan');
INSERT INTO country(name) VALUES('Botswana');
INSERT INTO country(name) VALUES('Solomon Islands');
INSERT INTO country(name) VALUES('Taiwan');
INSERT INTO country(name) VALUES('San Marino');
INSERT INTO country(name) VALUES('Sri Lanka');
INSERT INTO country(name) VALUES('Namibia');
INSERT INTO country(name) VALUES('Somalia');
INSERT INTO country(name) VALUES('Switzerland');
INSERT INTO country(name) VALUES('Korea, South');
INSERT INTO country(name) VALUES('Andorra');

--LLENANDO TABLA medicine
alter table medicine
drop column creation_date

alter table medicine
drop column update_date

CREATE TABLE medicine_type(
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

SELECT *
FROM medicine;
CREATE DATABASE proyect2
GO
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
drop column creation_date

select * from hospital
INSERT INTO hospital VALUES('Emma','Empress  Drive, 5843',3,277);
INSERT INTO hospital VALUES('Joy','Geary   Hill, 5511',9,498);
INSERT INTO hospital VALUES('Julius','Endsleigh  Route, 5228',9,250);
INSERT INTO hospital VALUES('Julian','Udall   Way, 341',5,230);
INSERT INTO hospital VALUES('Oliver','Battersea   Street, 4084',8,268);
INSERT INTO hospital VALUES('Madelyn','Maple Road, 6358',5,445);
INSERT INTO hospital VALUES('Jayden','Zealand Lane, 400',2,350);
INSERT INTO hospital VALUES('Sara','Canning  Way, 2753',3,365);
INSERT INTO hospital VALUES('Cassidy','Cheltenham  Hill, 7724',1,17);
INSERT INTO hospital VALUES('Kassandra','Blackwall  Vale, 800',5,85);
INSERT INTO hospital VALUES('Gabriel','Blackwall  Lane, 4597',6,319);
INSERT INTO hospital VALUES('Marvin','Linda   Drive, 3948',7,306);
INSERT INTO hospital VALUES('Peter','Geary   Vale, 5822',8,297);
INSERT INTO hospital VALUES('Carla','Vine  Crossroad, 4318',8,107);
INSERT INTO hospital VALUES('Aleksandra','Hampden  Drive, 6783',5,451);
INSERT INTO hospital VALUES('Joyce','Aspen Walk, 6579',1,378);
INSERT INTO hospital VALUES('Selena','Viscount   Route, 3367',4,15);
INSERT INTO hospital VALUES('Adelaide','Linda Lane Avenue, 6564',6,25);
INSERT INTO hospital VALUES('Harvey','Heritage Road, 7491',4,343);
INSERT INTO hospital VALUES('Maggie','Cedarne  Pass, 2256',7,95);
INSERT INTO hospital VALUES('Hannah','Lincoln Lane, 7133',8,342);
INSERT INTO hospital VALUES('Melania','Andsell    Alley, 4400',2,350);
INSERT INTO hospital VALUES('Jules','Norland  Road, 9589',8,164);
INSERT INTO hospital VALUES('Mayleen','Bicknell  Lane, 6663',1,110);
INSERT INTO hospital VALUES('Caleb','Shepherds  Alley, 7097',8,441);
INSERT INTO hospital VALUES('Kamila','Castle Drive, 7356',4,177);
INSERT INTO hospital VALUES('Bob','Cliff  Boulevard, 2408',9,433);
INSERT INTO hospital VALUES('Keira','Longman   Tunnel, 8545',8,339);
INSERT INTO hospital VALUES('Maya','Cloth  Road, 7676',5,166);
INSERT INTO hospital VALUES('Alex','Gavel   Pass, 3434',8,240);
INSERT INTO hospital VALUES('Josh','Carltoun   Street, 4906',9,312);
INSERT INTO hospital VALUES('Manuel','Elba  Grove, 834',4,224);
INSERT INTO hospital VALUES('Maggie','Armory  Crossroad, 9810',2,316);
INSERT INTO hospital VALUES('George','Monroe Drive, 8987',1,224);
INSERT INTO hospital VALUES('Greta','Dyott   Lane, 1691',4,97);
INSERT INTO hospital VALUES('Rick','Caedmon  Route, 8853',1,6);
INSERT INTO hospital VALUES('Makena','Carolina  Rue, 1121',8,235);
INSERT INTO hospital VALUES('Elena','Blandford  Route, 6140',8,439);
INSERT INTO hospital VALUES('Macy','Balfe   Way, 9513',2,227);
INSERT INTO hospital VALUES('Gabriel','Clyde Lane, 9668',3,134);
INSERT INTO hospital VALUES('Morgan','Bolton  Alley, 1495',6,244);
INSERT INTO hospital VALUES('John','Cleaver Walk, 1392',9,428);
INSERT INTO hospital VALUES('Danny','Castile  Hill, 5384',3,176);
INSERT INTO hospital VALUES('Bryce','Tiptree   Lane, 8774',6,384);
INSERT INTO hospital VALUES('Maddison','Berry  Vale, 6289',2,253);
INSERT INTO hospital VALUES('Nina','King William  Grove, 2263',4,95);
INSERT INTO hospital VALUES('Chuck','Chandos  Walk, 1982',6,49);
INSERT INTO hospital VALUES('Aileen','Bury  Grove, 9416',9,459);
INSERT INTO hospital VALUES('Samantha','Wakley   Tunnel, 657',7,373);
INSERT INTO hospital VALUES('Clint','Cobden  Avenue, 7767',4,236);
INSERT INTO hospital VALUES('Brad','Eaglet  Boulevard, 9206',2,262);
INSERT INTO hospital VALUES('Maggie','Berriman  Rue, 9570',7,40);
INSERT INTO hospital VALUES('Luke','Kilner   Rue, 2853',6,162);
INSERT INTO hospital VALUES('David','Balham   Vale, 6742',4,363);
INSERT INTO hospital VALUES('Daphne','East Grove, 2494',6,498);
INSERT INTO hospital VALUES('Brad','Chicksand  Road, 7548',4,99);
INSERT INTO hospital VALUES('Rosalie','Carnegie   Alley, 463',7,41);
INSERT INTO hospital VALUES('Carter','Bacton   Avenue, 7606',2,327);
INSERT INTO hospital VALUES('Cedrick','Chamberlain  Tunnel, 7176',8,179);
INSERT INTO hospital VALUES('Harvey','Bales  Pass, 463',1,188);
INSERT INTO hospital VALUES('Oliver','Victoria  Hill, 1956',2,456);
INSERT INTO hospital VALUES('Oliver','Blore  Way, 7769',6,178);
INSERT INTO hospital VALUES('Ruby','Thoresby   Avenue, 4783',4,280);
INSERT INTO hospital VALUES('Stella','West Road, 5943',8,474);
INSERT INTO hospital VALUES('Bryon','Baynes  Drive, 5841',7,480);
INSERT INTO hospital VALUES('Chester','Boleyn  Hill, 211',7,50);
INSERT INTO hospital VALUES('Margot','Collins  Lane, 1539',1,282);
INSERT INTO hospital VALUES('Johnny','Chestnut Rise Hill, 7412',8,385);
INSERT INTO hospital VALUES('Vicky','Victoria Rise Way, 2861',9,422);
INSERT INTO hospital VALUES('Phillip','Under  Street, 9388',4,457);
INSERT INTO hospital VALUES('Doug','Cable    Grove, 5990',5,37);
INSERT INTO hospital VALUES('Chester','Elf  Grove, 8369',4,440);
INSERT INTO hospital VALUES('Hank','Elgood   Crossroad, 8901',2,344);
INSERT INTO hospital VALUES('Nick','Becher  Pass, 7782',3,17);
INSERT INTO hospital VALUES('Kieth','Cave   Street, 6095',6,9);
INSERT INTO hospital VALUES('Darlene','Arlington  Vale, 3551',7,385);
INSERT INTO hospital VALUES('Christine','Wakley   Grove, 5797',9,130);
INSERT INTO hospital VALUES('Maxwell','Bel   Road, 2024',3,29);
INSERT INTO hospital VALUES('Anthony','Betton  Walk, 2047',1,209);
INSERT INTO hospital VALUES('Nate','Fieldstone Street, 7335',8,324);
INSERT INTO hospital VALUES('Johnny','Paris   Hill, 4939',9,265);
INSERT INTO hospital VALUES('Gladys','Babmaes    Street, 2921',7,489);
INSERT INTO hospital VALUES('Christine','Linden Route, 4256',9,428);
INSERT INTO hospital VALUES('Tania','Bletchley   Vale, 6557',4,285);
INSERT INTO hospital VALUES('Eduardo','Clerkenwell Crossroad, 1015',6,291);
INSERT INTO hospital VALUES('Ilona','Cleveland  Pass, 3058',5,215);
INSERT INTO hospital VALUES('Marissa','Clere  Lane, 2677',4,186);
INSERT INTO hospital VALUES('Moira','Pine Boulevard, 9011',8,276);
INSERT INTO hospital VALUES('Eryn','Camdenhurst   Crossroad, 5664',9,12);
INSERT INTO hospital VALUES('Gil','Glenwood Street, 1624',4,460);
INSERT INTO hospital VALUES('Phillip','Marina  Vale, 4337',4,90);
INSERT INTO hospital VALUES('Tess','Central  Route, 9143',2,49);
INSERT INTO hospital VALUES('Lorraine','Arundel   Street, 8209',1,470);
INSERT INTO hospital VALUES('Lucy','Bennett  Pass, 5666',4,145);
INSERT INTO hospital VALUES('Brad','Betton  Alley, 416',5,102);
INSERT INTO hospital VALUES('Carl','Dunstable   Grove, 3633',4,490);
INSERT INTO hospital VALUES('Marvin','Dunstans  Rue, 7622',9,495);
INSERT INTO hospital VALUES('Harvey','Abbey   Boulevard, 3655',9,239);
INSERT INTO hospital VALUES('Rocco','Durnford  Crossroad, 184',9,290);
INSERT INTO hospital VALUES('Clint','Cleaver Crossroad, 7465',9,235);

--TABLA LEVEL

alter table level
drop column creation_date

alter table level
drop column update_date 

INSERT INTO level VALUES('Nivel Otawa',34);
INSERT INTO level VALUES('Nivel Fremont',69);
INSERT INTO level VALUES('Nivel Rome',99);
INSERT INTO level VALUES('Nivel Omaha',87);
INSERT INTO level VALUES('Nivel Quebec',56);
INSERT INTO level VALUES('Nivel Hollywood',97);
INSERT INTO level VALUES('Nivel Boston',58);
INSERT INTO level VALUES('Nivel El Paso',39);
INSERT INTO level VALUES('Nivel Chicago',90);
INSERT INTO level VALUES('Nivel Colorado Springs',78);
INSERT INTO level VALUES('Nivel Salt Lake City',5);
INSERT INTO level VALUES('Nivel Wien',22);
INSERT INTO level VALUES('Nivel Los Angeles',74);
INSERT INTO level VALUES('Nivel Garland',29);
INSERT INTO level VALUES('Nivel Lancaster',80);
INSERT INTO level VALUES('Nivel Oklahoma City',10);
INSERT INTO level VALUES('Nivel Quebec',22);
INSERT INTO level VALUES('Nivel Bridgeport',72);
INSERT INTO level VALUES('Nivel Jersey City',60);
INSERT INTO level VALUES('Nivel San Jose',29);
INSERT INTO level VALUES('Nivel Lakewood',14);
INSERT INTO level VALUES('Nivel Garland',4);
INSERT INTO level VALUES('Nivel Nashville',52);
INSERT INTO level VALUES('Nivel Omaha',44);
INSERT INTO level VALUES('Nivel Rome',78);
INSERT INTO level VALUES('Nivel Henderson',52);
INSERT INTO level VALUES('Nivel Glendale',40);
INSERT INTO level VALUES('Nivel Bellevue',65);
INSERT INTO level VALUES('Nivel Tallahassee',41);
INSERT INTO level VALUES('Nivel Fullerton',78);
INSERT INTO level VALUES('Nivel Otawa',28);
INSERT INTO level VALUES('Nivel Arlington',21);
INSERT INTO level VALUES('Nivel Lincoln',88);
INSERT INTO level VALUES('Nivel Norfolk',98);
INSERT INTO level VALUES('Nivel Huntsville',16);
INSERT INTO level VALUES('Nivel Denver',88);
INSERT INTO level VALUES('Nivel Atlanta',50);
INSERT INTO level VALUES('Nivel Berlin',97);
INSERT INTO level VALUES('Nivel Moreno Valley',3);
INSERT INTO level VALUES('Nivel Berlin',22);
INSERT INTO level VALUES('Nivel Laredo',86);
INSERT INTO level VALUES('Nivel Moreno Valley',83);
INSERT INTO level VALUES('Nivel Phoenix',99);
INSERT INTO level VALUES('Nivel Arlington',60);
INSERT INTO level VALUES('Nivel Wien',99);
INSERT INTO level VALUES('Nivel Miami',83);
INSERT INTO level VALUES('Nivel Dallas',61);
INSERT INTO level VALUES('Nivel Saint Paul',60);
INSERT INTO level VALUES('Nivel Lakewood',10);
INSERT INTO level VALUES('Nivel Hollywood',43);
INSERT INTO level VALUES('Nivel Tulsa',58);
INSERT INTO level VALUES('Nivel Atlanta',38);
INSERT INTO level VALUES('Nivel Fremont',25);
INSERT INTO level VALUES('Nivel Lyon',34);
INSERT INTO level VALUES('Nivel Milano',20);
INSERT INTO level VALUES('Nivel New York',26);
INSERT INTO level VALUES('Nivel Atlanta',75);
INSERT INTO level VALUES('Nivel Lancaster',83);
INSERT INTO level VALUES('Nivel Murfreesboro',43);
INSERT INTO level VALUES('Nivel Rome',7);
INSERT INTO level VALUES('Nivel Anaheim',37);
INSERT INTO level VALUES('Nivel Huntsville',94);
INSERT INTO level VALUES('Nivel Oakland',31);
INSERT INTO level VALUES('Nivel Innsbruck',88);
INSERT INTO level VALUES('Nivel New York',31);
INSERT INTO level VALUES('Nivel Bakersfield',66);
INSERT INTO level VALUES('Nivel Tokyo',49);
INSERT INTO level VALUES('Nivel Irving',59);
INSERT INTO level VALUES('Nivel San Francisco',38);
INSERT INTO level VALUES('Nivel Kansas City',43);
INSERT INTO level VALUES('Nivel Norfolk',92);
INSERT INTO level VALUES('Nivel Stockton',86);
INSERT INTO level VALUES('Nivel Toledo',20);
INSERT INTO level VALUES('Nivel Long Beach',89);
INSERT INTO level VALUES('Nivel Quebec',75);
INSERT INTO level VALUES('Nivel Ontario',45);
INSERT INTO level VALUES('Nivel Omaha',92);
INSERT INTO level VALUES('Nivel San Antonio',18);
INSERT INTO level VALUES('Nivel Bridgeport',56);
INSERT INTO level VALUES('Nivel Phoenix',33);
INSERT INTO level VALUES('Nivel Quebec',13);
INSERT INTO level VALUES('Nivel Indianapolis',18);
INSERT INTO level VALUES('Nivel Bakersfield',25);
INSERT INTO level VALUES('Nivel Albuquerque',2);
INSERT INTO level VALUES('Nivel Ontario',2);
INSERT INTO level VALUES('Nivel Chicago',15);
INSERT INTO level VALUES('Nivel Salem',10);
INSERT INTO level VALUES('Nivel Toledo',69);
INSERT INTO level VALUES('Nivel Memphis',7);
INSERT INTO level VALUES('Nivel San Bernardino',51);
INSERT INTO level VALUES('Nivel Norfolk',35);
INSERT INTO level VALUES('Nivel El Paso',15);
INSERT INTO level VALUES('Nivel Salem',65);
INSERT INTO level VALUES('Nivel Bakersfield',12);
INSERT INTO level VALUES('Nivel Phoenix',49);
INSERT INTO level VALUES('Nivel Amarillo',79);
INSERT INTO level VALUES('Nivel Oakland',87);
INSERT INTO level VALUES('Nivel Springfield',84);
INSERT INTO level VALUES('Nivel Atlanta',93);
INSERT INTO level VALUES('Nivel Jacksonville',84);
--TABLA EMPLOYEE
ALTER TABLE employee
DROP COLUMN creation_date

ALTER TABLE employee
DROP COLUMN update_date

SELECT * FROM employee

INSERT INTO employee VALUES('Chanelle','Lewis','1998-02-14 10:13:18',6,2.2749537085532,42.719506694339,'Salmon',5,2,1,3,3,'nOd4Fh2dkN',3,'Chanelle_Lewis9052@gmail.com',1604.60897397371,793.460400833031,51.5270260174419);
INSERT INTO employee VALUES('Nate','Aldridge','1977-08-30 18:45:48',9,1.62545450796627,36.6027001401422,'White',1,4,1,1,9,'6edGyfIemE',1,'Nate_Aldridge4250@typill.biz',1153.74532882811,914.611055146256,47.9281170251445);
INSERT INTO employee VALUES('Chuck','Leslie','1965-05-16 21:42:41',5,1.63953258862697,30.537190437567,'Azure',2,2,3,3,9,'nZu1sa2rUE',3,'Chuck_Leslie9346@deavo.com',1340.4504351157,615.54879144465,70.5983552609563);
INSERT INTO employee VALUES('Enoch','Hopkinson','1983-12-25 22:47:51',9,1.9337750676711,146.251899568947,'Sky blue',2,1,7,2,7,'4gkF5vxi1t',3,'Enoch_Hopkinson3119@qater.org',1949.13301523222,986.287900892686,95.8759621702488);
INSERT INTO employee VALUES('Kate','Shaw','1998-08-12 07:28:10',9,2.26945471114919,99.8481154529602,'Dark Red',5,2,216,1,9,'nqvHlASfJ2',3,'Kate_Shaw6861@ovock.tech',1369.22775682445,974.533226553133,72.2603263739777);
INSERT INTO employee VALUES('Hank','Spencer','1976-12-12 03:41:38',8,1.45057641353951,27.4067273779804,'Sky blue',4,4,6,1,2,'X55mtQ1rTX',3,'Hank_Spencer200@sheye.org',572.504458486803,611.212628656632,59.4855433788549);
INSERT INTO employee VALUES('Ron','Lowe','1993-05-20 11:22:48',7,2.26872048623335,92.4511096456326,'Salmon',3,2,7,1,1,'9RF3Wadz0h',2,'Ron_Lowe6324@gembat.biz',1101.83973859988,938.719244649503,41.1404397930673);
INSERT INTO employee VALUES('Bernadette','Ulyatt','1964-08-31 13:00:36',3,1.70160946645849,47.3153248705507,'Auburn',2,3,9,1,3,'ioDlg1cPsx',2,'Bernadette_Ulyatt3236@brety.org',1368.00702504302,835.602129758616,84.9812651276501);
INSERT INTO employee VALUES('Nathan','Farrant','1983-10-24 02:40:03',7,2.09107020352551,52.5637895765546,'Brown',4,2,5,3,9,'SioTFt6h2d',3,'Nathan_Farrant603@guentu.biz',1087.94601866042,688.748252684133,92.4773394924017);
INSERT INTO employee VALUES('Chuck','Phillips','1979-04-22 07:45:16',9,2.2225801930868,79.2997355499769,'Cadet blue',4,3,13,2,8,'nx2mn7czlp',2,'Chuck_Phillips8879@qater.org',503.105676043362,696.752997785692,74.1944090859938);
INSERT INTO employee VALUES('Chuck','Garner','1986-01-12 19:05:56',6,1.86812350045337,113.336480912443,'Sepia',1,2,3,2,3,'H8YMG3AllO',2,'Chuck_Garner1899@joiniaa.com',1525.08048694398,802.893468198317,90.0502785197693);
INSERT INTO employee VALUES('Juliette','Wilkinson','1962-10-20 02:58:11',8,2.35929373053801,74.8649598159198,'Gold',4,1,8,3,3,'9E2PHIoHkb',1,'Juliette_Wilkinson730@famism.biz',901.186105944303,857.769566270415,48.6484180920052);
INSERT INTO employee VALUES('Domenic','Villiger','1984-02-29 07:10:01',9,1.70453697419937,196.341476069922,'Ruby',3,1,7,3,5,'f4Gq61EzlE',3,'Domenic_Villiger8646@fuliss.net',1641.47951415343,807.662183562136,83.1996110636739);
INSERT INTO employee VALUES('Rocco','Davies','1968-01-26 17:25:22',9,1.81306298431617,61.4581280045482,'Apricot',3,2,222,3,2,'9SN1MyRN4d',2,'Rocco_Davies8741@sheye.org',1027.52723418527,539.275368013547,40.9490850050697);
INSERT INTO employee VALUES('Ron','Talbot','1981-02-17 07:04:11',3,1.97031910287697,188.622835121873,'Black',5,3,9,3,4,'1n75bPdmHH',2,'Ron_Talbot6736@kideod.biz',686.002694732511,724.018183989924,71.5983263927504);
INSERT INTO employee VALUES('David','Needham','1977-04-10 20:41:24',8,1.80368641698905,66.2372611170808,'Peach',1,3,8,1,7,'bIymY6C57F',1,'David_Needham521@bungar.biz',1278.93428270655,956.084315044845,71.2272568322845);
INSERT INTO employee VALUES('Amelia','Doherty','1983-01-27 19:30:15',9,1.91684958372118,153.706749463317,'Yellow',3,4,217,1,8,'fdySK8LtXF',2,'Amelia_Doherty955@gompie.com',773.350709779817,624.746291916234,63.0833820933864);
INSERT INTO employee VALUES('Katelyn','Skinner','1988-01-07 05:42:26',9,2.27404246575853,198.363093652466,'Gray',2,1,3,1,5,'R7kWrojoyj',3,'Katelyn_Skinner7887@jiman.org',1620.76606737206,829.376350158535,67.1073633982369);
INSERT INTO employee VALUES('Shay','Ellery','1963-09-13 09:30:03',3,2.13601254529134,91.5757964679859,'Magenta',1,3,218,3,9,'wlPlPAnBuO',3,'Shay_Ellery8411@ubusive.com',1373.32609634582,950.544471756809,68.6816468707666);
INSERT INTO employee VALUES('Chris','Rothwell','1988-07-17 10:13:18',9,1.91165158604814,87.9296727012515,'Black',3,2,222,3,4,'lZ2PsiENcW',2,'Chris_Rothwell4067@sheye.org',910.325375067687,545.757128277215,72.449610631191);
INSERT INTO employee VALUES('Carrie','Wilson','1967-01-11 11:22:06',7,1.44666976679427,126.76858283196,'Sepia',4,1,13,3,5,'WuKlBtzTS6',3,'Carrie_Wilson4010@jiman.org',1531.32823532882,728.52272250807,79.5165785758368);
INSERT INTO employee VALUES('Olivia','Mann','1965-09-05 19:03:07',2,2.34028184513575,189.543042923111,'Carmine',2,1,2,1,7,'Gv6bRGkPxb',1,'Olivia_Mann778@vetan.org',1684.98029399057,807.05981099748,76.3852873213521);
INSERT INTO employee VALUES('Jaylene','Potter','1995-01-20 21:29:48',7,1.57785382744756,66.431882494796,'Dark red',3,3,5,3,8,'jUJikTjrYk',3,'Jaylene_Potter6252@irrepsy.com',1639.76294296131,763.47376730967,96.0301496558963);
INSERT INTO employee VALUES('Madelyn','Smith','1982-06-13 01:26:35',1,1.81442804244087,110.733140444724,'Aquamarine',2,1,2,1,9,'osjpRHnOGe',3,'Madelyn_Smith5261@dionrab.com',1784.14832307545,795.389410942974,47.2280635397081);
INSERT INTO employee VALUES('Ryan','Richardson','1963-11-17 10:33:08',1,1.55730750148991,101.297512305573,'Silver',5,4,6,1,2,'pVrk13H2MP',2,'Ryan_Richardson8567@bungar.biz',646.167251258235,598.439226083662,78.7852223337559);
INSERT INTO employee VALUES('Ethan','Farrow','1993-11-01 18:43:31',9,1.62436827338504,124.71826420199,'Emerald',1,3,7,3,6,'1OZI1dNjvk',3,'Ethan_Farrow4145@guentu.biz',737.426605172188,505.299971106136,82.0829530670694);
INSERT INTO employee VALUES('Chadwick','Yoman','1998-09-01 13:02:12',6,1.8702547427594,138.315707932839,'Magenta',4,1,221,3,2,'WUcSZs3Sc4',3,'Chadwick_Yoman8451@gembat.biz',1603.88629642869,829.283090419734,52.423989230033);
INSERT INTO employee VALUES('Chad','Ingram','1976-02-23 03:26:58',1,1.75542136540423,127.955043326111,'Magenta',1,2,10,1,8,'VP7a8UCiRD',3,'Chad_Ingram6454@zorer.org',596.869332848056,554.506454545775,90.6241163916998);
INSERT INTO employee VALUES('Gladys','Parker','1995-11-01 18:22:46',8,2.04822162904228,191.470074095982,'Cadet blue',2,3,3,3,1,'AejFfga7xL',3,'Gladys_Parker301@eirey.tech',783.673612972569,839.786155090568,85.6580523753809);
INSERT INTO employee VALUES('Carissa','Carpenter','1959-11-15 05:16:37',3,1.47175513965625,33.2897144128986,'Aqua',3,4,8,2,9,'QYvxzkyfv2',3,'Carissa_Carpenter4118@supunk.biz',1259.0516760736,990.048120040935,90.677722541931);
INSERT INTO employee VALUES('Benny','Davies','1972-10-30 15:28:16',3,2.18142298002794,116.293704805567,'Apricot',2,3,9,3,5,'YqoOGYA4cM',2,'Benny_Davies7687@typill.biz',1904.21810216932,986.35013797523,96.0169632751574);
INSERT INTO employee VALUES('Chester','Mann','2001-08-20 05:50:26',5,2.3610249283542,45.4536888624791,'Lavender',2,4,1,1,8,'S7oEi2weOb',2,'Chester_Mann5786@irrepsy.com',888.911781206686,962.455622875809,85.5497095773694);
INSERT INTO employee VALUES('Mason','Hall','1970-04-20 20:01:21',7,2.21953403531552,93.6003223399633,'Cyan',2,4,216,3,9,'Ve8ha2Bd2j',2,'Mason_Hall5863@nanoff.biz',1664.53881383154,879.295005017563,89.039194359928);
INSERT INTO employee VALUES('Marjorie','Willis','1979-07-12 06:22:28',9,1.55235450498404,189.229469976029,'Maroon',2,2,3,3,3,'ooqDQ45kza',3,'Marjorie_Willis3825@supunk.biz',1802.32615147965,950.863896402001,96.8969113481682);
INSERT INTO employee VALUES('Boris','Hood','1962-11-13 09:17:17',1,1.69321306724717,18.2553845412356,'Peach',3,3,9,1,2,'IvE4ZZePtL',2,'Boris_Hood9723@zorer.org',571.659805057878,785.325248063693,91.9450672594575);
INSERT INTO employee VALUES('Rosa','Robertson','1975-05-20 15:36:38',8,1.67039298101812,139.330261456003,'coral',4,1,10,1,6,'dZCkeP0ktv',1,'Rosa_Robertson6786@liret.org',546.797233919984,816.799403823819,65.2292287606882);
INSERT INTO employee VALUES('Russel','Rixon','1969-03-02 11:57:15',4,2.1264465222724,19.3385739570198,'Red',3,1,10,3,8,'KCph1zsVUy',1,'Russel_Rixon1912@zorer.org',1665.19379566479,807.329278466911,48.0493279053128);
INSERT INTO employee VALUES('Doug','Kelly','1988-02-08 10:20:21',6,2.35989162426437,197.597135412319,'Rust',3,1,217,2,3,'91TInN6zXP',2,'Doug_Kelly739@yahoo.com',1889.95231058539,561.633125039578,62.1033886583072);
INSERT INTO employee VALUES('Hank','Horton','1974-10-18 01:30:22',6,1.78145719253526,187.326323024615,'Brown',4,3,216,1,2,'L5Dnu4xhUl',1,'Hank_Horton3589@tonsy.org',818.987516743591,939.401143159904,78.4116087618338);
INSERT INTO employee VALUES('Barney','Gray','1958-10-30 20:22:54',7,1.67905355686278,179.437270619179,'Silver',3,3,3,3,5,'qLtVIV9iPy',2,'Barney_Gray2835@bauros.biz',1609.00366699556,607.748926410335,66.9622399434272);
INSERT INTO employee VALUES('Florence','Wright','1995-01-16 08:51:50',2,2.36707297347815,141.962729179749,'Cyan',1,2,3,1,2,'bhJa00GNML',3,'Florence_Wright9019@eirey.tech',612.529573763967,920.775074596878,51.973964495572);
INSERT INTO employee VALUES('Iris','Randall','1998-11-11 19:10:20',8,1.74929582306617,155.515693413334,'Emerald',4,1,1,3,5,'ornaLQIKI3',1,'Iris_Randall6513@iatim.tech',1983.5920283881,900.619369195597,56.6696031678792);
INSERT INTO employee VALUES('Michael','Durrant','1960-02-19 17:12:01',8,1.81019265698744,8.7524590332771,'Black',5,3,1,2,8,'Zsw5mI39Zm',3,'Michael_Durrant7921@supunk.biz',1953.69174085823,632.4514604348,77.9173777266021);
INSERT INTO employee VALUES('Domenic','Allcott','1966-09-24 15:27:26',1,1.606548062715,151.915773419624,'Aqua',1,4,13,2,8,'uBEDAVDHmg',3,'Domenic_Allcott1032@mafthy.com',1808.23650748573,778.379692881545,75.9509036466251);
INSERT INTO employee VALUES('Alexander','Stewart','1980-02-04 14:12:20',3,1.89982000724404,92.3849559120764,'Blue',1,3,218,3,1,'pm2qgvK18l',2,'Alexander_Stewart1034@atink.com',717.950338089816,828.350686848793,57.9349870527792);
INSERT INTO employee VALUES('Felicity','Marshall','1987-11-05 11:00:50',3,2.20773479482519,4.30071947458234,'Gray',2,4,4,3,8,'QVTabxQ44s',3,'Felicity_Marshall3779@bretoux.com',1706.47364303725,927.953033586942,40.7036265389545);
INSERT INTO employee VALUES('Lynn','Barclay','1983-06-22 14:29:40',6,2.00026172576484,155.391476519588,'Capri',3,3,2,1,5,'DeNzDYuhy7',1,'Lynn_Barclay374@joiniaa.com',1886.6029281484,736.277649516369,93.2265327522655);
INSERT INTO employee VALUES('Alan','Nelson','1972-09-26 00:10:26',5,1.50642089885959,32.9644659003077,'Black',5,1,221,3,5,'pL0w9Ir1AT',1,'Alan_Nelson8623@yahoo.com',598.803914379703,607.131296567214,58.2991033155933);
INSERT INTO employee VALUES('Iris','Bolton','1959-08-07 04:53:42',1,1.72199999891315,166.233037767575,'Cerise',4,1,3,1,3,'eEGJErxYGT',3,'Iris_Bolton2202@gmail.com',1312.63253498293,511.782623380321,95.6981398927505);
INSERT INTO employee VALUES('Emma','Jobson','1958-08-17 15:48:12',7,1.41418117806976,151.863594757795,'Lime',2,4,217,2,3,'06SlV1Md2P',2,'Emma_Jobson7683@sveldo.biz',1137.18233115048,701.721181448419,68.1259317086665);
INSERT INTO employee VALUES('Barney','Chadwick','1967-09-18 03:52:41',8,1.40406285980906,94.5742096489175,'Pink',5,1,216,3,2,'g3UqMgTpIJ',2,'Barney_Chadwick7846@cispeto.com',890.340666381335,916.130710076136,62.8497423677937);
INSERT INTO employee VALUES('Julia','Stuart','1997-10-24 10:11:33',8,2.09042030055561,77.8945266301253,'coral',5,2,7,2,4,'KeNOSqzG60',2,'Julia_Stuart4824@naiker.biz',1169.80261249505,638.416813006353,80.6654764184102);
INSERT INTO employee VALUES('Denny','Huggins','1997-01-10 03:50:06',1,1.43388548131747,132.710707610338,'Olive',1,2,4,3,2,'n36FNeyFTZ',2,'Denny_Huggins5666@sheye.org',511.149715252756,973.34546794479,85.8360794604924);
INSERT INTO employee VALUES('Josh','Morris','1988-01-23 07:11:15',6,2.20075262244826,78.1356426352335,'Lime',1,1,9,3,5,'UQoiztjZwp',1,'Josh_Morris2001@gompie.com',781.974000659294,871.854268058135,51.1536566788115);
INSERT INTO employee VALUES('Analise','Ulyatt','1978-04-19 01:00:51',6,1.49860772364708,79.0557134398519,'Emerald',1,4,7,2,6,'COMK1N0Y7R',3,'Analise_Ulyatt7672@eirey.tech',1489.68581538633,891.959565035049,51.9181801913856);
INSERT INTO employee VALUES('Julian','Irving','1970-06-15 21:52:48',8,2.14437058844807,91.3529623799738,'Gold',4,3,1,2,6,'N1tWoJueZp',3,'Julian_Irving5348@mafthy.com',749.226467815333,884.699892550567,79.351061684243);
INSERT INTO employee VALUES('Monica','Bryant','1967-12-21 03:06:00',8,2.11567173149235,154.079670832064,'Capri',3,2,8,1,1,'XJRH25Bqlk',2,'Monica_Bryant4407@bungar.biz',1396.60799136088,824.913397728891,53.8358550890516);
INSERT INTO employee VALUES('Cedrick','Brown','1982-04-27 09:14:47',4,1.61459761970425,141.399160003475,'Gold',2,2,9,2,5,'VwKdymOotS',3,'Cedrick_Brown5706@bulaffy.com',1531.82181968159,998.445809375237,87.1529315198552);
INSERT INTO employee VALUES('Hank','Brooks','1967-09-10 21:09:55',1,2.14920408322904,22.0781354396968,'Ruby',2,3,9,2,5,'TTBjoupVXf',1,'Hank_Brooks6559@infotech44.tech',1622.37820623926,711.410710091894,67.5096059578981);
INSERT INTO employee VALUES('Dalia','Connor','1966-05-06 15:37:44',4,1.58502236212838,49.5324928786291,'Capri',3,3,8,2,9,'mwWrY4RAZa',3,'Dalia_Connor3351@elnee.tech',538.404681287429,711.951019021194,41.6726518965665);
INSERT INTO employee VALUES('Bart','Thomson','1977-06-24 14:32:38',9,2.37004124986475,3.93201082848572,'Mauve',5,3,4,2,5,'xvNHCliGHc',2,'Bart_Thomson5620@yahoo.com',1172.16235463236,874.357874113302,97.8937312750582);
INSERT INTO employee VALUES('Liam','Bentley','1993-06-04 18:51:49',5,2.34550641437318,160.993808390104,'Camel',5,3,7,1,4,'46jvCirTWM',3,'Liam_Bentley9941@twace.org',792.593154235088,836.468704901388,54.7174341765779);
INSERT INTO employee VALUES('Grace','Price','1992-02-21 08:33:43',1,1.75923011803964,63.831512545157,'Balck',1,3,9,2,5,'dylYPaQrik',1,'Grace_Price7610@mafthy.com',626.242594106702,996.73441723908,60.2847589358151);
INSERT INTO employee VALUES('Hayden','Andersson','1969-03-30 04:32:31',2,2.35199383932724,114.724267212546,'Gold',3,3,216,1,8,'uwOk1WKOMz',1,'Hayden_Andersson4199@elnee.tech',972.934528555225,636.871370273582,90.0236985930352);
INSERT INTO employee VALUES('Mary','Foxley','2000-09-06 10:14:22',4,2.31819594144737,162.011660085996,'Turquoise',1,4,6,3,2,'jgPwXny8zu',2,'Mary_Foxley7166@acrit.org',1003.81398599586,603.544438587755,75.2819186143027);
INSERT INTO employee VALUES('Manuel','Bullock','1962-04-02 19:21:43',7,2.30851992736967,165.244494299053,'Black',1,2,7,2,8,'yjdM7iVE0h',2,'Manuel_Bullock4613@jiman.org',1091.02938107961,789.989282374265,47.6021917958754);
INSERT INTO employee VALUES('Angela','Knight','1964-06-11 17:25:10',6,1.97947747110365,126.896056389388,'Champagne',4,4,9,1,3,'DmaNrKVy8H',2,'Angela_Knight9465@hourpy.biz',1859.6619605467,919.995638606136,44.1554352418312);
INSERT INTO employee VALUES('Eduardo','Hood','1997-05-02 19:25:21',3,1.68200395884086,27.2922517942694,'Apricot',5,4,8,1,1,'0usOzusVxp',1,'Eduardo_Hood5248@vetan.org',1958.70641380302,905.120721680634,92.0878740959279);
INSERT INTO employee VALUES('Martin','Morgan','1987-09-01 13:02:42',4,2.03367421442348,197.098105602478,'Pink',1,2,219,3,2,'IpKksqEW0e',1,'Martin_Morgan2855@famism.biz',862.276783744468,950.932593797768,83.2234922983793);



--TABLA CONSULTING ROOM
select * from consulting_room
ALTER TABLE consulting_room
DROP COLUMN creation_date

ALTER TABLE consulting_room
DROP COLUMN update_date

INSERT INTO consulting_room VALUES(56,3);
INSERT INTO consulting_room VALUES(36,4);
INSERT INTO consulting_room VALUES(25,9);
INSERT INTO consulting_room VALUES(98,2);
INSERT INTO consulting_room VALUES(49,2);
INSERT INTO consulting_room VALUES(89,1);
INSERT INTO consulting_room VALUES(69,9);
INSERT INTO consulting_room VALUES(47,9);
INSERT INTO consulting_room VALUES(22,4);
INSERT INTO consulting_room VALUES(36,9);
INSERT INTO consulting_room VALUES(31,7);
INSERT INTO consulting_room VALUES(80,8);
INSERT INTO consulting_room VALUES(67,9);
INSERT INTO consulting_room VALUES(4,7);
INSERT INTO consulting_room VALUES(79,8);
INSERT INTO consulting_room VALUES(72,7);
INSERT INTO consulting_room VALUES(44,3);
INSERT INTO consulting_room VALUES(58,6);
INSERT INTO consulting_room VALUES(24,2);
INSERT INTO consulting_room VALUES(74,6);
INSERT INTO consulting_room VALUES(22,8);
INSERT INTO consulting_room VALUES(10,3);
INSERT INTO consulting_room VALUES(46,8);
INSERT INTO consulting_room VALUES(39,8);
INSERT INTO consulting_room VALUES(16,8);
INSERT INTO consulting_room VALUES(52,5);
INSERT INTO consulting_room VALUES(41,7);
INSERT INTO consulting_room VALUES(96,5);
INSERT INTO consulting_room VALUES(28,1);
INSERT INTO consulting_room VALUES(98,5);
INSERT INTO consulting_room VALUES(40,2 );
INSERT INTO consulting_room VALUES(15,6);
INSERT INTO consulting_room VALUES(62,6);
INSERT INTO consulting_room VALUES(18,5);
INSERT INTO consulting_room VALUES(47,1);
INSERT INTO consulting_room VALUES(54,7);
INSERT INTO consulting_room VALUES(47,5);
INSERT INTO consulting_room VALUES(48,7);
INSERT INTO consulting_room VALUES(10,2);
INSERT INTO consulting_room VALUES(64,7);
INSERT INTO consulting_room VALUES(22,1);
INSERT INTO consulting_room VALUES(36,8);
INSERT INTO consulting_room VALUES(26,2);
INSERT INTO consulting_room VALUES(90,3);
INSERT INTO consulting_room VALUES(50,5);
INSERT INTO consulting_room VALUES(32,6);
INSERT INTO consulting_room VALUES(76,7);
INSERT INTO consulting_room VALUES(8,4);
INSERT INTO consulting_room VALUES(27,4);
INSERT INTO consulting_room VALUES(97,1);

--TABLA 
select * from schedule

ALTER TABLE schedule
DROP COLUMN creation_date

ALTER TABLE schedule
DROP COLUMN update_date

INSERT INTO schedule VALUES(10,3);
INSERT INTO schedule VALUES(8,3);
INSERT INTO schedule VALUES(11,2);
INSERT INTO schedule VALUES(6,1);
INSERT INTO schedule VALUES(8,4);
INSERT INTO schedule VALUES(8,4);
INSERT INTO schedule VALUES(11,5);
INSERT INTO schedule VALUES(10,3);
INSERT INTO schedule VALUES(11,3);
INSERT INTO schedule VALUES(8,5);
INSERT INTO schedule VALUES(8,3);
INSERT INTO schedule VALUES(7,7);
INSERT INTO schedule VALUES(8,1);
INSERT INTO schedule VALUES(10,4);
INSERT INTO schedule VALUES(7,1);
INSERT INTO schedule VALUES(8,6);
INSERT INTO schedule VALUES(11,7);
INSERT INTO schedule VALUES(10,4);
INSERT INTO schedule VALUES(9,6);
INSERT INTO schedule VALUES(9,5);
INSERT INTO schedule VALUES(9,7);
INSERT INTO schedule VALUES(6,1);
INSERT INTO schedule VALUES(7,6);
INSERT INTO schedule VALUES(10,4);
INSERT INTO schedule VALUES(10,1);
INSERT INTO schedule VALUES(10,2);
INSERT INTO schedule VALUES(8,1);
INSERT INTO schedule VALUES(8,3);
INSERT INTO schedule VALUES(7,4);
INSERT INTO schedule VALUES(11,6);
INSERT INTO schedule VALUES(8,4);
INSERT INTO schedule VALUES(10,3);
INSERT INTO schedule VALUES(7,5);
INSERT INTO schedule VALUES(10,7);
INSERT INTO schedule VALUES(11,2);

--TABLA SCHEDULE_FREQ_TYPE
select * from schedule_freq_type

ALTER TABLE schedule_freq_type
DROP COLUMN creation_date

ALTER TABLE schedule_freq_type
DROP COLUMN update_date

INSERT INTO schedule_freq_type VALUES('2 veces a la semana')
INSERT INTO schedule_freq_type VALUES('1 vez a la semana')
INSERT INTO schedule_freq_type VALUES('3 veces a la semana')
INSERT INTO schedule_freq_type VALUES('4 veces a la semana')
INSERT INTO schedule_freq_type VALUES('Todos los días de la semana')
INSERT INTO schedule_freq_type VALUES('Sábados')

--TABLA SCHEDULE_EMPLOYEE
select * from schedule_employee

ALTER TABLE schedule_employee
DROP COLUMN creation_date

ALTER TABLE schedule_employee
DROP COLUMN update_date

INSERT INTO schedule_employee VALUES(29,10,5);
INSERT INTO schedule_employee VALUES(34,47,2);
INSERT INTO schedule_employee VALUES(11,5,3);
INSERT INTO schedule_employee VALUES(33,30,3);
INSERT INTO schedule_employee VALUES(26,24,2);
INSERT INTO schedule_employee VALUES(30,28,4);
INSERT INTO schedule_employee VALUES(19,4,4);
INSERT INTO schedule_employee VALUES(17,64,4);
INSERT INTO schedule_employee VALUES(27,38,2);
INSERT INTO schedule_employee VALUES(1,52,1);
INSERT INTO schedule_employee VALUES(4,32,2);
INSERT INTO schedule_employee VALUES(1,42,4);
INSERT INTO schedule_employee VALUES(32,2,2);
INSERT INTO schedule_employee VALUES(20,66,1);
INSERT INTO schedule_employee VALUES(22,69,5);
INSERT INTO schedule_employee VALUES(11,61,4);
INSERT INTO schedule_employee VALUES(33,33,1);
INSERT INTO schedule_employee VALUES(14,38,3);
INSERT INTO schedule_employee VALUES(4,28,2);
INSERT INTO schedule_employee VALUES(2,16,1);
INSERT INTO schedule_employee VALUES(34,24,2);
INSERT INTO schedule_employee VALUES(12,65,5);
INSERT INTO schedule_employee VALUES(6,54,4);
INSERT INTO schedule_employee VALUES(18,70,2);
INSERT INTO schedule_employee VALUES(9,72,1);
INSERT INTO schedule_employee VALUES(20,62,5);
INSERT INTO schedule_employee VALUES(32,36,4);
INSERT INTO schedule_employee VALUES(26,5,2);
INSERT INTO schedule_employee VALUES(1,52,5);
INSERT INTO schedule_employee VALUES(24,69,1);
INSERT INTO schedule_employee VALUES(15,65,5);
INSERT INTO schedule_employee VALUES(8,45,3);
INSERT INTO schedule_employee VALUES(26,23,1);
INSERT INTO schedule_employee VALUES(31,11,1);
INSERT INTO schedule_employee VALUES(30,32,3);
INSERT INTO schedule_employee VALUES(26,11,3);
INSERT INTO schedule_employee VALUES(15,39,3);
INSERT INTO schedule_employee VALUES(12,10,4);
INSERT INTO schedule_employee VALUES(15,17,2);
INSERT INTO schedule_employee VALUES(4,26,1);
INSERT INTO schedule_employee VALUES(2,35,4);
INSERT INTO schedule_employee VALUES(20,7,1);
INSERT INTO schedule_employee VALUES(18,4,2);
INSERT INTO schedule_employee VALUES(21,62,3);
INSERT INTO schedule_employee VALUES(30,3,2);
INSERT INTO schedule_employee VALUES(20,67,4);
INSERT INTO schedule_employee VALUES(26,20,3);
INSERT INTO schedule_employee VALUES(13,21,3);
INSERT INTO schedule_employee VALUES(22,7,4);
INSERT INTO schedule_employee VALUES(3,58,2);
INSERT INTO schedule_employee VALUES(11,49,5);
INSERT INTO schedule_employee VALUES(31,62,4);
INSERT INTO schedule_employee VALUES(11,22,2);
INSERT INTO schedule_employee VALUES(15,16,1);
INSERT INTO schedule_employee VALUES(7,61,4);
INSERT INTO schedule_employee VALUES(1,35,1);
INSERT INTO schedule_employee VALUES(14,65,2);
INSERT INTO schedule_employee VALUES(21,25,1);
INSERT INTO schedule_employee VALUES(21,52,1);
INSERT INTO schedule_employee VALUES(13,71,1);
INSERT INTO schedule_employee VALUES(12,33,2);
INSERT INTO schedule_employee VALUES(34,22,1);
INSERT INTO schedule_employee VALUES(20,73,2);
INSERT INTO schedule_employee VALUES(23,19,4);
INSERT INTO schedule_employee VALUES(11,24,1);
INSERT INTO schedule_employee VALUES(16,14,3);
INSERT INTO schedule_employee VALUES(25,47,4);
INSERT INTO schedule_employee VALUES(22,51,5);
INSERT INTO schedule_employee VALUES(2,53,2);
INSERT INTO schedule_employee VALUES(30,22,1);
INSERT INTO schedule_employee VALUES(17,71,2);
INSERT INTO schedule_employee VALUES(11,8,4);
INSERT INTO schedule_employee VALUES(29,14,3);
INSERT INTO schedule_employee VALUES(18,33,3);
INSERT INTO schedule_employee VALUES(31,56,4);
INSERT INTO schedule_employee VALUES(25,23,1);
INSERT INTO schedule_employee VALUES(1,11,3);
INSERT INTO schedule_employee VALUES(25,48,2);
INSERT INTO schedule_employee VALUES(14,51,4);
INSERT INTO schedule_employee VALUES(12,70,3);
INSERT INTO schedule_employee VALUES(30,52,4);
INSERT INTO schedule_employee VALUES(3,12,2);
INSERT INTO schedule_employee VALUES(10,73,2);
INSERT INTO schedule_employee VALUES(10,47,5);
INSERT INTO schedule_employee VALUES(32,17,1);
INSERT INTO schedule_employee VALUES(5,56,5);
INSERT INTO schedule_employee VALUES(11,25,2);
INSERT INTO schedule_employee VALUES(11,64,1);
INSERT INTO schedule_employee VALUES(22,57,2);
INSERT INTO schedule_employee VALUES(1,69,3);
INSERT INTO schedule_employee VALUES(1,36,2);
INSERT INTO schedule_employee VALUES(32,48,4);
INSERT INTO schedule_employee VALUES(28,61,3);
INSERT INTO schedule_employee VALUES(11,34,2);
INSERT INTO schedule_employee VALUES(28,56,3);
INSERT INTO schedule_employee VALUES(18,59,3);
INSERT INTO schedule_employee VALUES(5,21,5);
INSERT INTO schedule_employee VALUES(28,5,4);
INSERT INTO schedule_employee VALUES(7,42,5);
INSERT INTO schedule_employee VALUES(19,33,2);

--TABLA EMPLOYEE_CONSULTING_ROOM
select * from employee_consulting_room

ALTER TABLE employee_consulting_room
DROP COLUMN creation_date

ALTER TABLE employee_consulting_room
DROP COLUMN update_date

INSERT INTO employee_consulting_room VALUES(7,41,13);
INSERT INTO employee_consulting_room VALUES(22,26,16);
INSERT INTO employee_consulting_room VALUES(4,40,52);
INSERT INTO employee_consulting_room VALUES(38,2,50);
INSERT INTO employee_consulting_room VALUES(30,58,25);
INSERT INTO employee_consulting_room VALUES(47,70,55);
INSERT INTO employee_consulting_room VALUES(45,5,81);
INSERT INTO employee_consulting_room VALUES(43,14,93);
INSERT INTO employee_consulting_room VALUES(27,40,57);
INSERT INTO employee_consulting_room VALUES(10,48,30);
INSERT INTO employee_consulting_room VALUES(43,18,86);
INSERT INTO employee_consulting_room VALUES(2,2,61);
INSERT INTO employee_consulting_room VALUES(23,2,80);
INSERT INTO employee_consulting_room VALUES(20,67,66);
INSERT INTO employee_consulting_room VALUES(14,8,42);
INSERT INTO employee_consulting_room VALUES(37,21,57);
INSERT INTO employee_consulting_room VALUES(27,41,69);
INSERT INTO employee_consulting_room VALUES(43,15,86);
INSERT INTO employee_consulting_room VALUES(18,19,35);
INSERT INTO employee_consulting_room VALUES(10,67,80);
INSERT INTO employee_consulting_room VALUES(29,66,89);
INSERT INTO employee_consulting_room VALUES(11,68,78);
INSERT INTO employee_consulting_room VALUES(32,42,77);
INSERT INTO employee_consulting_room VALUES(32,36,53);
INSERT INTO employee_consulting_room VALUES(37,39,16);
INSERT INTO employee_consulting_room VALUES(8,45,9);
INSERT INTO employee_consulting_room VALUES(26,60,26);
INSERT INTO employee_consulting_room VALUES(1,48,9);
INSERT INTO employee_consulting_room VALUES(30,74,5);
INSERT INTO employee_consulting_room VALUES(49,51,76);
INSERT INTO employee_consulting_room VALUES(13,51,52);
INSERT INTO employee_consulting_room VALUES(49,60,2);
INSERT INTO employee_consulting_room VALUES(38,4,20);
INSERT INTO employee_consulting_room VALUES(32,8,72);
INSERT INTO employee_consulting_room VALUES(40,68,7);
INSERT INTO employee_consulting_room VALUES(9,9,67);
INSERT INTO employee_consulting_room VALUES(35,15,65);
INSERT INTO employee_consulting_room VALUES(14,51,10);
INSERT INTO employee_consulting_room VALUES(27,43,24);
INSERT INTO employee_consulting_room VALUES(40,46,92);
INSERT INTO employee_consulting_room VALUES(37,48,87);
INSERT INTO employee_consulting_room VALUES(1,28,22);
INSERT INTO employee_consulting_room VALUES(1,56,71);
INSERT INTO employee_consulting_room VALUES(7,29,56);
INSERT INTO employee_consulting_room VALUES(44,65,69);
INSERT INTO employee_consulting_room VALUES(27,16,74);
INSERT INTO employee_consulting_room VALUES(1,33,87);
INSERT INTO employee_consulting_room VALUES(18,22,49);
INSERT INTO employee_consulting_room VALUES(21,34,24);
INSERT INTO employee_consulting_room VALUES(39,71,43);
INSERT INTO employee_consulting_room VALUES(13,67,46);
INSERT INTO employee_consulting_room VALUES(42,59,53);
INSERT INTO employee_consulting_room VALUES(42,12,36);
INSERT INTO employee_consulting_room VALUES(48,43,80);
INSERT INTO employee_consulting_room VALUES(5,29,81);
INSERT INTO employee_consulting_room VALUES(20,1,37);
INSERT INTO employee_consulting_room VALUES(25,59,18);
INSERT INTO employee_consulting_room VALUES(3,28,35);
INSERT INTO employee_consulting_room VALUES(20,67,38);
INSERT INTO employee_consulting_room VALUES(32,43,30);
INSERT INTO employee_consulting_room VALUES(24,27,43);
INSERT INTO employee_consulting_room VALUES(7,47,97);
INSERT INTO employee_consulting_room VALUES(12,52,42);
INSERT INTO employee_consulting_room VALUES(11,13,28);
INSERT INTO employee_consulting_room VALUES(25,30,71);
INSERT INTO employee_consulting_room VALUES(34,2,61);
INSERT INTO employee_consulting_room VALUES(38,3,44);
INSERT INTO employee_consulting_room VALUES(43,22,18);
INSERT INTO employee_consulting_room VALUES(13,16,52);
INSERT INTO employee_consulting_room VALUES(6,34,89);
INSERT INTO employee_consulting_room VALUES(8,16,58);
INSERT INTO employee_consulting_room VALUES(4,36,22);
INSERT INTO employee_consulting_room VALUES(19,72,75);
INSERT INTO employee_consulting_room VALUES(42,13,32);
INSERT INTO employee_consulting_room VALUES(47,22,62);
INSERT INTO employee_consulting_room VALUES(44,41,97);
INSERT INTO employee_consulting_room VALUES(32,53,87);
INSERT INTO employee_consulting_room VALUES(38,65,55);
INSERT INTO employee_consulting_room VALUES(43,46,7);
INSERT INTO employee_consulting_room VALUES(13,66,42);
INSERT INTO employee_consulting_room VALUES(23,9,24);
INSERT INTO employee_consulting_room VALUES(26,5,95);
INSERT INTO employee_consulting_room VALUES(35,33,91);
INSERT INTO employee_consulting_room VALUES(25,23,6);
INSERT INTO employee_consulting_room VALUES(42,69,86);
INSERT INTO employee_consulting_room VALUES(7,68,99);
INSERT INTO employee_consulting_room VALUES(28,26,66);
INSERT INTO employee_consulting_room VALUES(27,35,75);
INSERT INTO employee_consulting_room VALUES(1,28,35);
INSERT INTO employee_consulting_room VALUES(2,16,87);
INSERT INTO employee_consulting_room VALUES(8,9,8);
INSERT INTO employee_consulting_room VALUES(17,29,5);
INSERT INTO employee_consulting_room VALUES(5,29,6);
INSERT INTO employee_consulting_room VALUES(33,15,11);
INSERT INTO employee_consulting_room VALUES(3,12,40);
INSERT INTO employee_consulting_room VALUES(41,68,93);
INSERT INTO employee_consulting_room VALUES(34,55,69);
INSERT INTO employee_consulting_room VALUES(4,52,53);
INSERT INTO employee_consulting_room VALUES(38,68,65);

--TABLA EMPLOYEE_DIRECTION

select * from employee_direction

ALTER TABLE employee_direction
DROP COLUMN creation_date

ALTER TABLE employee_direction
DROP COLUMN update_date

insert into employee_direction (direction, employee_id) values ('89394 American Ash Pass', 1);
insert into employee_direction (direction, employee_id) values ('35 Killdeer Place', 2);
insert into employee_direction (direction, employee_id) values ('195 Mesta Street', 3);
insert into employee_direction (direction, employee_id) values ('68 Glendale Point', 4);
insert into employee_direction (direction, employee_id) values ('6040 Norway Maple Avenue', 5);
insert into employee_direction (direction, employee_id) values ('689 Oakridge Crossing', 6);
insert into employee_direction (direction, employee_id) values ('5 Ridgeview Road', 7);
insert into employee_direction (direction, employee_id) values ('5 Eastwood Center', 8);
insert into employee_direction (direction, employee_id) values ('417 Waywood Parkway', 9);
insert into employee_direction (direction, employee_id) values ('89 Ilene Point', 10);
insert into employee_direction (direction, employee_id) values ('9 Ridgeview Center', 11);
insert into employee_direction (direction, employee_id) values ('5557 Rieder Plaza', 12);
insert into employee_direction (direction, employee_id) values ('3 Eastwood Junction', 13);
insert into employee_direction (direction, employee_id) values ('9430 Sunfield Avenue', 14);
insert into employee_direction (direction, employee_id) values ('42154 Longview Circle', 15);
insert into employee_direction (direction, employee_id) values ('74 Burrows Terrace', 16);
insert into employee_direction (direction, employee_id) values ('2044 Macpherson Lane', 17);
insert into employee_direction (direction, employee_id) values ('2 Glacier Hill Circle', 18);
insert into employee_direction (direction, employee_id) values ('36 Kings Drive', 19);
insert into employee_direction (direction, employee_id) values ('671 Hollow Ridge Road', 20);
insert into employee_direction (direction, employee_id) values ('75231 7th Avenue', 21);
insert into employee_direction (direction, employee_id) values ('1 Porter Crossing', 22);
insert into employee_direction (direction, employee_id) values ('0726 Buena Vista Circle', 23);
insert into employee_direction (direction, employee_id) values ('6224 Butternut Alley', 24);
insert into employee_direction (direction, employee_id) values ('78 Ridge Oak Street', 25);
insert into employee_direction (direction, employee_id) values ('23087 Little Fleur Drive', 26);
insert into employee_direction (direction, employee_id) values ('13 Lerdahl Street', 27);
insert into employee_direction (direction, employee_id) values ('35889 Hallows Place', 28);
insert into employee_direction (direction, employee_id) values ('94145 Shelley Crossing', 29);
insert into employee_direction (direction, employee_id) values ('36 Mcguire Trail',29);
insert into employee_direction (direction, employee_id) values ('7620 Cardinal Circle', 31);
insert into employee_direction (direction, employee_id) values ('6258 Nelson Court', 32);
insert into employee_direction (direction, employee_id) values ('43 Meadow Valley Hill', 33);
insert into employee_direction (direction, employee_id) values ('41806 Birchwood Trail', 34);
insert into employee_direction (direction, employee_id) values ('9 Golf Course Drive', 35);
insert into employee_direction (direction, employee_id) values ('92859 Cardinal Plaza', 36);
insert into employee_direction (direction, employee_id) values ('8222 Holmberg Alley', 37);
insert into employee_direction (direction, employee_id) values ('182 Loomis Street', 38);
insert into employee_direction (direction, employee_id) values ('947 Tomscot Street', 39);
insert into employee_direction (direction, employee_id) values ('36179 Porter Court', 40);
insert into employee_direction (direction, employee_id) values ('23 Tony Street', 41);
insert into employee_direction (direction, employee_id) values ('26523 Toban Hill', 42);
insert into employee_direction (direction, employee_id) values ('119 Katie Terrace', 43);
insert into employee_direction (direction, employee_id) values ('7 Orin Center', 44);
insert into employee_direction (direction, employee_id) values ('031 Hallows Point', 45);
insert into employee_direction (direction, employee_id) values ('144 Sugar Avenue', 46);
insert into employee_direction (direction, employee_id) values ('28304 Westport Center', 47);
insert into employee_direction (direction, employee_id) values ('4721 Hintze Road', 48);
insert into employee_direction (direction, employee_id) values ('0 Sugar Street', 49);
insert into employee_direction (direction, employee_id) values ('7693 Nelson Point', 50);
insert into employee_direction (direction, employee_id) values ('67 Green Ridge Hill', 51);
insert into employee_direction (direction, employee_id) values ('802 Cottonwood Plaza', 52);
insert into employee_direction (direction, employee_id) values ('5562 Crest Line Center', 53);
insert into employee_direction (direction, employee_id) values ('5608 Huxley Point', 55);
insert into employee_direction (direction, employee_id) values ('03 Park Meadow Center', 55);
insert into employee_direction (direction, employee_id) values ('9155 Vera Point', 56);
insert into employee_direction (direction, employee_id) values ('0 Messerschmidt Place', 57);
insert into employee_direction (direction, employee_id) values ('57 Brown Trail', 58);
insert into employee_direction (direction, employee_id) values ('79516 Harper Drive', 59);
insert into employee_direction (direction, employee_id) values ('2508 Hudson Crossing', 60);
insert into employee_direction (direction, employee_id) values ('64145 Colorado Junction', 61);
insert into employee_direction (direction, employee_id) values ('77 Brentwood Terrace', 62);
insert into employee_direction (direction, employee_id) values ('59 Talisman Drive', 63);
insert into employee_direction (direction, employee_id) values ('850 Dennis Center', 64);
insert into employee_direction (direction, employee_id) values ('297 Nevada Hill', 65);
insert into employee_direction (direction, employee_id) values ('03 Ridge Oak Center', 66);
insert into employee_direction (direction, employee_id) values ('79 Maple Wood Center', 67);
insert into employee_direction (direction, employee_id) values ('1229 Messerschmidt Terrace', 68);
insert into employee_direction (direction, employee_id) values ('62999 Sloan Terrace', 69);

--TABLA LOG_TYPE
select * from log_type

ALTER TABLE log_type
DROP COLUMN creation_date

ALTER TABLE log_type
DROP COLUMN update_date

INSERT INTO log_type VALUES('Administrador')
INSERT INTO log_type VALUES('Usuario')

--TABLA EMPLOYEE_LOG
select * from employee_log

ALTER TABLE employee_log
DROP COLUMN creation_date

ALTER TABLE employee_log
DROP COLUMN update_date

insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (1, '8/17/2019', '30.186.47.252', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (2, '7/1/2021', '186.220.219.252', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (3, '3/12/2021', '146.191.118.121', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (4, '5/22/2020', '158.186.251.189', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (5, '10/4/2020', '84.145.121.79', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (6, '10/18/2020', '0.17.12.229', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (7, '2/21/2019', '21.20.98.27', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (8, '10/18/2020', '127.113.244.255', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (9, '5/24/2020', '20.139.110.6', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (10, '3/25/2019', '154.59.168.154', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (11, '3/3/2019', '123.46.103.93', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (12, '6/9/2020', '37.139.17.88', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (13, '9/19/2020', '174.193.213.203', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (14, '10/26/2020', '177.121.128.201', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (15, '6/29/2020', '224.95.134.36', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (16, '12/20/2020', '68.102.229.149', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (17, '6/16/2021', '4.157.158.242', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (18, '1/14/2021', '205.32.66.91', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (19, '12/16/2019', '113.170.178.242', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (21, '2/9/2019', '92.162.93.48', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (21, '12/22/2020', '9.55.228.223', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (22, '5/11/2019', '169.214.95.76', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (23, '11/24/2019', '80.184.28.92', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (24, '5/2/2021', '31.183.74.168', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (25, '1/17/2020', '151.158.51.48', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (26, '2/28/2020', '125.145.204.75', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (27, '8/13/2019', '68.192.53.181', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (28, '5/19/2021', '221.69.230.63', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (29, '9/22/2020', '135.92.117.237', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (30, '1/22/2019', '207.39.172.38', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (30, '6/10/2021', '17.133.9.107',1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (32, '9/26/2020', '190.113.200.249', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (33, '9/2/2019', '173.139.135.91', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (34, '1/10/2021', '3.30.148.83', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (35, '4/17/2019', '251.39.153.104', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (36, '1/7/2019', '175.99.237.36', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (37, '9/5/2019', '222.235.56.97', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (38, '6/17/2021', '213.137.200.57', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (39, '4/8/2021', '53.98.198.64', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (40, '5/1/2019', '99.210.40.193', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (41, '9/1/2020', '234.160.51.149', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (42, '9/12/2021', '78.100.57.149', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (43, '5/2/2021', '89.158.70.23', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (44, '5/18/2019', '50.2.173.98', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (45, '7/2/2020', '180.246.206.151', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (46, '9/6/2021', '27.98.31.42', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (47, '5/1/2020', '186.16.134.71', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (48, '3/11/2020', '68.46.248.84', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (49, '4/26/2019', '33.113.54.168', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (50, '4/25/2020', '156.139.254.82', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (51, '12/12/2018', '239.133.36.3', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (52, '2/2/2019', '83.212.225.87', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (53, '9/17/2019', '236.55.21.12', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (53, '3/29/2019', '197.173.206.89', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (55, '6/30/2020', '216.7.168.249', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (56, '8/28/2019', '33.142.76.80', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (57, '12/23/2018', '16.183.179.139', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (58, '7/27/2021', '54.78.171.246', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (59, '3/20/2021', '60.141.41.83', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (60, '1/26/2019', '221.202.83.172', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (61, '10/23/2018', '237.143.99.222', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (62, '9/29/2019', '167.222.226.199', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (63, '5/20/2020', '16.178.106.98', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (64, '2/1/2021', '12.18.5.147', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (65, '6/11/2021', '124.24.21.79', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (66, '12/2/2019', '62.245.42.130', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (67, '1/20/2019', '175.178.162.47', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (68, '6/23/2019', '56.3.146.217', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (69, '6/10/2020', '126.165.227.74', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (70, '3/1/2019', '228.113.117.109', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (71, '1/9/2019', '67.147.185.84', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (72, '12/21/2019', '91.142.116.20', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (73, '9/25/2021', '162.20.210.107', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (74, '5/18/2019', '254.167.48.245', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (75, '5/2/2021', '70.106.219.164', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (76, '8/28/2020', '160.246.183.158', 1);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (77, '5/7/2019', '10.47.224.47', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (78, '8/12/2019', '91.187.46.3', 2);
insert into employee_log (id_employee, generation_date, ip_device, id_log_type) values (79, '1/25/2020', '126.23.143.52', 1);


--LLENANDO TABLA TELEPHONE_HOSPITAL
alter table telephone_hospital
drop column creation_date

alter table telephone_hospital
drop column update_date

INSERT INTO telephone_hospital VALUES('4-557-868-5273',76);
INSERT INTO telephone_hospital VALUES('6-637-732-6688',95);
INSERT INTO telephone_hospital VALUES('3-757-778-8658',83);
INSERT INTO telephone_hospital VALUES('1-316-737-6442',75);
INSERT INTO telephone_hospital VALUES('6-182-881-4565',10);
INSERT INTO telephone_hospital VALUES('1-164-841-1647',54);
INSERT INTO telephone_hospital VALUES('3-474-235-7572',86);
INSERT INTO telephone_hospital VALUES('8-617-552-4785',72);
INSERT INTO telephone_hospital VALUES('5-468-411-2247',50);
INSERT INTO telephone_hospital VALUES('1-533-165-3874',17);
INSERT INTO telephone_hospital VALUES('4-351-247-4817',73);
INSERT INTO telephone_hospital VALUES('5-544-686-5756',94);
INSERT INTO telephone_hospital VALUES('3-831-427-7855',5);
INSERT INTO telephone_hospital VALUES('5-887-545-8757',46);
INSERT INTO telephone_hospital VALUES('3-168-283-8567',29);
INSERT INTO telephone_hospital VALUES('1-716-387-8838',68);
INSERT INTO telephone_hospital VALUES('8-884-872-6176',39);
INSERT INTO telephone_hospital VALUES('5-868-364-8166',85);
INSERT INTO telephone_hospital VALUES('4-857-774-1188',23);
INSERT INTO telephone_hospital VALUES('1-787-422-3161',40);
INSERT INTO telephone_hospital VALUES('3-763-815-3311',91);
INSERT INTO telephone_hospital VALUES('2-383-463-5848',44);
INSERT INTO telephone_hospital VALUES('6-548-547-6825',2);
INSERT INTO telephone_hospital VALUES('2-218-468-1716',15);
INSERT INTO telephone_hospital VALUES('2-874-344-7725',31);
INSERT INTO telephone_hospital VALUES('6-568-331-8781',20);
INSERT INTO telephone_hospital VALUES('5-423-486-6836',61);
INSERT INTO telephone_hospital VALUES('5-344-762-8673',84);
INSERT INTO telephone_hospital VALUES('8-174-163-3768',91);
INSERT INTO telephone_hospital VALUES('3-138-583-4723',1);
INSERT INTO telephone_hospital VALUES('8-521-615-6234',42);
INSERT INTO telephone_hospital VALUES('1-252-847-7351',74);
INSERT INTO telephone_hospital VALUES('3-246-478-7675',49);
INSERT INTO telephone_hospital VALUES('5-256-137-1587',36);
INSERT INTO telephone_hospital VALUES('4-244-346-4547',56);
INSERT INTO telephone_hospital VALUES('6-723-366-3616',73);
INSERT INTO telephone_hospital VALUES('7-161-682-4313',29);
INSERT INTO telephone_hospital VALUES('3-542-128-2411',27);
INSERT INTO telephone_hospital VALUES('1-578-256-3576',34);
INSERT INTO telephone_hospital VALUES('6-665-332-6588',77);
INSERT INTO telephone_hospital VALUES('3-435-143-7148',22);
INSERT INTO telephone_hospital VALUES('2-227-317-5814',40);
INSERT INTO telephone_hospital VALUES('4-482-737-1585',77);
INSERT INTO telephone_hospital VALUES('3-221-473-3643',4);
INSERT INTO telephone_hospital VALUES('1-435-238-3871',70);
INSERT INTO telephone_hospital VALUES('5-216-686-3645',22);
INSERT INTO telephone_hospital VALUES('7-611-626-1181',33);
INSERT INTO telephone_hospital VALUES('8-282-137-4154',33);
INSERT INTO telephone_hospital VALUES('7-557-714-6816',45);
INSERT INTO telephone_hospital VALUES('2-756-215-6166',48);
INSERT INTO telephone_hospital VALUES('1-423-622-3272',15);
INSERT INTO telephone_hospital VALUES('6-821-444-7548',25);
INSERT INTO telephone_hospital VALUES('7-128-872-2716',36);
INSERT INTO telephone_hospital VALUES('8-117-842-4631',19);
INSERT INTO telephone_hospital VALUES('8-526-378-5485',58);
INSERT INTO telephone_hospital VALUES('8-234-583-5272',41);
INSERT INTO telephone_hospital VALUES('3-581-255-4811',39);
INSERT INTO telephone_hospital VALUES('6-488-118-8548',82);
INSERT INTO telephone_hospital VALUES('1-776-148-1373',69);
INSERT INTO telephone_hospital VALUES('8-848-315-7187',12);
INSERT INTO telephone_hospital VALUES('1-352-827-8618',39);
INSERT INTO telephone_hospital VALUES('6-735-211-7121',20);
INSERT INTO telephone_hospital VALUES('6-864-717-1176',80);
INSERT INTO telephone_hospital VALUES('8-712-841-8813',50);
INSERT INTO telephone_hospital VALUES('7-168-881-7334',4);
INSERT INTO telephone_hospital VALUES('5-415-383-7256',33);
INSERT INTO telephone_hospital VALUES('8-886-213-6526',82);
INSERT INTO telephone_hospital VALUES('4-722-675-5315',51);
INSERT INTO telephone_hospital VALUES('3-461-643-2438',3);
INSERT INTO telephone_hospital VALUES('8-362-164-4632',45);
INSERT INTO telephone_hospital VALUES('6-224-818-8343',81);
INSERT INTO telephone_hospital VALUES('4-311-744-1722',41);
INSERT INTO telephone_hospital VALUES('1-356-527-1223',56);
INSERT INTO telephone_hospital VALUES('3-723-416-5876',75);
INSERT INTO telephone_hospital VALUES('6-353-725-5863',63);
INSERT INTO telephone_hospital VALUES('5-332-636-3847',5);
INSERT INTO telephone_hospital VALUES('2-257-464-3678',28);
INSERT INTO telephone_hospital VALUES('5-428-576-5457',7);
INSERT INTO telephone_hospital VALUES('7-576-247-3551',69);
INSERT INTO telephone_hospital VALUES('5-712-318-7415',19);
INSERT INTO telephone_hospital VALUES('1-662-725-5351',90);
INSERT INTO telephone_hospital VALUES('8-612-856-1453',79);
INSERT INTO telephone_hospital VALUES('6-534-616-6166',51);
INSERT INTO telephone_hospital VALUES('6-554-843-1722',56);
INSERT INTO telephone_hospital VALUES('8-677-347-5384',22);
INSERT INTO telephone_hospital VALUES('7-283-838-3154',37);
INSERT INTO telephone_hospital VALUES('1-318-231-5374',90);
INSERT INTO telephone_hospital VALUES('3-745-722-7235',82);
INSERT INTO telephone_hospital VALUES('5-125-384-4246',91);
INSERT INTO telephone_hospital VALUES('3-831-888-1611',12);
INSERT INTO telephone_hospital VALUES('7-448-462-7733',20);
INSERT INTO telephone_hospital VALUES('2-433-316-7152',94);
INSERT INTO telephone_hospital VALUES('7-182-442-4816',89);
INSERT INTO telephone_hospital VALUES('5-585-281-1518',41);
INSERT INTO telephone_hospital VALUES('6-576-421-2241',30);
INSERT INTO telephone_hospital VALUES('6-833-273-1736',70);
INSERT INTO telephone_hospital VALUES('1-161-414-6255',83);
INSERT INTO telephone_hospital VALUES('6-416-846-2468',22);
INSERT INTO telephone_hospital VALUES('5-686-776-3715',31);
INSERT INTO telephone_hospital VALUES('5-871-141-1456',67);


--LLENANDO TABLA country
alter table country
drop column creation_date

alter table country
drop column update_date

SELECT * FROM country;


INSERT INTO country(name) VALUES('Bolivia');
INSERT INTO country(name) VALUES('Albania');
INSERT INTO country(name) VALUES('Jamaica');
INSERT INTO country(name) VALUES('Sudan, South');
INSERT INTO country(name) VALUES('Belarus');
INSERT INTO country(name) VALUES('Kiribati');
INSERT INTO country(name) VALUES('Macedonia');
INSERT INTO country(name) VALUES('Vietnam');
INSERT INTO country(name) VALUES('Slovenia');
INSERT INTO country(name) VALUES('Indonesia');
INSERT INTO country(name) VALUES('Côte d’Ivoire');
INSERT INTO country(name) VALUES('Belgium');
INSERT INTO country(name) VALUES('Bosnia and Herzegovina');
INSERT INTO country(name) VALUES('Andorra');
INSERT INTO country(name) VALUES('Malaysia');
INSERT INTO country(name) VALUES('Liberia');
INSERT INTO country(name) VALUES('Georgia');
INSERT INTO country(name) VALUES('Korea, North');
INSERT INTO country(name) VALUES('Lebanon');
INSERT INTO country(name) VALUES('Maldives');
INSERT INTO country(name) VALUES('Trinidad and Tobago');
INSERT INTO country(name) VALUES('Malawi');
INSERT INTO country(name) VALUES('Korea, North');
INSERT INTO country(name) VALUES('Qatar');
INSERT INTO country(name) VALUES('Mozambique');
INSERT INTO country(name) VALUES('Angola');
INSERT INTO country(name) VALUES('Fiji');
INSERT INTO country(name) VALUES('Lebanon');
INSERT INTO country(name) VALUES('Haiti');
INSERT INTO country(name) VALUES('Moldova');
INSERT INTO country(name) VALUES('Gabon');
INSERT INTO country(name) VALUES('Romania');
INSERT INTO country(name) VALUES('Jamaica');
INSERT INTO country(name) VALUES('Rwanda');
INSERT INTO country(name) VALUES('Dominican Republic');
INSERT INTO country(name) VALUES('Andorra');
INSERT INTO country(name) VALUES('Georgia');
INSERT INTO country(name) VALUES('Costa Rica');
INSERT INTO country(name) VALUES('Trinidad and Tobago');
INSERT INTO country(name) VALUES('Haiti');
INSERT INTO country(name) VALUES('Bosnia and Herzegovina');
INSERT INTO country(name) VALUES('Nauru');
INSERT INTO country(name) VALUES('Argentina');
INSERT INTO country(name) VALUES('Equatorial Guinea');
INSERT INTO country(name) VALUES('Madagascar');
INSERT INTO country(name) VALUES('Iraq');
INSERT INTO country(name) VALUES('Bolivia');
INSERT INTO country(name) VALUES('Indonesia');
INSERT INTO country(name) VALUES('United Arab Emirates');
INSERT INTO country(name) VALUES('Russia');
INSERT INTO country(name) VALUES('Netherlands');
INSERT INTO country(name) VALUES('Congo, Republic of the');
INSERT INTO country(name) VALUES('Vanuatu');
INSERT INTO country(name) VALUES('Saint Lucia');
INSERT INTO country(name) VALUES('Burkina Faso');
INSERT INTO country(name) VALUES('Panama');
INSERT INTO country(name) VALUES('Austria');
INSERT INTO country(name) VALUES('Mongolia');
INSERT INTO country(name) VALUES('United Arab Emirates');
INSERT INTO country(name) VALUES('Tonga');
INSERT INTO country(name) VALUES('Grenada');
INSERT INTO country(name) VALUES('Slovenia');
INSERT INTO country(name) VALUES('Kazakhstan');
INSERT INTO country(name) VALUES('Spain');
INSERT INTO country(name) VALUES('Montenegro');
INSERT INTO country(name) VALUES('Netherlands');
INSERT INTO country(name) VALUES('Angola');
INSERT INTO country(name) VALUES('Bangladesh');
INSERT INTO country(name) VALUES('Poland');
INSERT INTO country(name) VALUES('Tanzania');
INSERT INTO country(name) VALUES('Benin');
INSERT INTO country(name) VALUES('Dominican Republic');
INSERT INTO country(name) VALUES('Austria');
INSERT INTO country(name) VALUES('Morocco');
INSERT INTO country(name) VALUES('Sri Lanka');
INSERT INTO country(name) VALUES('Portugal');
INSERT INTO country(name) VALUES('Sierra Leone');
INSERT INTO country(name) VALUES('Costa Rica');
INSERT INTO country(name) VALUES('Liberia');
INSERT INTO country(name) VALUES('Iran');
INSERT INTO country(name) VALUES('Dominica');
INSERT INTO country(name) VALUES('Algeria');
INSERT INTO country(name) VALUES('Czech Republic');
INSERT INTO country(name) VALUES('Denmark');
INSERT INTO country(name) VALUES('Serbia');
INSERT INTO country(name) VALUES('Côte d’Ivoire');
INSERT INTO country(name) VALUES('Uganda');
INSERT INTO country(name) VALUES('Taiwan');
INSERT INTO country(name) VALUES('Mozambique');
INSERT INTO country(name) VALUES('Congo, Republic of the');
INSERT INTO country(name) VALUES('Korea, South');
INSERT INTO country(name) VALUES('Burkina Faso');
INSERT INTO country(name) VALUES('Finland');
INSERT INTO country(name) VALUES('Lithuania');
INSERT INTO country(name) VALUES('Kazakhstan');
INSERT INTO country(name) VALUES('Equatorial Guinea');
INSERT INTO country(name) VALUES('Saint Vincent and the Grenadines');
INSERT INTO country(name) VALUES('Samoa');
INSERT INTO country(name) VALUES('Marshall Islands');
INSERT INTO country(name) VALUES('India');
INSERT INTO country(name) VALUES('Malta');
INSERT INTO country(name) VALUES('Singapore');
INSERT INTO country(name) VALUES('Italy');
INSERT INTO country(name) VALUES('United Kingdom');
INSERT INTO country(name) VALUES('Guinea-Bissau');
INSERT INTO country(name) VALUES('The Gambia');
INSERT INTO country(name) VALUES('Syria');
INSERT INTO country(name) VALUES('Zimbabwe');
INSERT INTO country(name) VALUES('Uganda');
INSERT INTO country(name) VALUES('Fiji');
INSERT INTO country(name) VALUES('Uganda');
INSERT INTO country(name) VALUES('Argentina');
INSERT INTO country(name) VALUES('Kuwait');
INSERT INTO country(name) VALUES('Vatican City');
INSERT INTO country(name) VALUES('Kenya');
INSERT INTO country(name) VALUES('Malaysia');
INSERT INTO country(name) VALUES('Dominica');
INSERT INTO country(name) VALUES('Uruguay');
INSERT INTO country(name) VALUES('Egypt');
INSERT INTO country(name) VALUES('Haiti');
INSERT INTO country(name) VALUES('Sudan, South');
INSERT INTO country(name) VALUES('Grenada');
INSERT INTO country(name) VALUES('Greece');
INSERT INTO country(name) VALUES('Grenada');
INSERT INTO country(name) VALUES('Korea, South');
INSERT INTO country(name) VALUES('Tanzania');
INSERT INTO country(name) VALUES('Nauru');
INSERT INTO country(name) VALUES('Mauritania');
INSERT INTO country(name) VALUES('Laos');
INSERT INTO country(name) VALUES('Suriname');
INSERT INTO country(name) VALUES('Belize');
INSERT INTO country(name) VALUES('Nicaragua');
INSERT INTO country(name) VALUES('Cabo Verde');
INSERT INTO country(name) VALUES('Ecuador');
INSERT INTO country(name) VALUES('Senegal');
INSERT INTO country(name) VALUES('Eritrea');
INSERT INTO country(name) VALUES('Ukraine');
INSERT INTO country(name) VALUES('Dominican Republic');
INSERT INTO country(name) VALUES('Côte d’Ivoire');
INSERT INTO country(name) VALUES('Ecuador');
INSERT INTO country(name) VALUES('Saint Lucia');
INSERT INTO country(name) VALUES('Kazakhstan');
INSERT INTO country(name) VALUES('Jordan');
INSERT INTO country(name) VALUES('Sierra Leone');
INSERT INTO country(name) VALUES('El Salvador');
INSERT INTO country(name) VALUES('Norway');
INSERT INTO country(name) VALUES('Nauru');
INSERT INTO country(name) VALUES('Tuvalu');
INSERT INTO country(name) VALUES('Saint Vincent and the Grenadines');
INSERT INTO country(name) VALUES('Namibia');
INSERT INTO country(name) VALUES('Seychelles');
INSERT INTO country(name) VALUES('Turkey');
INSERT INTO country(name) VALUES('Equatorial Guinea');
INSERT INTO country(name) VALUES('Bahrain');
INSERT INTO country(name) VALUES('Vatican City');
INSERT INTO country(name) VALUES('Singapore');
INSERT INTO country(name) VALUES('Burundi');
INSERT INTO country(name) VALUES('Armenia');
INSERT INTO country(name) VALUES('Norway');
INSERT INTO country(name) VALUES('Kazakhstan');
INSERT INTO country(name) VALUES('Jamaica');
INSERT INTO country(name) VALUES('Fiji');
INSERT INTO country(name) VALUES('Kosovo');
INSERT INTO country(name) VALUES('Comoros');
INSERT INTO country(name) VALUES('Tajikistan');
INSERT INTO country(name) VALUES('Estonia');
INSERT INTO country(name) VALUES('Bosnia and Herzegovina');
INSERT INTO country(name) VALUES('Laos');
INSERT INTO country(name) VALUES('Samoa');
INSERT INTO country(name) VALUES('Korea, North');
INSERT INTO country(name) VALUES('Kiribati');
INSERT INTO country(name) VALUES('Botswana');
INSERT INTO country(name) VALUES('Sierra Leone');
INSERT INTO country(name) VALUES('Greece');
INSERT INTO country(name) VALUES('Israel');
INSERT INTO country(name) VALUES('Bosnia and Herzegovina');
INSERT INTO country(name) VALUES('Italy');
INSERT INTO country(name) VALUES('Malta');
INSERT INTO country(name) VALUES('Uganda');
INSERT INTO country(name) VALUES('Argentina');
INSERT INTO country(name) VALUES('Togo');
INSERT INTO country(name) VALUES('Ecuador');
INSERT INTO country(name) VALUES('Peru');
INSERT INTO country(name) VALUES('Ireland');
INSERT INTO country(name) VALUES('Mauritius');
INSERT INTO country(name) VALUES('Nicaragua');
INSERT INTO country(name) VALUES('United Kingdom');
INSERT INTO country(name) VALUES('Cabo Verde');
INSERT INTO country(name) VALUES('Sao Tome and Principe');
INSERT INTO country(name) VALUES('Kyrgyzstan');
INSERT INTO country(name) VALUES('Botswana');
INSERT INTO country(name) VALUES('Solomon Islands');
INSERT INTO country(name) VALUES('Taiwan');
INSERT INTO country(name) VALUES('San Marino');
INSERT INTO country(name) VALUES('Sri Lanka');
INSERT INTO country(name) VALUES('Namibia');
INSERT INTO country(name) VALUES('Somalia');
INSERT INTO country(name) VALUES('Switzerland');
INSERT INTO country(name) VALUES('Korea, South');
INSERT INTO country(name) VALUES('Andorra');

--LLENANDO TABLA medicine
alter table medicine
drop column creation_date

alter table medicine
drop column update_date

alter table medicine
drop column type

alter table medicine
add type_medicine INT

alter table medicine
ADD FOREIGN KEY(type_medicine) REFERENCES medicine_type(id);

CREATE TABLE medicine_type(
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

INSERT INTO medicine_type(id, name) VALUES(1,'Antibiotico'),(2,'Antihistamínicos');

SELECT *
FROM medicine;



INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Prozac',10.6523638175113,'Midodrine',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Midodrine',20.5286156756471,'Maxalt',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Lasix',28.983017764512,'MidNite',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Vaqta',6.94283304127996,'Arcoxia',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Herceptin',16.8314210101177,'Claritin',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Singulair',15.4029761075056,'Fosamax',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',14.520805087183,'Cosopt',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zovirax',14.6730046009985,'Lasix',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('OxyContin',29.7716785416806,'Visine',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Amaryl',15.1763716513181,'Panadol',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Novolin',14.1390782679147,'Cosopt',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',17.4386322360666,'Novolin',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Vioxx',4.17563492673246,'Unisom',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Exact',12.1767563625131,'Midodrine',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Midodrine',35.3928453640048,'Band-Aid',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Aggrastat',14.1030648658532,'Coldrex',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('NyQuill',33.1879025507662,'Cosopt',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('NyQuill',5.86246496106613,'Tylenol',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Exact',23.9778494080425,'Prozac',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Gravol',16.2138287072134,'Aggrastat',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('OxyContin',4.33754083157403,'Zetia',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Band-Aid',26.5281353287996,'Claritin',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zetia',13.0771056898297,'Ibalgin',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Visine',12.2578347908602,'Aggrastat',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Vaqta',3.70855929456118,'Zoloft',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',38.9042914942393,'Midodrine',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('NyQuill',38.3282255564482,'Unisom',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Lasix',25.7298352800914,'OxyContin',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Gravol',21.9940468966933,'Advil',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Aspirin',37.2204970569445,'Pepcid',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Pepcid',36.0636945683806,'Paracetamol',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Herceptin',25.8994087301658,'Symbicort',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zovirax',17.7194058358294,'Novolin',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',20.139296397166,'Paracetamol',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',8.20865531880812,'Emend',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Midodrine',26.3373829584277,'Risperdal',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Amaryl',39.4559792687446,'Cosopt',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',37.6407035787779,'Zetia',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Vaqta',28.7900385543658,'Fosamax',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Tylenol',17.6348994288756,'Fosamax',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Femibion',16.7238525602612,'Zoloft',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Benadryl',4.91934371829002,'Band-Aid',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Panadol',36.7032804888223,'Cosopt',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Prozac',24.6933863464246,'Gravol',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Nurofen',37.5966482076778,'Abilify',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('MidNite',36.75300701277,'NyQuill',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Claritin',1.87419835006548,'Zoloft',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',35.2958434570096,'Singulair',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('OxyContin',30.4585068567928,'Ibuprofen',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Miralax',31.0741980160001,'Zetia',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Singulair',36.1155681610646,'Cosopt',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',12.7255039465267,'Novolin',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Coldrex',2.19521937994064,'Ibuprofen',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Amaryl',3.78128045321502,'Coldrex',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Tylenol',29.3788023332035,'Vioxx',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Unisom',2.30722128800453,'Maxalt',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Ibuprofen',23.8594350856074,'Ocrevus',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',5.47629216847769,'NyQuill',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',39.3138144767442,'Singulair',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Unisom',7.11392230359554,'Amaryl',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Vioxx',11.0666835871836,'Novolin',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Herceptin',28.2358053262512,'Zovirax',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Claritin',4.83858224695482,'Vaqta',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Visine',5.91551068328112,'Gravol',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Arcoxia',27.3876715276333,'Femibion',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Paracetamol',16.3448765149083,'Claritin',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Ocrevus',4.13047369389351,'Lisinopril',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Miralax',29.9880746765938,'Zoloft',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Ocrevus',16.1140872501368,'OxyContin',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Lasix',10.5447162727568,'Panadol',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Cosopt',39.2695086916301,'Tylenol',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Makena',39.4321128960848,'Gravol',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Makena',21.279490996748,'Ocrevus',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Miralax',27.6242347367221,'Cosopt',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Aggrastat',38.2771953657629,'Emend',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('OxyContin',39.8740045967856,'Pepcid',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Cosopt',26.4557021383456,'Zoloft',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Benadryl',37.269116085148,'Zoloft',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Pepcid',23.6477889626509,'Claritin',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Femibion',1.10694953245434,'Lisinopril',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Novolin',13.7889420431056,'Aspirin',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Arcoxia',28.1529545225915,'Zoloft',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zetia',34.8307537314625,'Claritin',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',14.0730602625166,'Femibion',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',34.4408992526312,'Unisom',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Visine',24.5630180507726,'Vioxx',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Miralax',4.47216869819545,'Benadryl',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Prozac',16.6239406632371,'Nurofen',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Nurofen',5.28621179623819,'Zoloft',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Emend',25.8906823633661,'Zoloft',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Nurofen',30.5593888175485,'Ocrevus',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Paracetamol',16.763393753098,'Ibuprofen',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Coldrex',26.2809236241881,'Amaryl',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Aspirin',3.82305143905014,'Maxalt',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Varivax',24.1341778310641,'Pepcid',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Herceptin',5.8486685607809,'Gravol',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Tylenol',26.7360597195737,'Ibuprofen',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Midodrine',17.8201885078196,'Herceptin',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Coldrex',14.4188056012703,'Gravol',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',37.1111682397831,'Aggrastat',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Abilify',22.4983087347347,'Ibuprofen',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Ocrevus',24.2458380592269,'Symbicort',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Ibuprofen',29.739995308565,'Exact',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Lisinopril',17.92183886977,'Novolin',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Band-Aid',31.9913825322834,'Femibion',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Abilify',4.92744261442099,'Femibion',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',24.7733119487638,'Herceptin',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Risperdal',20.0634996039157,'Cosopt',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Prozac',24.0960753336996,'Amaryl',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',35.1996879550627,'Symbicort',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Exact',5.49080615979191,'Ocrevus',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Singulair',25.6403133839557,'Fosamax',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Prozac',23.5472194121905,'Cosopt',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('NyQuill',8.19449477046472,'Risperdal',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Ibalgin',13.8095534680456,'Tylenol',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Claritin',8.36311741097044,'Midodrine',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Risperdal',31.7769254100402,'Amaryl',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',19.5635534774342,'Cosopt',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',12.1766905063655,'Ibalgin',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Femibion',23.8996796947437,'Fosamax',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Lasix',1.09504736684963,'Prozac',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Gravol',21.0967588383224,'Ocrevus',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Varivax',24.9614215143777,'Lisinopril',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Symbicort',20.8800189545751,'Arcoxia',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Aspirin',9.72055021148201,'Ibuprofen',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Cosopt',24.3542854182209,'Lasix',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Gravol',13.0575287747465,'Magne B6',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Singulair',38.0394515167174,'Emend',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Benadryl',18.766130804441,'Zoloft',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zetia',12.1692041150151,'Gravol',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Benadryl',23.2888695394103,'Abilify',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Claritin',28.0943947360359,'Visine',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zovirax',9.51510716113965,'Fosamax',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Advil',30.938358892658,'Cosopt',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Benadryl',28.5893451066638,'Zoloft',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('MidNite',39.8785541708947,'Gravol',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Singulair',17.0176536450245,'Paracetamol',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',14.0879835738279,'Emend',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('OxyContin',22.8132383161286,'Ibuprofen',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Emend',11.378144688149,'NyQuill',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Varivax',7.85884957940264,'Gravol',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Singulair',33.6120196937639,'Benadryl',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Gravol',31.0941321393913,'Lasix',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Nurofen',34.2473683665727,'Ocrevus',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',30.3080264196303,'Abilify',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('MidNite',6.31984286816783,'Maxalt',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Nurofen',36.6351480640635,'Magne B6',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Advil',13.2150071743946,'Visine',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Claritin',35.1969798375838,'Zetia',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Aspirin',11.1658454119069,'Claritin',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Band-Aid',17.2289306564391,'Miralax',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Magne B6',4.46400879857317,'Risperdal',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Abilify',39.2363973880356,'Singulair',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Varivax',26.3279243196956,'Zoloft',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',20.3704849539187,'Arcoxia',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Ibalgin',6.44686644032917,'Femibion',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Paracetamol',36.2386104335257,'Aspirin',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('OxyContin',39.2438362041692,'MidNite',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zetril',15.6594205837042,'NyQuill',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Singulair',25.7866391771411,'Aggrastat',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Pepcid',26.3266360840419,'Zoloft',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Nurofen',22.2915639389733,'MidNite',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('OxyContin',3.63986927719781,'Zetril',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Coldrex',5.18261927188496,'Risperdal',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',34.6369872240522,'Herceptin',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',35.801323788148,'Femibion',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Aspirin',2.76150729822065,'Magne B6',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('NyQuill',38.1403362472264,'Fosamax',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Exact',25.6621859984762,'Zoloft',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Paracetamol',10.5472632104285,'Vaqta',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Gravol',3.50207454408616,'Lisinopril',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Amaryl',31.8844806365131,'Miralax',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Gravol',29.796236828806,'Zoloft',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Emend',17.8087177084799,'Advil',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Paracetamol',11.8220641221023,'Ocrevus',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Pepcid',3.02981448407742,'Paracetamol',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Miralax',11.3482341157963,'Maxalt',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Makena',35.6385836515755,'Magne B6',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Abilify',39.1632970367387,'Zoloft',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Claritin',27.5963008872216,'Arcoxia',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zetia',4.51134879026159,'Fosamax',5,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Midodrine',20.8670019874661,'Makena',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Ocrevus',19.3513243619126,'Zetia',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',27.0041696387363,'Aggrastat',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',17.3889286245168,'Prozac',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Herceptin',7.41123364745231,'Aspirin',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Maxalt',24.4440689200741,'Nurofen',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Prozac',26.8583282497052,'Unisom',6,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Abilify',2.0454621063757,'Aspirin',4,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Unisom',2.49694271129414,'Lisinopril',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zetia',18.6686043486319,'Zovirax',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',31.2323585828917,'Lasix',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Vioxx',3.8637651679403,'Lisinopril',1,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',17.7962152044271,'Advil',3,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Zoloft',25.8402228033357,'Lisinopril',7,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('NyQuill',21.4002410864459,'Zoloft',2,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Benadryl',31.751787477523,'Midodrine',9,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Fosamax',34.2548041009599,'Aspirin',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Novolin',5.9887090781651,'Makena',8,1);
INSERT INTO medicine(name,price,description,id_provider,type_medicine) VALUES('Emend',14.2114023585857,'Gravol',5,1);
