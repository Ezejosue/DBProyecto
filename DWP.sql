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
INSERT INTO employee VALUES('Chuck','Phillips','1979-04-22 07:45:16',9,2.2225801930868,79.2997355499769,'Cadet blue',4,3,5,2,8,'nx2mn7czlp',2,'Chuck_Phillips8879@qater.org',503.105676043362,696.752997785692,74.1944090859938);
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
INSERT INTO employee VALUES('Carrie','Wilson','1967-01-11 11:22:06',7,1.44666976679427,126.76858283196,'Sepia',4,1,222,3,5,'WuKlBtzTS6',3,'Carrie_Wilson4010@jiman.org',1531.32823532882,728.52272250807,79.5165785758368);
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
INSERT INTO employee VALUES('Domenic','Allcott','1966-09-24 15:27:26',1,1.606548062715,151.915773419624,'Aqua',1,4,221,2,8,'uBEDAVDHmg',3,'Domenic_Allcott1032@mafthy.com',1808.23650748573,778.379692881545,75.9509036466251);
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
INSERT INTO schedule_employee VALUES(6,24,4);
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
INSERT INTO schedule_employee VALUES(26,22,3);
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
insert into employee_direction (direction, employee_id) values ('671 Hollow Ridge Road', 19);
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
insert into employee_direction (direction, employee_id) values ('7620 Cardinal Circle', 30);
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
INSERT INTO employee VALUES('Carrie','Wilson','1967-01-11 11:22:06',7,1.44666976679427,126.76858283196,'Sepia',4,1,218,3,5,'WuKlBtzTS6',3,'Carrie_Wilson4010@jiman.org',1531.32823532882,728.52272250807,79.5165785758368);
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
INSERT INTO employee VALUES('Domenic','Allcott','1966-09-24 15:27:26',1,1.606548062715,151.915773419624,'Aqua',1,4,1,2,8,'uBEDAVDHmg',3,'Domenic_Allcott1032@mafthy.com',1808.23650748573,778.379692881545,75.9509036466251);
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

--llenando tabla patient--

ALTER TABLE patient
DROP COLUMN creation_date

ALTER TABLE patient
DROP COLUMN update_date

INSERT INTO patient VALUES('Dakota','Mcgregor','7/16/2002',1,1.20129006132544,1,4,91.5670226149107,'Aquamarine',8,'Dakota_Mcgregor1167@tonsy.org',8);
INSERT INTO patient  VALUES('Emmanuelle','Myatt','6/8/2000',7,1.38940096757812,1,2,213.361021253448,'Yellow',1,'Emmanuelle_Myatt6828@joiniaa.com',6);
INSERT INTO patient VALUES('Rosa','Dale','8/10/1773',2,1.25356041651851,2,1,268.276742665692,'Dark red',8,'Rosa_Dale4491@infotech44.tech',9);
INSERT INTO patient VALUES('Summer','Waterson','11/1/1998',4,1.8477565556987,4,2,199.899167955806,'Carmine',8,'Summer_Waterson7795@gmail.com',3);
INSERT INTO patient VALUES('Rick','Burnley','5/3/2001',6,1.23854412522099,1,1,204.371211037678,'Purple',8,'Rick_Burnley9980@naiker.biz',8);
INSERT INTO patient VALUES('William','Spencer','1/20/2003',1,1.25402505614517,3,1,185.151961513866,'Sienna',4,'William_Spencer5576@sheye.org',2);
INSERT INTO patient VALUES('Lucas','Noon','3/8/2014',5,1.1385169365157,5,1,80.1185310679109,'Black',2,'Lucas_Noon6261@mafthy.com',7);
INSERT INTO patient VALUES('Fiona','Vollans','11/13/2013',5,1.13155215565653,5,4,224.118303190506,'Gold',7,'Fiona_Vollans2440@nimogy.biz',6);
INSERT INTO patient VALUES('Jade','Evans','10/12/2000',2,1.72305504638844,1,1,91.4385940271609,'Amethyst',6,'Jade_Evans9997@nickia.com',8);
INSERT INTO patient VALUES('Abbey','Sherwood','3/18/2001',1,1.90402283375339,5,2,119.474320934375,'Gray',4,'Abbey_Sherwood9494@deons.tech',5);
INSERT INTO patient VALUES('Ronald','Scott','10/22/1999',4,1.55547304896427,2,2,243.385060240694,'Cerise',9,'Ronald_Scott7031@dionrab.com',4);
INSERT INTO patient VALUES('Kurt','Irwin','8/18/1998',3,1.99530956800809,3,2,218.080757374447,'Peach',8,'Kurt_Irwin8236@gompie.com',9);
INSERT INTO patient VALUES('Gwenyth','Underhill','3/4/2000',2,1.24832264298961,2,4,251.397578548359,'Aqua',3,'Gwenyth_Underhill9621@tonsy.org',7);
INSERT INTO patient VALUES('Michael','Larkin','2/6/1993',7,1.17275126426143,4,2,135.493297992038,'Purple',4,'Michael_Larkin6276@irrepsy.com',7);
INSERT INTO patient VALUES('Wade','Lambert','8/5/1999',7,1.84525263162574,1,3,279.156048518213,'Rosegold',9,'Wade_Lambert1322@liret.org',8);
INSERT INTO patient VALUES('Dani','Robertson','6/11/1998',2,1.2944302932799,3,2,250.643217215614,'Sepia',3,'Dani_Robertson5980@corti.com',9);
INSERT INTO patient VALUES('Liam','Graves','7/3/1773',4,1.14508854604563,1,3,227.603089780362,'Beige',3,'Liam_Graves6473@gompie.com',10);
INSERT INTO patient VALUES('Angel','Cunningham','8/3/2000',8,1.22500743122073,1,4,282.598452860303,'Maroon',3,'Angel_Cunningham922@irrepsy.com',10);
INSERT INTO patient VALUES('Isabella','Cameron','11/9/2001',6,1.26762866567244,3,1,200.166295588094,'Sepia',6,'Isabella_Cameron238@cispeto.com',8);
INSERT INTO patient VALUES('Quinn','Fenton','5/14/2003',7,1.32922003712934,3,2,122.249314356246,'Lavender',7,'Quinn_Fenton8687@muall.tech',4);
INSERT INTO patient VALUES('Alexander','Franks','12/10/2004',1,1.402288320196,3,2,179.986646546976,'Black',1,'Alexander_Franks3179@kideod.biz',3);
INSERT INTO patient VALUES('Eve','Vaughan','9/8/1998',2,1.57264403978951,2,4,226.943008312463,'Carmine',8,'Eve_Vaughan3182@elnee.tech',2);
INSERT INTO patient VALUES('Charlize','Owens','7/27/1996',5,1.04633823411834,1,4,129.482179401667,'Olive',4,'Charlize_Owens4680@extex.org',7);
INSERT INTO patient VALUES('Candice','Robinson','11/7/1997',4,1.72491677465146,4,4,233.800634717942,'Green',9,'Candice_Robinson7767@eirey.tech',7);
INSERT INTO patient VALUES('Benny','Holt','7/14/2003',8,1.86618765577031,1,3,226.651490761271,'Aqua',7,'Benny_Holt7029@zorer.org',10);
INSERT INTO patient VALUES('Chuck','Nash','10/16/2004',1,1.77388770914352,5,3,116.387041396642,'Camel',8,'Chuck_Nash438@bauros.biz',7);
INSERT INTO patient VALUES('Liam','Stuart','5/24/2005',9,1.06471981064636,2,2,129.446063069834,'Magenta',3,'Liam_Stuart9172@brety.org',3);
INSERT INTO patient VALUES('Percy','Lee','11/10/2010',1,1.35440147125833,3,2,81.8669971254966,'coral',1,'Percy_Lee7183@muall.tech',3);
INSERT INTO patient VALUES('Melody','Morrison','8/27/2011',1,1.25573003257426,1,4,162.09361617644,'Green',5,'Melody_Morrison9159@supunk.biz',4);
INSERT INTO patient VALUES('George','Steer','4/12/2013',5,1.17385524146904,5,3,124.833371283409,'Mauve',7,'George_Steer7860@grannar.com',7);
INSERT INTO patient VALUES('Scarlett','Ross','5/17/2010',3,1.68864762396023,1,1,155.922127590013,'Lime',7,'Scarlett_Ross3250@infotech44.tech',9);
INSERT INTO patient VALUES('Manuel','Brown','4/9/2003',8,1.06721205174327,2,4,212.061415691889,'Lime',3,'Manuel_Brown61@bauros.biz',4);
INSERT INTO patient VALUES('Rufus','Redwood','5/25/2000',5,1.12639307748824,4,4,254.283436110375,'Azure',6,'Rufus_Redwood6770@bungar.biz',1);
INSERT INTO patient VALUES('Piper','Rogers','4/22/1996',9,1.78091027763715,3,2,217.717296785078,'Sky blue',3,'Piper_Rogers1559@bretoux.com',10);
INSERT INTO patient VALUES('Bryon','Hunter','4/4/1998',8,1.86308205773266,3,4,259.757984124943,'Cerise',8,'Bryon_Hunter8783@liret.org',7);
INSERT INTO patient VALUES('Barry','Moore','9/12/1999',7,1.66744782480758,1,1,172.666990478834,'Gray',1,'Barry_Moore3615@gompie.com',5);
INSERT INTO patient VALUES('Julian','Alexander','5/28/2000',7,1.76175331173546,1,4,91.7462394124578,'Fuchsia',8,'Julian_Alexander1947@zorer.org',2);
INSERT INTO patient VALUES('Logan','Booth','10/1/2002',6,1.83834129145292,4,2,82.3348631241056,'Fuchsia',3,'Logan_Booth2475@acrit.org',7);
INSERT INTO patient VALUES('Chester','Aldridge','2/14/1996',2,1.84261636102694,2,1,122.170781322369,'Rosewood',9,'Chester_Aldridge9481@deons.tech',8);
INSERT INTO patient VALUES('Ethan','Eaton','7/20/1998',9,1.42640311523639,5,4,187.196324127352,'Mauve',3,'Ethan_Eaton928@iatim.tech',4);
INSERT INTO patient VALUES('Tiffany','Whittle','1/17/1996',3,1.29315068446712,5,3,277.231237157821,'Carmine',3,'Tiffany_Whittle4752@extex.org',2);
INSERT INTO patient VALUES('Eryn','Quinn','2/17/2000',3,1.68165664639401,4,4,178.52700153204,'Purple',8,'Eryn_Quinn9887@nanoff.biz',10);
INSERT INTO patient VALUES('Eileen','Wellington','11/28/2003',7,1.68424893994082,1,1,117.23938952351,'Yellow',8,'Eileen_Wellington5632@bauros.biz',1);
INSERT INTO patient VALUES('Tyson','Santos','4/18/2003',9,1.71171829556661,1,2,291.389044592804,'Auburn',9,'Tyson_Santos948@guentu.biz',10);
INSERT INTO patient VALUES('Boris','Bell','1/2/2002',8,1.99901354359417,4,2,185.53918618734,'Red',6,'Boris_Bell1206@supunk.biz',4);
INSERT INTO patient VALUES('Henry','Weasley','3/24/2001',5,1.26937693742541,1,2,174.603011957651,'Sky blue',4,'Henry_Weasley9759@acrit.org',7);
INSERT INTO patient VALUES('Ethan','Whitmore','7/23/2010',9,1.86650024394807,5,2,234.092961898117,'Silver',1,'Ethan_Whitmore3527@deons.tech',2);
INSERT INTO patient VALUES('Rosalyn','Palmer','12/21/2003',4,1.47561489486863,1,2,291.093881999652,'Gold',8,'Rosalyn_Palmer5437@fuliss.net',10);
INSERT INTO patient VALUES('Brad','Uttridge','2/18/2004',9,1.22501056325855,2,2,172.308407202507,'Dark Red',7,'Brad_Uttridge5389@bretoux.com',7);
INSERT INTO patient VALUES('Celina','Buckley','8/8/2004',7,1.6856140921291,4,2,160.739149912139,'Pink',2,'Celina_Buckley6557@acrit.org',6);
INSERT INTO patient VALUES('Harvey','Gordon','6/8/2003',6,1.94844370705469,5,2,149.748506362899,'Amethyst',6,'Harvey_Gordon693@qater.org',1);
INSERT INTO patient VALUES('Jade','Moran','3/24/2005',2,1.71943967636649,1,4,108.83112502649,'Turquoise',4,'Jade_Moran2237@deavo.com',1);
INSERT INTO patient VALUES('Harvey','Allen','11/19/2009',6,1.0109984255447,5,3,184.404325604627,'Sky blue',6,'Harvey_Allen8412@extex.org',10);
INSERT INTO patient VALUES('Carter','Oakley','11/29/2001',1,1.78206969647765,3,1,199.039460999444,'Red',5,'Carter_Oakley3456@joiniaa.com',1);
INSERT INTO patient VALUES('Gemma','Gaynor','4/6/2000',7,1.88141970377482,4,1,116.546042193913,'Maroon',3,'Gemma_Gaynor8788@acrit.org',9);
INSERT INTO patient VALUES('Adela','Broomfield','11/6/1999',8,1.09164470810985,3,3,129.760046000481,'Peach',7,'Adela_Broomfield4045@sheye.org',6);
INSERT INTO patient VALUES('Rocco','Pratt','12/21/1997',2,1.69640069487337,2,2,171.569036413715,'Amethyst',7,'Rocco_Pratt5088@gembat.biz',2);
INSERT INTO patient VALUES('Phillip','Harris','11/20/1978',3,1.19849105281685,1,1,102.459813032048,'White',8,'Phillip_Harris607@fuliss.net',4);
INSERT INTO patient VALUES('Matt','Watson','10/11/1983',6,1.4652839188768,5,1,219.536915723019,'Sienna',6,'Matt_Watson5695@corti.com',2);
INSERT INTO patient VALUES('Raquel','Needham','2/14/1973',6,1.94237658378779,2,3,288.200900609233,'Purple',1,'Raquel_Needham4179@atink.com',9);
INSERT INTO patient VALUES('Caydence','Morris','9/18/2001',7,1.66455933761995,5,4,95.6563387334609,'Yellow',1,'Caydence_Morris6362@liret.org',9);
INSERT INTO patient VALUES('Bart','Chapman','12/28/2003',6,1.34267921389205,4,4,231.111386255413,'Capri',1,'Bart_Chapman3360@vetan.org',2);
INSERT INTO patient VALUES('Julius','Bell','12/23/1978',3,1.93099275600677,5,3,236.008855417841,'Fuchsia',1,'Julius_Bell6577@yahoo.com',4);
INSERT INTO patient VALUES('Irene','Camden','6/5/1995',8,1.87329749338017,1,4,109.425712488324,'Rust',8,'Irene_Camden1538@acrit.org',10);
INSERT INTO patient VALUES('Erick','Johnson','8/25/1996',6,1.76429425122416,2,2,156.849298557662,'Pink',1,'Erick_Johnson1501@gompie.com',2);
INSERT INTO patient VALUES('Martin','Graves','7/12/1998',6,1.83529290316407,1,4,185.189664743929,'Ruby',5,'Martin_Graves290@zorer.org',1);
INSERT INTO patient VALUES('Wendy','Donovan','11/30/1999',8,1.11082371562292,2,4,125.593570065961,'Red',1,'Wendy_Donovan1786@famism.biz',8);
INSERT INTO patient VALUES('Nick','Uttridge','3/9/2002',8,1.85206130419488,1,2,253.042431647909,'Blue',9,'Nick_Uttridge4079@deavo.com',1);
INSERT INTO patient VALUES('Matt','Tennant','7/17/2000',2,1.33089934770525,2,4,181.639587572142,'Sepia',6,'Matt_Tennant2148@deons.tech',8);
INSERT INTO patient VALUES('Cassandra','Holmes','1/19/2001',1,1.3743230231918,1,4,138.280949922409,'Camel',9,'Cassandra_Holmes5589@fuliss.net',10);
INSERT INTO patient VALUES('Hayden','Rodgers','12/10/2002',9,1.48326201014373,3,1,164.418821436548,'Sky blue',8,'Hayden_Rodgers2729@fuliss.net',3);
INSERT INTO patient VALUES('Karla','Edler','9/12/2003',4,1.81641818527897,3,2,108.200008070655,'Cerise',7,'Karla_Edler4590@fuliss.net',9);
INSERT INTO patient VALUES('Chuck','Reynolds','11/24/2004',4,1.90303524532497,5,3,210.258108483282,'Peach',4,'Chuck_Reynolds658@naiker.biz',7);
INSERT INTO patient VALUES('Lynn','Nielson','9/9/2006',5,1.04326733157191,2,4,186.355612591075,'Ruby',8,'Lynn_Nielson8672@grannar.com',5);
INSERT INTO patient VALUES('Bryon','Wade','1/27/2008',9,1.56441671800074,1,3,83.2374549802567,'Sepia',7,'Bryon_Wade3413@qater.org',9);
INSERT INTO patient VALUES('Joseph','Wallace','1/3/2000',5,1.34080865063742,1,1,266.913828992245,'Salmon',5,'Joseph_Wallace2490@sheye.org',9);
INSERT INTO patient VALUES('Lorraine','Jones','5/15/2010',5,1.60524403006083,5,4,108.886340349394,'Olive',5,'Lorraine_Jones3723@gembat.biz',9);
INSERT INTO patient VALUES('Nick','Fulton','6/18/1998',5,1.31566637443177,3,4,257.924190305604,'Cerise',2,'Nick_Fulton8770@supunk.biz',9);
INSERT INTO patient VALUES('Alessandra','Woodley','12/29/1999',8,1.78661250313121,5,3,210.133710352301,'Salmon',7,'Alessandra_Woodley2359@infotech44.tech',3);
INSERT INTO patient VALUES('Denis','Todd','5/16/1996',7,1.66207304068938,4,4,205.091629572721,'Pink',3,'Denis_Todd4134@dionrab.com',8);
INSERT INTO patient VALUES('Rosalyn','Terry','4/11/2000',7,1.63223739836004,2,3,292.080462172199,'Aquamarine',2,'Rosalyn_Terry340@gompie.com',2);
INSERT INTO patient VALUES('Abdul','Porter','8/5/2001',7,1.12075800221449,2,4,213.314379724355,'Maroon',2,'Abdul_Porter6631@dionrab.com',4);
INSERT INTO patient VALUES('Harvey','Rowan','6/7/2003',7,1.68676940150874,5,4,112.920236579571,'Blue',3,'Harvey_Rowan372@muall.tech',8);
INSERT INTO patient VALUES('Freya','Alexander','8/23/2005',4,1.31300427453267,4,1,92.6497346752555,'White',3,'Freya_Alexander4932@nimogy.biz',2);
INSERT INTO patient VALUES('Gil','Wren','11/1/2001',9,1.26330535079506,5,3,142.317385907898,'White',4,'Gil_Wren9310@jiman.org',6);
INSERT INTO patient VALUES('Maxwell','Dillon','12/2/2003',5,1.87891488749483,2,1,216.534852571569,'Sepia',2,'Maxwell_Dillon465@cispeto.com',2);
INSERT INTO patient VALUES('George','Moran','5/30/1999',2,1.94292350250432,3,1,186.879144154433,'Rust',3,'George_Moran5081@vetan.org',2);
INSERT INTO patient VALUES('Lynn','Benfield','5/14/1997',2,1.5519024993069,1,3,283.647870014723,'Salmon',1,'Lynn_Benfield2158@grannar.com',4);
INSERT INTO patient VALUES('Henry','Reyes','12/1/1998',3,1.9951156578004,3,2,235.21895175158,'Auburn',9,'Henry_Reyes6767@elnee.tech',2);
INSERT INTO patient VALUES('Julius','Tyrrell','7/10/1996',7,1.00318275019675,1,1,238.425746594288,'Lavender',3,'Julius_Tyrrell93@bauros.biz',2);
INSERT INTO patient VALUES('Erick','Jones','6/12/1999',8,1.21974597555573,2,2,275.732123703105,'White',7,'Erick_Jones9752@iatim.tech',4);
INSERT INTO patient VALUES('Jack','Bristow','12/15/2001',7,1.17677881157807,3,1,164.223813413747,'Sky blue',7,'Jack_Bristow304@naiker.biz',5);
INSERT INTO patient VALUES('Anais','Wright','2/16/2002',7,1.93624633221712,4,4,172.564005692752,'Beige',7,'Anais_Wright5298@joiniaa.com',5);
INSERT INTO patient VALUES('Manuel','Vincent','11/29/2003',9,1.59808660978362,3,4,87.4564062643128,'Apricot',2,'Manuel_Vincent8081@twipet.com',9);
INSERT INTO patient VALUES('Carl','Varndell','11/21/2004',2,1.49909369857008,2,1,270.376144992363,'Lime',5,'Carl_Varndell708@yahoo.com',6);
INSERT INTO patient VALUES('Violet','Saunders','8/16/2001',4,1.26091587835034,5,1,152.215931412864,'Blue',7,'Violet_Saunders6929@cispeto.com',3);
INSERT INTO patient VALUES('Alison','Wren','11/22/2003',1,1.25631653901949,3,2,255.915243670305,'Brown',8,'Alison_Wren2862@eirey.tech',9);
INSERT INTO patient VALUES('Danny','Ebbs','3/9/2004',4,1.76339646930033,3,2,192.065863708065,'Pink',1,'Danny_Ebbs4471@deons.tech',3);
INSERT INTO patient VALUES('Abbey','London','3/8/2004',3,1.77339646930033,3,2,192.065863708065,'blue',1,'Abby_london11@deons.tech',3);
INSERT INTO patient VALUES('Kath','Jones','3/7/2004',2,1.78339646930033,2,4,197.065863708065,'black',5,'jones_kath55@deons.tech',1);
INSERT INTO patient VALUES('Lola','Style','3/10/2004',1,1.79339646930033,1,5,174.065863708065,'green',4,'lolstyle45@deons.tech',2);

--llenando tabla  patient direction--
ALTER TABLE patient_direction
DROP COLUMN creation_date

ALTER TABLE patient_direction
DROP COLUMN update_date

INSERT INTO patient_direction VALUES('Tilson  Street, 8196',42);
INSERT INTO patient_direction VALUES('York Rue, 3461',35);
INSERT INTO patient_direction VALUES('South Vale, 4672',75);
INSERT INTO patient_direction VALUES('Chatsworth  Crossroad, 7377',32);
INSERT INTO patient_direction VALUES('Linden Crossroad, 6170',66);
INSERT INTO patient_direction VALUES('Viscount   Walk, 6689',85);
INSERT INTO patient_direction VALUES('Blackwall  Vale, 3383',34);
INSERT INTO patient_direction VALUES('Birkbeck  Road, 5862',83);
INSERT INTO patient_direction VALUES('Battersea   Rue, 4997',61);
INSERT INTO patient_direction VALUES('Lake Walk, 3581',82);
INSERT INTO patient_direction VALUES('Apothecary   Tunnel, 2396',69);
INSERT INTO patient_direction VALUES('Camelot   Alley, 5424',95);
INSERT INTO patient_direction VALUES('Cecilia  Grove, 8594',20);
INSERT INTO patient_direction VALUES('Chatsworth  Avenue, 6709',40);
INSERT INTO patient_direction VALUES('Glenwood Walk, 4378',87);
INSERT INTO patient_direction VALUES('Cavendish Route, 1113',12);
INSERT INTO patient_direction VALUES('Vincent  Walk, 5720',47);
INSERT INTO patient_direction VALUES('Canon Walk, 4027',77);
INSERT INTO patient_direction VALUES('Blackheath   Crossroad, 4849',39);
INSERT INTO patient_direction VALUES('Bede  Vale, 2544',21);
INSERT INTO patient_direction VALUES('Bekesbourne   Route, 5321',76);
INSERT INTO patient_direction VALUES('Dunstable   Route, 8206',59);
INSERT INTO patient_direction VALUES('Maple Alley, 2594',19);
INSERT INTO patient_direction VALUES('Gate   Avenue, 3129',97);
INSERT INTO patient_direction VALUES('Blean   Vale, 4029',64);
INSERT INTO patient_direction VALUES('Bayberry Alley, 7219',4);
INSERT INTO patient_direction VALUES('Caedmon  Alley, 7724',17);
INSERT INTO patient_direction VALUES('Chatsworth  Tunnel, 1847',24);
INSERT INTO patient_direction VALUES('Bellenden   Street, 2890',13);
INSERT INTO patient_direction VALUES('Bigland  Boulevard, 9302',90);
INSERT INTO patient_direction VALUES('Church Drive, 4690',14);
INSERT INTO patient_direction VALUES('Bagford   Street, 4214',94);
INSERT INTO patient_direction VALUES('Enford   Avenue, 2118',10);
INSERT INTO patient_direction VALUES('Cliffords  Way, 6852',52);
INSERT INTO patient_direction VALUES('Shepherds  Avenue, 7216',10);
INSERT INTO patient_direction VALUES('Collins  Rue, 5801',72);
INSERT INTO patient_direction VALUES('Ellerman   Road, 6596',13);
INSERT INTO patient_direction VALUES('Biggerstaff   Street, 1055',83);
INSERT INTO patient_direction VALUES('Biggerstaff   Avenue, 6810',54);
INSERT INTO patient_direction VALUES('Victorian  Hill, 5198',82);
INSERT INTO patient_direction VALUES('Beatty  Crossroad, 6340',49);
INSERT INTO patient_direction VALUES('Bolingbroke  Alley, 5185',92);
INSERT INTO patient_direction VALUES('Fair Walk, 4678',37);
INSERT INTO patient_direction VALUES('Under  Crossroad, 2872',31);
INSERT INTO patient_direction VALUES('Baynes  Pass, 2209',49);
INSERT INTO patient_direction VALUES('Collingwood  Boulevard, 7538',35);
INSERT INTO patient_direction VALUES('Rivervalley Route, 9055',22);
INSERT INTO patient_direction VALUES('Cingworth  Vale, 9143',8);
INSERT INTO patient_direction VALUES('Thomas  Lane, 4318',79);
INSERT INTO patient_direction VALUES('Maple Alley, 6491',82);
INSERT INTO patient_direction VALUES('Rosewood Pass, 5821',42);
INSERT INTO patient_direction VALUES('Kilner   Pass, 2027',36);
INSERT INTO patient_direction VALUES('Clavell   Route, 1428',85);
INSERT INTO patient_direction VALUES('Apothecary   Road, 2738',37);
INSERT INTO patient_direction VALUES('King Tunnel, 850',69);
INSERT INTO patient_direction VALUES('Coley  Boulevard, 9909',40);
INSERT INTO patient_direction VALUES('Billing  Route, 3893',73);
INSERT INTO patient_direction VALUES('Argyle  Avenue, 2893',32);
INSERT INTO patient_direction VALUES('Railroad Route, 9824',81);
INSERT INTO patient_direction VALUES('Kilner   Boulevard, 6309',67);
INSERT INTO patient_direction VALUES('Waite  Hill, 49',56);
INSERT INTO patient_direction VALUES('Kinglake  Alley, 7074',94);
INSERT INTO patient_direction VALUES('Carolina  Alley, 7152',73);
INSERT INTO patient_direction VALUES('Maple Drive, 6417',21);
INSERT INTO patient_direction VALUES('Cave   Street, 5619',32);
INSERT INTO patient_direction VALUES('Gate   Grove, 9604',71);
INSERT INTO patient_direction VALUES('Lexington Crossroad, 7524',97);
INSERT INTO patient_direction VALUES('Endsleigh  Grove, 6528',74);
INSERT INTO patient_direction VALUES('Virginia Grove, 5075',64);
INSERT INTO patient_direction VALUES('Linden Grove, 4022',79);
INSERT INTO patient_direction VALUES('Castlereagh   Grove, 1126',34);
INSERT INTO patient_direction VALUES('Cephas  Hill, 3158',14);
INSERT INTO patient_direction VALUES('Ely  Walk, 652',53);
INSERT INTO patient_direction VALUES('Tiptree   Boulevard, 3221',71);
INSERT INTO patient_direction VALUES('Carlton  Tunnel, 4743',17);
INSERT INTO patient_direction VALUES('Blackwall  Pass, 8994',16);
INSERT INTO patient_direction VALUES('Rivervalley Drive, 785',59);
INSERT INTO patient_direction VALUES('Angela   Road, 9075',32);
INSERT INTO patient_direction VALUES('Cheney  Walk, 6355',90);
INSERT INTO patient_direction VALUES('Cheltenham  Way, 9306',53);
INSERT INTO patient_direction VALUES('Cavendish Way, 2162',27);
INSERT INTO patient_direction VALUES('Walnut Vale, 9661',35);
INSERT INTO patient_direction VALUES('Eaglet  Walk, 517',1);
INSERT INTO patient_direction VALUES('Boleyn  Street, 4871',95);
INSERT INTO patient_direction VALUES('Magnolia Drive, 9263',80);
INSERT INTO patient_direction VALUES('Lake Pass, 6848',75);
INSERT INTO patient_direction VALUES('Bennett  Pass, 7542',1);
INSERT INTO patient_direction VALUES('Erindale Grove, 3522',96);
INSERT INTO patient_direction VALUES('Bury  Drive, 6604',69);
INSERT INTO patient_direction VALUES('Birkenhead   Way, 7655',29);
INSERT INTO patient_direction VALUES('Chatsworth  Pass, 4951',65);
INSERT INTO patient_direction VALUES('Empress  Lane, 3548',55);
INSERT INTO patient_direction VALUES('Burton  Rue, 3644',41);
INSERT INTO patient_direction VALUES('Marina  Vale, 500',78);
INSERT INTO patient_direction VALUES('Cingworth  Grove, 4000',64);
INSERT INTO patient_direction VALUES('Apothecary   Drive, 6740',67);
INSERT INTO patient_direction VALUES('Bocking   Alley, 6455',2);
INSERT INTO patient_direction VALUES('Blomfield  Walk, 4285',91);
INSERT INTO patient_direction VALUES('Westbourne Way, 7963',74);
INSERT INTO patient_direction VALUES('Canon Road, 7965',96);
INSERT INTO patient_direction VALUES('Walnut Street, 7277',98);
INSERT INTO patient_direction VALUES('Catherine  Drive, 2632',24);
INSERT INTO patient_direction VALUES('Monroe Crossroad, 7664',6);


--llenando tabla patient_disease--
ALTER TABLE patient_disease
DROP COLUMN creation_date

ALTER TABLE patient_disease
DROP COLUMN update_date

insert into patient_disease values('Runny Nose','flu and rest',64);
insert into patient_disease values(' Ear Ache','pain reliever and rest',13);
insert into patient_disease values('Runny Nose','flu and rest',3);
insert into patient_disease values('Runny Nose','flu and rest',2);
insert into patient_disease values(' Ear Ache','pain reliever and rest',25);
insert into patient_disease values('Runny Nose','flu and rest',77);
insert into patient_disease values(' Ear Ache','pain reliever and rest',30);
insert into patient_disease values('Runny Nose','flu and rest',14);
insert into patient_disease values(' Ear Ache','pain reliever and rest',88);
insert into patient_disease values('Runny Nose','flu and rest',10);
insert into patient_disease values('Runny Nose','flu and rest',11);
insert into patient_disease values(' Ear Ache','pain reliever and rest',90);
insert into patient_disease values(' Ear Ache','pain reliever and rest',21);
insert into patient_disease values('Runny Nose','flu and rest',32);
insert into patient_disease values(' Ear Ache','pain reliever and rest',2);
insert into patient_disease values(' Ear Ache','pain reliever and rest',8);
insert into patient_disease values('Runny Nose','flu and rest',18);
insert into patient_disease values('Coughinge','syrup, tea and rest',36);
insert into patient_disease values('Runny Nose','flu and rest',64);
insert into patient_disease values('Coughinge','syrup, tea and rest',27);
insert into patient_disease values('Coughinge','syrup, tea and rest',16);
insert into patient_disease values(' glaucoma','eye drops',68);
insert into patient_disease values(' glaucoma','eye drops',69);
insert into patient_disease values('Coughinge','syrup, tea and rest',23);
insert into patient_disease values('Coughinge','syrup, tea and rest',21);
insert into patient_disease values(' anemia','Corticosteroids and good diet',82);
insert into patient_disease values(' anemia','Corticosteroids and good diet',83);
insert into patient_disease values('Coughinge','syrup, tea and rest',76);
insert into patient_disease values(' Sore Throat','syrup, tea',96);
insert into patient_disease values(' Sore Throat','syrup, tea',99);
insert into patient_disease values(' hypertension','benazepril',80);
insert into patient_disease values(' hypertension','benazepril',81);
insert into patient_disease values(' Sore Throat','syrup, tea',52);
insert into patient_disease values(' Sore Throat','syrup, tea',22);
insert into patient_disease values('Headache','pill and rest',87);
insert into patient_disease values(' anemia','Corticosteroids and good diet',86);
insert into patient_disease values(' anemia','Corticosteroids and good diet',87);
insert into patient_disease values('Headache','pill and rest',92);
insert into patient_disease values('Headache','pill and rest',91);
insert into patient_disease values('Headache','pill and rest',90);
insert into patient_disease values(' anemia','Corticosteroids and good diet',90);
insert into patient_disease values(' anemia','Corticosteroids and good diet',91);
insert into patient_disease values('Headache','pill and rest',33);
insert into patient_disease values('Stomach Ache','serums, gastric and good nutrition',80);
insert into patient_disease values(' epilepsy','Phenytoin',64);
insert into patient_disease values(' epilepsy','Phenytoin',65);
insert into patient_disease values('Stomach Ache','serums, gastric and good nutrition',77);
insert into patient_disease values('Stomach Ache','serums, gastric and good nutrition',14);
insert into patient_disease values(' epilepsy','Phenytoin',66);
insert into patient_disease values(' glaucoma','eye drops',67);
insert into patient_disease values('Stomach Ache','serums, gastric and good nutrition',13);
insert into patient_disease values('Stomach Ache','serums, gastric and good nutrition',5);
insert into patient_disease values('Chickenpox','distancing and rest',3);
insert into patient_disease values(' glaucoma','eye drops',70);
insert into patient_disease values(' glaucoma','eye drops',71);
insert into patient_disease values('Chickenpox','distancing and rest',17);
insert into patient_disease values(' glaucoma','eye drops',72);
insert into patient_disease values(' hypertension','benazepril',78);
insert into patient_disease values(' hypertension','benazepril',79);
insert into patient_disease values(' glaucoma','eye drops',73);
insert into patient_disease values('Chickenpox','distancing and rest',57);
insert into patient_disease values(' hypertension','benazepril',76);
insert into patient_disease values(' hypertension','benazepril',77);
insert into patient_disease values('Chickenpox','distancing and rest',51);
insert into patient_disease values('Sneeze','mask, anti-flu, anti-allergy',29);
insert into patient_disease values(' diabetes','insulin',55);
insert into patient_disease values(' diabetes','insulin',54);
insert into patient_disease values('Sneeze','mask, anti-flu, anti-allergy',74);
insert into patient_disease values('Sneeze','mask, anti-flu, anti-allergy',41);
insert into patient_disease values(' epilepsy','Phenytoin',62);
insert into patient_disease values(' epilepsy','Phenytoin',63);
insert into patient_disease values('Stomach Ache','serums, gastric and good nutrition',58);
insert into patient_disease values(' anemia','Corticosteroids and good diet',88);
insert into patient_disease values(' anemia','Corticosteroids and good diet',89);
insert into patient_disease values('Stomach Ache','serums, gastric and good nutrition',94);
insert into patient_disease values('Sneeze','mask, anti-flu, anti-allergy',42);
insert into patient_disease values('Sneeze','mask, anti-flu, anti-allergy',29);
insert into patient_disease values('Coughinge','syrup, tea and rest',76);
insert into patient_disease values(' diabetes','insulin',58);
insert into patient_disease values(' diabetes','insulint',59);
insert into patient_disease values('Coughinge','syrup, tea and rest',22);
insert into patient_disease values('Sneeze','mask, anti-flu, anti-allergy',74);
insert into patient_disease values('Sneeze','mask, anti-flu, anti-allergy',41);
insert into patient_disease values(' Fever','acetaminophen and rest',71);
insert into patient_disease values('Sneeze','mask, anti-flu, anti-allergy',42);
insert into patient_disease values('Stomach Ache','serums, gastric and good nutrition',35);
insert into patient_disease values(' anemia','Corticosteroids and good diet',84);
insert into patient_disease values(' anemia','Corticosteroids and good diet',85);
insert into patient_disease values('Stomach Ache','serums, gastric and good nutrition',34);
insert into patient_disease values('Chickenpox','distancing and rest',83);
insert into patient_disease values('Coughinge','syrup, tea and rest',78);
insert into patient_disease values('Coughinge','syrup, tea and rest',76);
insert into patient_disease values(' Sore Throat','syrup, tea',12);
insert into patient_disease values(' Fever','acetaminophen and rest',55);
insert into patient_disease values(' diabetes','insulint',56);
insert into patient_disease values(' epilepsy','Phenytoin',60);
insert into patient_disease values(' epilepsy','Phenytoin',61);
insert into patient_disease values(' hypertension','benazepril',74);
insert into patient_disease values(' hypertension','benazepril',75);
insert into patient_disease values(' diabetes','insulin',57);
insert into patient_disease values(' Fever','acetaminophen and rest',54);

--llenando tabla patiente_record--
	
ALTER TABLE patient_record
DROP COLUMN creation_date

ALTER TABLE patient_record
DROP COLUMN update_date

insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/5/2010','0011222547',1,2,5);
insert into patient_record values(' hypertension	',' care, stress management','taking medications, constant appointments','7/8/2013','001129795577',5,9,3);
insert into patient_record values(' hypertension	',' care, stress management','taking medications, constant appointments','11/28/2004','0000859795577',6,10,8);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/5/2010','0011222547',1,2,5);
insert into patient_record values(' Chickenpox',' Fever and Chickenpox ','gradual improvement, requires rest','11/5/2002','00222225477',20,5,4);
insert into patient_record values(' Chickenpox',' Fever','no gradual improvement, requires rest','8/5/2001','00112225237',11,2,7);
insert into patient_record values(' Chickenpox',' Fever','gradual improvement, requires rest','10/5/2005','00112225747',18,3,10);
insert into patient_record values(' Runny Nose',' Runny Nose','gradual improvement, requires rest','1/5/2007','00188225477',19,4,6);
insert into patient_record values(' Chickenpox',' Fever','gradual improvement, requires rest','5/5/2005','00112220077',11,3,8);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','9/5/2005','00178225477',12,32,8);
insert into patient_record values(' discomfort and fever',' Fever and Stomach Acher','gradual improvement, requires rest','10/4/2010','00112115477',18,26,8);
insert into patient_record values(' Stomach Acher',' Fever','gradual improvement, requires rest','1/8/2008','00112228877',36,42,5);
insert into patient_record values(' Coughinge',' Coughinge','gradual improvement, requires rest','7/25/2008','00112965477',87,52,7);
insert into patient_record values(' Chickenpox',' Fever','gradual improvement, requires rest','10/5/2005','00112225747',18,3,10);
insert into patient_record values(' Runny Nose',' Runny Nose','gradual improvement, requires rest','1/5/2007','00188225477',19,4,6);
insert into patient_record values(' Chickenpox',' Fever','gradual improvement, requires rest','5/5/2005','00112220077',11,3,8);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','9/5/2005','00178225477',12,32,8);
insert into patient_record values(' Coughinge',' Coughinge','gradual improvement, requires rest','9/7/2009','00115525477',87,35,8);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','7/15/2007','00111025477',77,64,2);
insert into patient_record values(' Runny Nose',' Runny Nose','no gradual improvement, requires rest','10/7/2006','00112224477',71,28,9);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/8/2020','001123225477',70,21,1);
insert into patient_record values(' Stomach Ache',' Stomach Ache','gradual improvement, requires rest','5/5/2001','00112785477',10,23,2);
insert into patient_record values(' hypertension	','care, stress management','taking medications, constant appointments','7/13/2011','001859797575',11,15,3);
insert into patient_record values(' hypertension	',' care, stress management','taking medications, constant appointments','8/14/2012','001859775877',12,16,7);
insert into patient_record values(' Stomach Ache',' Stomach Ache','no gradual improvement, requires rest','10/4/2008','00112415477',94,23,6);
insert into patient_record values(' Sneeze',' Fever','gradual improvement, requires rest','10/5/2007','00112287477',17,28,4);
insert into patient_record values(' Sneeze',' Fever','gradual improvement, requires rest','10/8/2001','00112274477',18,23,6);
insert into patient_record values(' discomfort and fever',' Fever','no gradual improvement, requires rest','10/17/2006','00112277477',85,46,2);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/12/2000','00112105477',6,88,2);
insert into patient_record values(' Sore Throat',' Sore Throat','gradual improvement, requires rest','2/5/2017','00112224177',7,15,5);
insert into patient_record values(' discomfort and fever',' Fever','no gradual improvement, requires rest','10/5/2016','00199225477',69,2,5);
insert into patient_record values(' Sore Throat',' Sore Throat','no gradual improvement, requires rest','10/5/2019','00112277477',28,2,4);
insert into patient_record values(' Sore Throat',' Sore Throat','gradual improvement, requires rest','2/5/2017','00112224177',7,15,5);
insert into patient_record values(' discomfort and fever',' Fever','no gradual improvement, requires rest','10/5/2016','00199225477',69,2,5);
insert into patient_record values(' Sore Throat',' Sore Throat','gradual improvement, requires rest','10/5/2019','00112277477',28,2,4);
insert into patient_record values(' Sore Throat',' Sore Throat','gradual improvement, requires rest','10/5/2008','00112287477',74,2,5);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/15/2007','00111125477',40,2,3);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','4/5/2008','00133225477',12,28,9);
insert into patient_record values(' hypertension	',' care, stress management','taking medications, constant appointments','5/11/2009','001887795577',9,13,3);
insert into patient_record values(' hypertension	',' care, stress management','taking medications, constant appointments','6/12/2010','001239795577',10,14,4);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/5/2008','00117725477',96,21,5);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/5/2007','00112225997',95,2,5);
insert into patient_record values(' gastritis	',' correct feeding','constant appointments','10/8/2021','001899961577',21,25,4);
insert into patient_record values(' gastritis	',' correct feeding',' constant appointments','11/9/2020','001840701577',22,26,5);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/25/2000','00113325477',45,8,3);
insert into patient_record values(' Coughinge',' Coughinge','gradual improvement, requires rest','7/1/2010','001122255277',87,25,7);
insert into patient_record values(' Coughinge',' Coughinge','no gradual improvement, requires rest','8/5/2003','00112229977',86,77,7);
insert into patient_record values(' pregnancy',' control vitamins','pending appointment scheduling','11/4/2007','00178415477',19,4,6);
insert into patient_record values(' diabetes	',' good diet and insulin','dont forget pills','2/8/2006','001859795577',5,9,3);
insert into patient_record values(' Chagas disease',' intensive treatment','pending appointment scheduling','10/4/2005','00187715577',15,4,9);
insert into patient_record values(' Runny Nose',' Runny Nose','gradual improvement, requires rest','10/5/2007','00112228877',14,71,9);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','4/5/2008','00133225477',12,28,9);
insert into patient_record values(' epilepsy	',' care and pills','taking medications, constant appointments','12/20/2011','001109791577',15,19,7);
insert into patient_record values(' epilepsy	',' care and pills','taking medications, constant appointments','9/1/2013','001749791577',16,21,8);
insert into patient_record values(' discomfort and fever',' Fever','no gradual improvement, requires rest','10/5/2008','00117725477',96,21,5);
insert into patient_record values(' gastritis	',' correct feeding',' constant appointments','12/5/2020','001890701577',23,27,6);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/5/2007','00112225997',95,2,5);
insert into patient_record values(' gastritis	',' correct feeding',' constant appointments','8/6/2020','001899031577',19,23,2);
insert into patient_record values(' gastritis	',' correct feeding',' constant appointments','9/7/2020','001899781577',20,24,3);
insert into patient_record values(' discomfort and fever',' Fever','no gradual improvement, requires rest','10/15/2007','00111125477',40,2,3);
insert into patient_record values(' depression and anxiety	',' appointment with a psychologist or psychiatrist','pending appointment scheduling','7/12/2021','001668695577',82,8,3);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','4/5/2008','00133225477',12,28,9);
insert into patient_record values(' Cancer',' chemotherapy and protocol','gradual improvement, requires rest','10/5/2007','00112225997',95,2,5);
insert into patient_record values(' virus	','distancing and medication','gradual improvement, requires rest','10/5/2007','00112225997',95,2,5);
insert into patient_record values(' Cancer',' chemotherapy and protocol','no gradual improvement, requires rest','10/15/2007','00111125477',40,2,3);
insert into patient_record values(' Cancer',' Cancer','gradual improvement, requires rest','4/5/2008','00133225477',12,28,9);
insert into patient_record values(' diabetes	',' good diet and insulin','dont forget pills','2/4/2003','001830695577',1,8,9);
insert into patient_record values(' diabetes	',' good diet and insulin','dont forget pills','2/8/2006','001859795577',5,9,3);
insert into patient_record values(' pregnancy',' control vitamins','pending appointment scheduling','10/4/2007','00178415477',19,4,6);
insert into patient_record values(' depression and anxiety	',' appointment with a psychologist or psychiatrist','pending appointment scheduling','7/12/2021','001668695577',82,8,3);
insert into patient_record values(' Chickenpox',' Fever','gradual improvement, requires rest','5/5/2005','00112220077',11,3,8);
insert into patient_record values(' pregnancy',' control vitamins','pending appointment scheduling','10/4/2007','0017875477',19,4,6);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/5/2007','00112200997',95,2,5);
insert into patient_record values(' diabetes	',' good diet and insulin','dont forget pills','8/4/2017','001858995577',3,5,6);
insert into patient_record values(' diabetes	',' good diet and insulin','dont forget pills','2/10/2013','001856695577',20,8,5);
insert into patient_record values(' discomfort and fever',' Fever','no gradual improvement, requires rest','10/5/2008','00118725477',96,21,5);
insert into patient_record values(' virus	','distancing and medication','gradual improvement, requires rest','10/5/2007','00512225997',95,2,5);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','4/15/2007','00133228477',12,28,9);
insert into patient_record values(' broken arm	',' orthopedic appointment','dont forget pills','1/4/2019','001811695577',8,70,3);
insert into patient_record values(' broken arm	',' orthopedic appointment','dont forget pills','2/10/2020','001128695577',18,69,4);
insert into patient_record values(' Coughinge',' Coughinge','gradual improvement, requires rest','7/1/2003','001122277277',87,25,7);
insert into patient_record values(' discomfort and fever',' Fever','gradual improvement, requires rest','10/25/2005','04113325477',45,8,3);
insert into patient_record values(' Sore Throat',' Sore Throat','gradual improvement, requires rest','10/5/2004','00112587477',74,2,5);
insert into patient_record values(' Sneeze',' Fever','gradual improvement, requires rest','10/8/2002','00112279477',18,23,6);
insert into patient_record values(' Runny Nose',' Runny Nose','gradual improvement, requires rest','1/3/2004','00188775477',19,4,6);
insert into patient_record values(' epilepsy	',' care and pills','taking medications, constant appointments','10/15/2014','001779791577',13,17,5);
insert into patient_record values(' epilepsy	',' care and pills','taking medications, constant appointments','11/15/2013','011899791577',14,18,6);
insert into patient_record values(' Runny Nose',' Runny Nose','gradual improvement, requires rest','1/4/2008','00188415477',19,4,6);
insert into patient_record values(' pregnancy',' control vitamins','pending appointment scheduling','10/4/2007','00177715477',19,4,6);
insert into patient_record values(' hypertension	',' care, stress management','taking medications, constant appointments','3/9/2006','0018419795577',7,11,9);
insert into patient_record values(' epilepsy	',' care and pills','taking medications, constant appointments','7/15/2007','003399791577',17,21,9);
insert into patient_record values(' gastritis	',' correct feeding',' constant appointments','7/5/2019','001009701577',18,22,1);
insert into patient_record values(' hypertension	',' care, stress management','taking medications, constant appointments','4/10/2008','001859775577',8,12,9);
insert into patient_record values(' Chagas disease',' intensive treatment','pending appointment scheduling','10/4/2005','00187715477',20,4,8);
insert into patient_record values(' diabetes	',' good diet and insulin','dont forget pills','5/4/2018','001858696677',10,60,1);
insert into patient_record values(' diabetes	',' good diet and insulin','dont forget pills','1/4/2017','001858678577',20,9,8);
insert into patient_record values(' Chagas disease',' intensive treatment','pending appointment scheduling','10/4/2005','00187715577',15,4,9);
insert into patient_record values(' depression and anxiety	',' appointment with a psychologist or psychiatrist','pending appointment scheduling','1/20/2020','001878695577',72,48,3);
insert into patient_record values(' depression and anxiety	',' appointment with a psychologist or psychiatrist','pending appointment scheduling','2/4/2020','001858695577',78,87,3);


--llenando table patiente_record_medicine--

ALTER TABLE patient_record_medicine
DROP COLUMN creation_date

ALTER TABLE patient_record_medicine
DROP COLUMN update_date

INSERT INTO patient_record_medicine VALUES(8,1);
INSERT INTO patient_record_medicine VALUES(41,6);
INSERT INTO patient_record_medicine VALUES(68,6);
INSERT INTO patient_record_medicine VALUES(9,1);
INSERT INTO patient_record_medicine VALUES(21,4);
INSERT INTO patient_record_medicine VALUES(66,8);
INSERT INTO patient_record_medicine VALUES(23,2);
INSERT INTO patient_record_medicine VALUES(60,4);
INSERT INTO patient_record_medicine VALUES(45,4);
INSERT INTO patient_record_medicine VALUES(65,8);
INSERT INTO patient_record_medicine VALUES(26,5);
INSERT INTO patient_record_medicine VALUES(64,7);
INSERT INTO patient_record_medicine VALUES(71,2);
INSERT INTO patient_record_medicine VALUES(34,9);
INSERT INTO patient_record_medicine VALUES(34,2);
INSERT INTO patient_record_medicine VALUES(50,6);
INSERT INTO patient_record_medicine VALUES(69,8);
INSERT INTO patient_record_medicine VALUES(33,8);
INSERT INTO patient_record_medicine VALUES(44,3);
INSERT INTO patient_record_medicine VALUES(40,2);
INSERT INTO patient_record_medicine VALUES(23,4);
INSERT INTO patient_record_medicine VALUES(40,6);
INSERT INTO patient_record_medicine VALUES(21,9);
INSERT INTO patient_record_medicine VALUES(43,3);
INSERT INTO patient_record_medicine VALUES(62,7);
INSERT INTO patient_record_medicine VALUES(48,6);
INSERT INTO patient_record_medicine VALUES(51,9);
INSERT INTO patient_record_medicine VALUES(4,6);
INSERT INTO patient_record_medicine VALUES(14,8);
INSERT INTO patient_record_medicine VALUES(46,7);
INSERT INTO patient_record_medicine VALUES(8,2);
INSERT INTO patient_record_medicine VALUES(41,2);
INSERT INTO patient_record_medicine VALUES(48,3);
INSERT INTO patient_record_medicine VALUES(66,5);
INSERT INTO patient_record_medicine VALUES(49,9);
INSERT INTO patient_record_medicine VALUES(58,4);
INSERT INTO patient_record_medicine VALUES(60,7);
INSERT INTO patient_record_medicine VALUES(40,9);
INSERT INTO patient_record_medicine VALUES(66,3);
INSERT INTO patient_record_medicine VALUES(30,1);
INSERT INTO patient_record_medicine VALUES(44,2);
INSERT INTO patient_record_medicine VALUES(10,7);
INSERT INTO patient_record_medicine VALUES(35,1);
INSERT INTO patient_record_medicine VALUES(63,1);
INSERT INTO patient_record_medicine VALUES(55,8);
INSERT INTO patient_record_medicine VALUES(47,7);
INSERT INTO patient_record_medicine VALUES(46,8);
INSERT INTO patient_record_medicine VALUES(9,2);
INSERT INTO patient_record_medicine VALUES(60,4);
INSERT INTO patient_record_medicine VALUES(70,9);
INSERT INTO patient_record_medicine VALUES(71,1);
INSERT INTO patient_record_medicine VALUES(44,8);
INSERT INTO patient_record_medicine VALUES(69,3);
INSERT INTO patient_record_medicine VALUES(56,1);
INSERT INTO patient_record_medicine VALUES(28,1);
INSERT INTO patient_record_medicine VALUES(55,9);
INSERT INTO patient_record_medicine VALUES(33,5);
INSERT INTO patient_record_medicine VALUES(10,9);
INSERT INTO patient_record_medicine VALUES(72,8);
INSERT INTO patient_record_medicine VALUES(47,5);
INSERT INTO patient_record_medicine VALUES(33,9);
INSERT INTO patient_record_medicine VALUES(55,8);
INSERT INTO patient_record_medicine VALUES(25,1);
INSERT INTO patient_record_medicine VALUES(53,1);
INSERT INTO patient_record_medicine VALUES(41,4);
INSERT INTO patient_record_medicine VALUES(11,5);
INSERT INTO patient_record_medicine VALUES(21,5);
INSERT INTO patient_record_medicine VALUES(8,5);
INSERT INTO patient_record_medicine VALUES(43,3);
INSERT INTO patient_record_medicine VALUES(55,2);
INSERT INTO patient_record_medicine VALUES(25,8);
INSERT INTO patient_record_medicine VALUES(47,7);
INSERT INTO patient_record_medicine VALUES(4,7);
INSERT INTO patient_record_medicine VALUES(21,1);
INSERT INTO patient_record_medicine VALUES(50,2);
INSERT INTO patient_record_medicine VALUES(14,9);
INSERT INTO patient_record_medicine VALUES(56,4);
INSERT INTO patient_record_medicine VALUES(37,1);
INSERT INTO patient_record_medicine VALUES(23,7);
INSERT INTO patient_record_medicine VALUES(38,9);
INSERT INTO patient_record_medicine VALUES(42,7);
INSERT INTO patient_record_medicine VALUES(33,1);
INSERT INTO patient_record_medicine VALUES(68,3);
INSERT INTO patient_record_medicine VALUES(47,9);
INSERT INTO patient_record_medicine VALUES(32,6);
INSERT INTO patient_record_medicine VALUES(24,7);
INSERT INTO patient_record_medicine VALUES(7,5);
INSERT INTO patient_record_medicine VALUES(16,6);
INSERT INTO patient_record_medicine VALUES(18,1);
INSERT INTO patient_record_medicine VALUES(61,6);
INSERT INTO patient_record_medicine VALUES(55,6);
INSERT INTO patient_record_medicine VALUES(25,4);
INSERT INTO patient_record_medicine VALUES(14,2);
INSERT INTO patient_record_medicine VALUES(52,8);
INSERT INTO patient_record_medicine VALUES(69,1);
INSERT INTO patient_record_medicine VALUES(16,8);
INSERT INTO patient_record_medicine VALUES(54,8);
INSERT INTO patient_record_medicine VALUES(44,6);
INSERT INTO patient_record_medicine VALUES(29,6);
INSERT INTO patient_record_medicine VALUES(54,7);
INSERT INTO patient_record_medicine VALUES(55,8);
INSERT INTO patient_record_medicine VALUES(56,9);
INSERT INTO patient_record_medicine VALUES(57,10);
INSERT INTO patient_record_medicine VALUES(58,1);
INSERT INTO patient_record_medicine VALUES(52,8);
INSERT INTO patient_record_medicine VALUES(51,7);

--llenando tabla surgery--
ALTER TABLE surgery
DROP COLUMN creation_date

ALTER TABLE surgery
DROP COLUMN update_date

insert into surgery values('heart surgery','fix heart problems',8000,1)
insert into surgery values('brain surgery','fix brain problems',10000,2)
insert into surgery values('Appendix surgery','remove the appendix',2000,5)
insert into surgery values('orthopedic surgery','fix damaged bone',4000,3)
insert into surgery values('General Surgery','fix livers, etc',3000,4)
insert into surgery values('Eye surgery','fix eye problems',5000,6)
insert into surgery values('pediatric surgery','fix problems in children',3500,7)
insert into surgery values('transplants','place transplant',12000,8)
insert into surgery values('amputation','remove part of the body',8000,9)
insert into surgery values('plastic surgery','detail, remove, fix body parts',8000,10)

--llenando tabla bank--
ALTER TABLE bank
DROP COLUMN creation_date

ALTER TABLE bank
DROP COLUMN update_date


insert into bank values('Capital One');
insert into bank values('The Bank of New York Mellon');
insert into bank values('Bank of America');
insert into bank values('Citigroup');
insert into bank values('U.S. Bancorp');
insert into bank values('Charles Schwab');
insert into bank values('PNC Financial Services');
insert into bank values('M&T Bank');
insert into bank values('Wells Fargo');
insert into bank values('Goldman Sachs');

--llenando tabla card type--
ALTER TABLE card_type
DROP COLUMN creation_date

ALTER TABLE card_type
DROP COLUMN update_date

insert into card_type values('Credit card');
insert into card_type values('Debit card');


--llenando tabla payment type--
ALTER TABLE payment_type
DROP COLUMN creation_date

ALTER TABLE payment_type
DROP COLUMN update_date

insert into payment_type values('Cash payment');
insert into payment_type values('Payment in installments');


--llenando tabla patiente_relationship--

ALTER TABLE patient_relationship
DROP COLUMN creation_date

ALTER TABLE patient_relationship
DROP COLUMN update_date

INSERT INTO patient_relationship VALUES('David','Harrison','5/19/1999','Executive Director',1.52990639434657,2.22054215717155,205.132212258006,'Rosegold',8,'David_Harrison687@brety.org',88);
INSERT INTO patient_relationship VALUES('Taylor','Russel','1/30/1996','Audiologist',1.25676719451173,5.19254820663135,134.972788428875,'Cadet blue',6,'Taylor_Russel9653@hourpy.biz',81);
INSERT INTO patient_relationship VALUES('Liv','Knight','1/16/1983','Auditor',1.35408803478539,3.94343411826689,139.281852137894,'Camel',2,'Liv_Knight1180@vetan.org',48);
INSERT INTO patient_relationship VALUES('Dani','Alexander','11/6/1982','Physician',1.89895967543077,2.70198450316767,43.0011198581202,'White',7,'Dani_Alexander2196@nanoff.biz',11);
INSERT INTO patient_relationship VALUES('Nathan','Goodman','4/7/1994','Paramedic',1.1243895815799,5.35918280033357,105.476107449027,'Lime',9,'Nathan_Goodman539@cispeto.com',81);
INSERT INTO patient_relationship VALUES('Anais','Bailey','7/27/1995','Paramedic',1.66990149206012,1.50791672547716,255.41763530272,'Peach',9,'Anais_Bailey4911@acrit.org',98);
INSERT INTO patient_relationship VALUES('Sonya','Walton','9/2/1973','Global Logistics Supervisor',1.41531652012622,2.98902770596977,135.564590503725,'Azure',1,'Sonya_Walton2702@zorer.org',46);
INSERT INTO patient_relationship VALUES('Liam','Mould','3/1/1978','Treasurer',1.73770628172797,5.55533588144711,140.996656377333,'Azure',5,'Liam_Mould9931@typill.biz',18);
INSERT INTO patient_relationship VALUES('Gemma','Shepherd','5/19/1973','Project Manager',1.67205774736221,2.15304327763293,299.564829350712,'Red',9,'Gemma_Shepherd1529@brety.org',63);
INSERT INTO patient_relationship VALUES('Fiona','Hamilton','5/15/1987','HR Coordinator',1.07869500125698,1.81405454818814,169.145322606967,'Champagne',8,'Fiona_Hamilton8429@mafthy.com',36);
INSERT INTO patient_relationship VALUES('Jack','Tyler','7/16/1994','Software Engineer',1.68220766819185,5.02534583957183,56.1994796801356,'Mauve',8,'Jack_Tyler3252@gompie.com',74);
INSERT INTO patient_relationship VALUES('Percy','Foxley','4/4/1973','Auditor',1.00647987812128,4.45375674797863,200.033118890614,'Gray',1,'Percy_Foxley2246@gmail.com',42);
INSERT INTO patient_relationship VALUES('Ron','Clark','11/19/1973','Physician',1.33624982630659,2.145699107156,284.64900273534,'Capri',2,'Ron_Clark8505@deons.tech',66);
INSERT INTO patient_relationship VALUES('Rosie','Glass','12/2/1973','Stockbroker',1.65833279348832,5.08200926896278,159.697508662333,'Peach',8,'Rosie_Glass7803@brety.org',96);
INSERT INTO patient_relationship VALUES('Chloe','Varley','8/18/1973','Designer',1.89341331654853,3.19623166099015,63.4674142177531,'Apricot',2,'Chloe_Varley2719@elnee.tech',62);
INSERT INTO patient_relationship VALUES('Gemma','Veale','1/21/1978','Bookkeeper',1.74873503113572,2.19908507689791,193.510818406246,' Pink',2,'Gemma_Veale1012@joiniaa.com',33);
INSERT INTO patient_relationship VALUES('Kaylee','Crawford','9/4/1984','Ambulatory Nurse',1.77198589223995,5.32471826873939,58.2569642617632,'Gold',5,'Kaylee_Crawford6030@twipet.com',84);
INSERT INTO patient_relationship VALUES('Peter','Allcott','3/9/1978','Doctor',1.17450037853536,1.32839542549494,270.753781273846,'Lavender',1,'Peter_Allcott915@ubusive.com',33);
INSERT INTO patient_relationship VALUES('Rosalee','Ballard','12/1/1995','Physician',1.25860364714572,4.24324601806851,182.658683511735,'Camel',5,'Rosalee_Ballard5368@twace.org',99);
INSERT INTO patient_relationship VALUES('Daniel','Janes','11/29/1992','Laboratory Technician',1.28973424182727,5.96304869650074,66.3014106127906,'Blue',6,'Daniel_Janes4267@yahoo.com',2);
INSERT INTO patient_relationship VALUES('Owen','Roberts','5/24/1981','Retail Trainee',1.6866962783908,5.67369635061999,281.054038782629,'Red',9,'Owen_Roberts7985@twipet.com',68);
INSERT INTO patient_relationship VALUES('Irene','Pratt','1/31/1999','Call Center Representative',0.907062036081712,5.05752586529475,282.357532201967,'Camel',8,'Irene_Pratt5691@atink.com',28);
INSERT INTO patient_relationship VALUES('Shelby','Plant','3/13/1991','Bookkeeper',1.83697856922493,2.27461092978465,120.008980237417,'Amethyst',9,'Shelby_Plant2974@zorer.org',12);
INSERT INTO patient_relationship VALUES('Cynthia','Coates','2/13/1991','Ambulatory Nurse',1.89496920965378,1.5928714529578,35.1216562428147,'Sepia',7,'Cynthia_Coates6366@twipet.com',40);
INSERT INTO patient_relationship VALUES('Paula','James','6/13/1991','HR Specialist',0.914966342139508,1.7827230341652,125.439103666432,'Capri',6,'Paula_James3235@dionrab.com',84);
INSERT INTO patient_relationship VALUES('Matt','Strong','11/5/1991','Design Engineer',1.54889378689644,3.1702134093131,69.2756055236215,'Blue',7,'Matt_Strong1066@famism.biz',31);
INSERT INTO patient_relationship VALUES('Doug','Vollans','2/2/1991','Laboratory Technician',1.07894504972684,5.01118665794432,262.989954934916,'Dark red',3,'Doug_Vollans8411@bungar.biz',83);
INSERT INTO patient_relationship VALUES('Helen','Alexander','1/20/1992','Cashier',1.68594754952283,2.96093979615762,201.936244110547,'Silver',7,'Helen_Alexander1175@nickia.com',54);
INSERT INTO patient_relationship VALUES('Henry','Connell','11/12/1986','Pharmacist',1.48965701171647,3.15974477080616,271.860697052377,'Dark Red',2,'Henry_Connell9469@womeona.net',35);
INSERT INTO patient_relationship VALUES('Bob','Morley','7/19/1992','Physician',1.49292600936858,3.00120500987452,103.939868994029,'Blue',3,'Bob_Morley9370@dionrab.com',47);
INSERT INTO patient_relationship VALUES('Johnny','John','5/8/1992','Inspector',1.23231879832797,2.36320307402089,122.381788537084,'Cadet blue',1,'Johnny_John8853@vetan.org',95);
INSERT INTO patient_relationship VALUES('Rosa','Irving','2/8/1987','Stockbroker',1.60869112932528,2.77521472693198,48.0971674276968,'Gray',8,'Rosa_Irving5361@deavo.com',15);
INSERT INTO patient_relationship VALUES('Eryn','Powell','11/8/1992','Stockbroker',1.12442338113879,2.02771879361371,84.0744632515472,'Aquamarine',2,'Eryn_Powell9567@infotech44.tech',30);
INSERT INTO patient_relationship VALUES('Rocco','Hamilton','7/2/1983','Audiologist',1.62656941028618,3.53289185163234,127.242101241947,'Black',3,'Rocco_Hamilton3768@famism.biz',13);
INSERT INTO patient_relationship VALUES('Gemma','Jenkins','9/10/1995','Executive Director',1.71726138192101,2.34881742687375,134.750794747728,'Dark red',6,'Gemma_Jenkins5383@supunk.biz',22);
INSERT INTO patient_relationship VALUES('Jessica','John','12/17/1975','Front Desk Coordinator',1.75718869550954,2.42904254953798,296.64916626953,'marine',1,'Jessica_John4523@grannar.com',28);
INSERT INTO patient_relationship VALUES('Chester','Grey','11/18/1983','Health Educator',1.1318571862913,3.95459887848916,69.0921956575905,'Lavender',4,'Chester_Grey2992@iatim.tech',48);
INSERT INTO patient_relationship VALUES('Percy','Quinn','9/23/1983','Production Painter',1.71265960299068,5.10904830513012,81.7611818764178,'Cerise',6,'Percy_Quinn5634@gompie.com',98);
INSERT INTO patient_relationship VALUES('Mason','Michael','1/28/1992','Mobile Developer',1.80616503865745,2.02300622594683,70.7178738837679,'Mauve',2,'Mason_Michael3814@fuliss.net',82);
INSERT INTO patient_relationship VALUES('Lauren','Brock','5/23/1978','Systems Administrator',1.70235159620752,3.46987244043028,227.387937664235,'Sepia',9,'Lauren_Brock1439@yahoo.com',94);
INSERT INTO patient_relationship VALUES('Carter','Cobb','3/2/1975','Bookkeeper',1.19139597913781,5.70225710733899,223.250738350326,'Turquoise',9,'Carter_Cobb5993@typill.biz',87);
INSERT INTO patient_relationship VALUES('Jackeline','Emmott','3/31/1975','Biologist',1.31419897853127,4.03417087767002,237.575945478201,'Purple',9,'Jackeline_Emmott6793@typill.biz',63);
INSERT INTO patient_relationship VALUES('Hank','Rivers','7/18/1975','Physician',1.7268991051367,2.95366516055244,222.920166293122,'Pink',1,'Hank_Rivers7021@iatim.tech',56);
INSERT INTO patient_relationship VALUES('Harry','Rossi','9/12/1998','Cashier',1.3541332663289,2.1202489901894,198.172717348753,'Magenta',2,'Harry_Rossi3944@guentu.biz',50);
INSERT INTO patient_relationship VALUES('Penelope','Glass','9/8/1978','Inspector',0.986382841265939,3.80800990378857,296.537244700146,'Capri',2,'Penelope_Glass3642@sheye.org',1);
INSERT INTO patient_relationship VALUES('Sofie','Reading','10/3/1991','Budget Analyst',1.19432865571898,4.18220242633587,123.299316142359,'Gold',6,'Sofie_Reading9060@qater.org',63);
INSERT INTO patient_relationship VALUES('Leanne','Allcott','6/29/1974','Steward',1.6859256732212,1.63833850512204,177.070041171773,'Salmon',6,'Leanne_Allcott635@hourpy.biz',32);
INSERT INTO patient_relationship VALUES('George','Dwyer','1/3/1993','Auditor',1.05911233898211,3.41431956059035,189.864526894812,'Emerald',7,'George_Dwyer7704@bretoux.com',50);
INSERT INTO patient_relationship VALUES('Owen','Dickson','3/5/1976','Budget Analyst',0.919522374504955,1.5484195046818,297.939317483427,'Peach',6,'Owen_Dickson4051@nanoff.biz',37);
INSERT INTO patient_relationship VALUES('Harriet','Reid','6/11/1997','Investment  Advisor',1.4255752967324,4.87035800696833,215.042050279231,'Brown',8,'Harriet_Reid5935@nickia.com',6);
INSERT INTO patient_relationship VALUES('Raquel','Seymour','1/24/1978','Baker',1.12071011095341,1.9717793310861,247.237839775736,'White',6,'Raquel_Seymour1772@hourpy.biz',45);
INSERT INTO patient_relationship VALUES('Faith','Quinton','5/16/1978','Front Desk Coordinator',1.46542970732107,3.02868361819009,242.850875857217,'Maroon',9,'Faith_Quinton1322@womeona.net',24);
INSERT INTO patient_relationship VALUES('Luke','Roberts','6/24/1977','CNC Operator',1.8365708743858,2.97705719292958,286.312536314741,'Red',1,'Luke_Roberts6265@deavo.com',18);
INSERT INTO patient_relationship VALUES('Harvey','Overson','2/4/1978','Banker',1.87363259362692,3.5366033695343,58.5551362845838,'Fuchsia',9,'Harvey_Overson2862@famism.biz',47);
INSERT INTO patient_relationship VALUES('Caleb','Upsdell','10/24/1977','Baker',0.95050328096864,3.98896057204761,273.225991687843,'Olive',5,'Caleb_Upsdell7319@sveldo.biz',6);
INSERT INTO patient_relationship VALUES('Bryce','Cavanagh','4/11/1977','Audiologist',1.78648260938306,1.51091702771881,181.74579313339,'Purple',3,'Bryce_Cavanagh9357@extex.org',23);
INSERT INTO patient_relationship VALUES('Daphne','Robertson','7/18/1991','Service Supervisor',1.42546151519076,4.7991164642382,209.580507680578,'Lavender',9,'Daphne_Robertson1974@atink.com',15);
INSERT INTO patient_relationship VALUES('Domenic','Ogilvy','6/25/1991','Restaurant Manager',1.03207902858596,3.24713186698367,76.4536834957328,'Amethyst',9,'Domenic_Ogilvy9877@corti.com',52);
INSERT INTO patient_relationship VALUES('Blake','Stewart','4/14/1988','Investment  Advisor',1.17382429236259,4.94181862610477,185.427606293199,'Pink',2,'Blake_Stewart2741@dionrab.com',13);
INSERT INTO patient_relationship VALUES('Hayden','Jones','3/22/1974','Accountant',1.30606982605814,1.16842568068226,260.700967267948,'Green',9,'Hayden_Jones495@twipet.com',83);
INSERT INTO patient_relationship VALUES('Sofie','Skinner','10/11/1992','Mobile Developer',1.4953705048167,4.13440566097126,268.542005985296,'Black',8,'Sofie_Skinner558@yahoo.com',64);
INSERT INTO patient_relationship VALUES('Leanne','Harrington','2/24/1988','Physician',1.11744163717024,4.63231849653289,52.3801481339057,'Yellow',7,'Leanne_Harrington631@qater.org',8);
INSERT INTO patient_relationship VALUES('Johnny','Farrow','3/21/1988','Project Manager',1.76181000287729,3.29961975258757,160.471264346722,'White',9,'Johnny_Farrow8180@fuliss.net',54);
INSERT INTO patient_relationship VALUES('Livia','Thomson','6/9/1988','Food Technologist',1.18541523138313,3.45908822745974,48.1876059096249,'Gray',1,'Livia_Thomson8977@vetan.org',23);
INSERT INTO patient_relationship VALUES('Sienna','Hewitt','3/20/1985','Software Engineer',1.08707837638775,4.76520895248522,74.0696182730932,'White',9,'Sienna_Hewitt6464@bungar.biz',61);
INSERT INTO patient_relationship VALUES('Danielle','Bloom','9/11/1988','Machine Operator',1.32160248729475,4.80609950134815,182.562459946406,'Olive',3,'Danielle_Bloom9250@twace.org',24);
INSERT INTO patient_relationship VALUES('Chuck','Webster','5/10/1985','Inspector',1.39177767452401,2.60073436079581,254.767177067123,'Sky blue',9,'Chuck_Webster4550@elnee.tech',30);
INSERT INTO patient_relationship VALUES('Rosie','Hunt','5/27/1980','Electrician',1.71484446014038,2.63318008400182,79.4710347952652,'Sepia',3,'Rosie_Hunt5004@guentu.biz',95);
INSERT INTO patient_relationship VALUES('Owen','Eaton','11/28/1985','Web Developer',1.38270489717028,1.98486153641011,147.288599757612,'Mauve',8,'Owen_Eaton3233@atink.com',31);
INSERT INTO patient_relationship VALUES('Nicholas','King','12/31/1987','Loan Officer',1.8163253642229,3.35919365117289,116.913463037421,'Blue',8,'Nicholas_King6045@liret.org',42);
INSERT INTO patient_relationship VALUES('Hazel','Lakey','11/19/1990','Clerk',0.955847227599401,4.35635700465942,288.290493314755,'Gold',2,'Hazel_Lakey5603@zorer.org',77);
INSERT INTO patient_relationship VALUES('Gwen','Talbot','8/22/1985','Retail Trainee',1.11767663686428,2.5192612588961,293.369022418917,'Gray',3,'Gwen_Talbot6158@zorer.org',31);
INSERT INTO patient_relationship VALUES('Remy','Purvis','9/13/1983','Audiologist',1.05734875442337,2.19711161926254,54.5606238267201,'Lime',4,'Remy_Purvis2180@jiman.org',83);
INSERT INTO patient_relationship VALUES('Sara','Price','7/27/1996','Stockbroker',0.910429614228397,3.44729034763169,32.0927374000162,'Capri',5,'Sara_Price2722@nickia.com',80);
INSERT INTO patient_relationship VALUES('Josh','Brett','4/20/1985','Dentist',0.984286737295001,4.69986854293378,222.558845364749,'Black',1,'Josh_Brett7597@vetan.org',80);
INSERT INTO patient_relationship VALUES('Deborah','Stewart','3/15/1983','Biologist',1.22055920796495,3.87781724188375,261.734925323043,'Emerald',7,'Deborah_Stewart4770@infotech44.tech',41);
INSERT INTO patient_relationship VALUES('George','James','11/18/1983','Software Engineer',1.4631678805515,2.70850701663108,80.1351777357679,'Gold',1,'George_James234@womeona.net',65);
INSERT INTO patient_relationship VALUES('Eileen','Turner','1/15/1983','HR Specialist',1.6886841845646,5.62483799998874,123.309125579572,'Amethyst',1,'Eileen_Turner3121@muall.tech',73);
INSERT INTO patient_relationship VALUES('Julian','Squire','10/3/1975','Stockbroker',1.80134347784395,3.08245433870817,41.5211901126994,'Black',8,'Julian_Squire5482@infotech44.tech',64);
INSERT INTO patient_relationship VALUES('Cassandra','Ventura','3/9/1983','Production Painter',1.68359765269961,4.43651632519277,79.5796252403313,'Sienna',2,'Cassandra_Ventura840@deons.tech',65);
INSERT INTO patient_relationship VALUES('Adina','Howard','9/5/1990','Clerk',1.26571413388742,1.01462683641102,200.220588345183,'Turquoise',9,'Adina_Howard1261@deavo.com',18);
INSERT INTO patient_relationship VALUES('Hayden','Powell','7/13/1988','Pharmacist',1.23810740864748,3.54681700493527,263.973197028494,'Turquoise',5,'Hayden_Powell7107@gompie.com',80);
INSERT INTO patient_relationship VALUES('Callie','Richards','6/2/1990','Systems Administrator',1.21960956767183,2.14118604601416,191.45336798134,'Black',3,'Callie_Richards35@elnee.tech',83);
INSERT INTO patient_relationship VALUES('Robyn','Porter','6/10/1990','Banker',1.17266331635074,1.73689827357274,232.235315158141,'Rosegold',7,'Robyn_Porter9982@joiniaa.com',86);
INSERT INTO patient_relationship VALUES('Tiffany','Craig','6/17/1990','Treasurer',1.63818345588547,1.23618169558988,137.886266782361,'Aqua',3,'Tiffany_Craig5342@sheye.org',2);
INSERT INTO patient_relationship VALUES('Ellen','Connor','2/20/1984','Retail Trainee',1.80833992879295,4.99594465689545,109.653674796062,'Aqua',6,'Ellen_Connor1947@deons.tech',13);
INSERT INTO patient_relationship VALUES('Josh','Skinner','6/8/1984','Banker',0.974025686399092,3.12710041838097,219.699926762702,'Emerald',6,'Josh_Skinner3761@qater.org',45);
INSERT INTO patient_relationship VALUES('Lara','Heaton','3/30/1990','Health Educator',1.89472265131526,3.07128946765852,164.261895235284,'Gold',3,'Lara_Heaton5548@brety.org',29);
INSERT INTO patient_relationship VALUES('Tyler','Blythe','4/19/1984','Dentist',1.72084997735026,2.69869595286376,217.50007967907,'Rosewood',3,'Tyler_Blythe96@naiker.biz',28);
INSERT INTO patient_relationship VALUES('Cristal','Lloyd','11/18/1977','Budget Analyst',1.26009037045766,1.93694835851758,54.5615308780975,'Red',4,'Cristal_Lloyd166@twipet.com',51);
INSERT INTO patient_relationship VALUES('Samara','Lambert','11/18/1977','Restaurant Manager',1.20767938369311,3.3699076168099,36.1282026903369,'Cyan',7,'Samara_Lambert2203@gembat.biz',98);
INSERT INTO patient_relationship VALUES('Enoch','Ellis','4/11/1977','CNC Operator',1.01239409265686,4.28592716263883,130.105937450242,'Lime',9,'Enoch_Ellis5521@hourpy.biz',62);
INSERT INTO patient_relationship VALUES('William','Mason','2/6/1991','Designer',1.26345918586639,1.3606553959477,158.707557122087,'Turquoise',7,'William_Mason4184@cispeto.com',58);
INSERT INTO patient_relationship VALUES('Maggie','Wilkinson','11/3/1977','Business Broker',1.35761617992894,3.51136505906999,76.7417205249619,'Orange',4,'Maggie_Wilkinson7380@grannar.com',69);
INSERT INTO patient_relationship VALUES('Madison','Dixon','5/10/1992','Doctor',1.75215713589087,3.50300991465478,258.863297458674,'Magenta',3,'Madison_Dixon848@typill.biz',77);
INSERT INTO patient_relationship VALUES('Zara','Knight','9/15/1991','Associate Professor',1.55115820274277,5.76654608024589,129.212425283721,'Black',8,'Zara_Knight4458@ovock.tech',31);
INSERT INTO patient_relationship VALUES('Benny','Spencer','3/23/1988','Machine Operator',1.31806519423521,3.32598657455574,209.06132888238,'Magenta',2,'Benny_Spencer921@corti.com',49);
INSERT INTO patient_relationship VALUES('Teagan','Kennedy','9/19/1974','Physician',1.42517605178299,1.60056325402137,273.836631636525,'Fuchsia',4,'Teagan_Kennedy5317@bungar.biz',23);
INSERT INTO patient_relationship VALUES('Ryan','Larsen','7/24/1974','Doctor',1.85338247248595,3.12184164213102,134.257212423374,'Cerise',6,'Ryan_Larsen6466@mafthy.com',2);
INSERT INTO patient_relationship VALUES('Paige','Morrow','8/17/1979','Food Technologist',1.45330284384699,2.95824861990206,142.132608250777,'Cyan',7,'Paige_Morrow8344@brety.org',59);

--llenando tabla patient_record_surgery--
ALTER TABLE patient_record_surgery
DROP COLUMN creation_date

ALTER TABLE patient_record_surgery
DROP COLUMN update_date

INSERT INTO patient_record_surgery VALUES(61,5,'1/18/1999',46);
INSERT INTO patient_record_surgery VALUES(17,6,'10/24/2004',34);
INSERT INTO patient_record_surgery VALUES(4,2,'4/27/2010',61);
INSERT INTO patient_record_surgery VALUES(4,4,'10/28/2001',1);
INSERT INTO patient_record_surgery VALUES(9,5,'1/3/2004',24);
INSERT INTO patient_record_surgery VALUES(42,4,'2/8/2019',27);
INSERT INTO patient_record_surgery VALUES(75,9,'2/20/2016',1);
INSERT INTO patient_record_surgery VALUES(47,4,'8/22/2006',76);
INSERT INTO patient_record_surgery VALUES(83,6,'9/2/2003',62);
INSERT INTO patient_record_surgery VALUES(55,9,'2/5/2002',29);
INSERT INTO patient_record_surgery VALUES(58,6,'2/28/2015',48);
INSERT INTO patient_record_surgery VALUES(9,1,'9/9/2006',13);
INSERT INTO patient_record_surgery VALUES(15,4,'7/21/2003',30);
INSERT INTO patient_record_surgery VALUES(13,6,'12/27/2010',78);
INSERT INTO patient_record_surgery VALUES(29,8,'5/18/2004',52);
INSERT INTO patient_record_surgery VALUES(11,5,'10/12/2013',2);
INSERT INTO patient_record_surgery VALUES(22,5,'4/7/2015',38);
INSERT INTO patient_record_surgery VALUES(10,4,'11/8/2001',23);
INSERT INTO patient_record_surgery VALUES(50,2,'5/25/2010',44);
INSERT INTO patient_record_surgery VALUES(73,6,'6/26/2006',69);
INSERT INTO patient_record_surgery VALUES(87,2,'8/16/2018',64);
INSERT INTO patient_record_surgery VALUES(19,5,'12/30/2014',62);
INSERT INTO patient_record_surgery VALUES(92,1,'8/24/2011',24);
INSERT INTO patient_record_surgery VALUES(15,1,'7/28/2011',77);
INSERT INTO patient_record_surgery VALUES(22,2,'7/22/2011',2);
INSERT INTO patient_record_surgery VALUES(70,6,'7/29/2020',61);
INSERT INTO patient_record_surgery VALUES(85,4,'9/24/2007',26);
INSERT INTO patient_record_surgery VALUES(57,1,'9/27/2017',36);
INSERT INTO patient_record_surgery VALUES(27,3,'2/6/2010',25);
INSERT INTO patient_record_surgery VALUES(11,9,'7/4/2013',41);
INSERT INTO patient_record_surgery VALUES(42,5,'2/18/2017',42);
INSERT INTO patient_record_surgery VALUES(51,1,'8/29/2004',63);
INSERT INTO patient_record_surgery VALUES(79,8,'10/7/2013',8);
INSERT INTO patient_record_surgery VALUES(73,1,'5/21/2008',12);
INSERT INTO patient_record_surgery VALUES(10,2,'3/13/2003',44);
INSERT INTO patient_record_surgery VALUES(26,9,'6/14/2014',26);
INSERT INTO patient_record_surgery VALUES(57,9,'8/26/2007',34);
INSERT INTO patient_record_surgery VALUES(70,4,'5/10/2000',22);
INSERT INTO patient_record_surgery VALUES(30,8,'7/13/2019',53);
INSERT INTO patient_record_surgery VALUES(53,9,'9/28/2004',12);
INSERT INTO patient_record_surgery VALUES(67,1,'12/25/2002',42);
INSERT INTO patient_record_surgery VALUES(88,6,'3/1/2021',40);
INSERT INTO patient_record_surgery VALUES(46,2,'5/20/2017',30);
INSERT INTO patient_record_surgery VALUES(23,8,'12/21/2019',41);
INSERT INTO patient_record_surgery VALUES(4,7,'11/23/2005',19);
INSERT INTO patient_record_surgery VALUES(23,4,'12/21/1999',39);
INSERT INTO patient_record_surgery VALUES(21,4,'7/8/2017',73);
INSERT INTO patient_record_surgery VALUES(73,2,'3/1/2018',37);
INSERT INTO patient_record_surgery VALUES(80,1,'10/18/2013',23);
INSERT INTO patient_record_surgery VALUES(24,7,'11/15/2009',27);
INSERT INTO patient_record_surgery VALUES(27,8,'10/8/2003',55);
INSERT INTO patient_record_surgery VALUES(42,7,'6/7/1998',45);
INSERT INTO patient_record_surgery VALUES(27,5,'7/31/2009',55);
INSERT INTO patient_record_surgery VALUES(9,1,'6/4/2011',45);
INSERT INTO patient_record_surgery VALUES(10,7,'5/8/2010',30);
INSERT INTO patient_record_surgery VALUES(40,9,'10/11/2021',9);
INSERT INTO patient_record_surgery VALUES(4,9,'8/6/2003',28);
INSERT INTO patient_record_surgery VALUES(47,2,'9/28/2012',2);
INSERT INTO patient_record_surgery VALUES(42,5,'3/24/2001',45);
INSERT INTO patient_record_surgery VALUES(72,8,'4/2/2001',25);
INSERT INTO patient_record_surgery VALUES(27,8,'6/14/2016',70);
INSERT INTO patient_record_surgery VALUES(11,4,'2/28/1999',15);
INSERT INTO patient_record_surgery VALUES(10,3,'2/19/2011',17);
INSERT INTO patient_record_surgery VALUES(97,7,'2/12/2020',55);
INSERT INTO patient_record_surgery VALUES(40,2,'2/13/2004',62);
INSERT INTO patient_record_surgery VALUES(82,1,'4/17/2019',66);
INSERT INTO patient_record_surgery VALUES(7,8,'12/22/2003',77);
INSERT INTO patient_record_surgery VALUES(24,3,'4/28/2006',26);
INSERT INTO patient_record_surgery VALUES(86,1,'12/3/2012',65);
INSERT INTO patient_record_surgery VALUES(28,9,'7/10/2005',11);
INSERT INTO patient_record_surgery VALUES(84,5,'7/23/1998',15);
INSERT INTO patient_record_surgery VALUES(42,3,'7/5/2016',13);
INSERT INTO patient_record_surgery VALUES(46,7,'9/14/2013',42);
INSERT INTO patient_record_surgery VALUES(28,1,'5/27/1999',58);
INSERT INTO patient_record_surgery VALUES(13,3,'2/22/2020',18);
INSERT INTO patient_record_surgery VALUES(95,3,'7/3/2017',3);
INSERT INTO patient_record_surgery VALUES(2,1,'10/7/2021',50);
INSERT INTO patient_record_surgery VALUES(50,8,'1/7/2017',66);
INSERT INTO patient_record_surgery VALUES(7,9,'7/19/2007',38);
INSERT INTO patient_record_surgery VALUES(3,1,'2/17/1999',45);
INSERT INTO patient_record_surgery VALUES(90,2,'12/28/2010',16);
INSERT INTO patient_record_surgery VALUES(37,5,'4/25/2018',43);
INSERT INTO patient_record_surgery VALUES(27,1,'2/13/2005',79);
INSERT INTO patient_record_surgery VALUES(32,1,'2/15/2020',40);
INSERT INTO patient_record_surgery VALUES(55,1,'7/24/2008',12);
INSERT INTO patient_record_surgery VALUES(85,9,'10/11/2008',8);
INSERT INTO patient_record_surgery VALUES(38,5,'11/21/2014',52);
INSERT INTO patient_record_surgery VALUES(62,8,'2/15/2001',26);
INSERT INTO patient_record_surgery VALUES(63,9,'12/30/2015',50);
INSERT INTO patient_record_surgery VALUES(13,5,'5/15/2019',66);
INSERT INTO patient_record_surgery VALUES(14,4,'8/24/1999',13);
INSERT INTO patient_record_surgery VALUES(62,2,'9/25/2021',69);
INSERT INTO patient_record_surgery VALUES(36,6,'10/26/2019',61);
INSERT INTO patient_record_surgery VALUES(95,8,'7/15/2013',25);
INSERT INTO patient_record_surgery VALUES(11,1,'12/5/2009',70);
INSERT INTO patient_record_surgery VALUES(8,5,'4/26/2010',57);
INSERT INTO patient_record_surgery VALUES(98,2,'12/20/2007',68);
INSERT INTO patient_record_surgery VALUES(10,5,'10/12/2013',30);
INSERT INTO patient_record_surgery VALUES(95,1,'6/20/2011',66);
INSERT INTO patient_record_surgery VALUES(56,4,'9/7/2003',71);


--llenando tabla payment_card--
ALTER TABLE payment_card
DROP COLUMN creation_date

ALTER TABLE payment_card
DROP COLUMN update_date

insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Benoite Sives', '402-611-8962', '12/31/2017', 2, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Biddie Hindmoor', '486-862-0651', '12/20/2005', 2, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Deana Foxcroft', '430-923-6103', '7/24/2014', 10, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Rolf Sutor', '972-607-8089', '4/29/2001', 10, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Erin Boog', '302-573-6888', '7/30/2005', 1, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Mendel Nineham', '334-790-0531', '8/17/2005', 3, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Thane Bark', '510-703-1182', '11/11/2009', 9, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Ernestus Wheildon', '649-802-6732', '7/3/2002', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Carma Salmoni', '117-355-6471', '3/3/2012', 9, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Owen Isson', '948-748-7724', '5/9/2001', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Milzie Hargie', '785-756-0462', '8/14/2015', 4, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Ardath Lightollers', '951-256-3528', '4/16/2014', 5, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Sylvester Bollam', '250-647-6321', '5/8/2004', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Fanchette Leacy', '978-599-3212', '2/15/2011', 6, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Toiboid Heindrick', '515-922-4998', '12/9/2017', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Ernst Prebble', '221-380-8130', '7/8/2018', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Kiah Ivanonko', '755-293-6219', '5/2/2002', 5, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Lusa McGuckin', '876-282-8328', '8/11/2016', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Adi Shurman', '699-283-6555', '7/31/2021', 2, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Leoine Broadbent', '159-326-5782', '6/20/2001', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Othelia Rivelon', '558-387-0019', '10/1/2002', 1, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Susie McDonough', '836-650-3689', '1/16/2020', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Rudolfo Hullbrook', '266-347-9127', '6/8/2006', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Bondie Drynan', '143-987-3951', '12/17/2017', 4, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Clarinda Maybey', '404-592-3638', '12/21/2004', 5, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Barbabas Chappell', '927-423-6010', '6/12/2000', 9, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Maiga Baythrop', '294-695-8717', '8/12/2005', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Cherilyn Shacklady', '542-450-7091', '7/3/2020', 4, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Sissy Wickson', '149-748-7727', '6/21/2002', 9, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Terrell Aishford', '588-265-0974', '11/17/2006', 6, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Gunilla Klimp', '775-447-7687', '10/22/2008', 8, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Paco Acutt', '298-267-3734', '12/9/2004', 4, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Rolph Drane', '842-284-6699', '9/29/2016', 3, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Mohandas Stores', '622-813-2857', '2/4/2019', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Nolly Lippitt', '761-958-7390', '2/7/2016', 6, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Golda Drakeford', '766-779-8543', '10/28/2006', 5, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Silvain Rubinlicht', '970-903-9508', '2/4/2000', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Tish Tuite', '175-161-2002', '3/7/2009', 8, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Pattin Cejka', '482-335-2827', '8/19/2016', 2, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Sabra Pindar', '291-126-9442', '1/30/2006', 3, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Claybourne Norcop', '269-741-2437', '6/18/2007', 7, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Mar Keasey', '257-536-9915', '12/5/2016', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Padriac Ewence', '316-645-5439', '7/26/2017', 7, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Joni Houdmont', '912-605-7352', '11/16/2012', 3, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Marlin Dysert', '777-183-0369', '11/16/2007', 6, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Sofia Nichol', '807-272-5395', '10/24/2005', 7, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Lottie Longworthy', '474-944-3526', '8/19/2015', 2, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Gilburt Kettlesing', '488-271-3076', '4/4/2019', 6, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Arluene Coster', '120-236-5537', '7/3/2017', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Gwenni Charlson', '883-789-6122', '6/25/2014', 2, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Ivor Castanho', '859-968-5507', '11/16/2020', 4, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Iseabal Allmond', '123-341-1988', '9/9/2015', 6, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Rosemary Inglefield', '397-657-5562', '9/20/2010', 9, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Ivan Anyene', '380-990-0196', '6/1/2004', 2, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Flynn Fulks', '801-157-2800', '2/2/2001', 5, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Elisha McCullough', '530-717-9608', '5/12/2018', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Alex Skinn', '292-868-0589', '5/4/2001', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Lewiss Stygall', '280-504-8512', '1/31/2002', 6, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Tabor Kase', '837-524-4812', '10/24/2009', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Antonietta Bille', '189-771-0300', '3/25/2006', 6, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Roger Jankovsky', '432-392-1880', '4/27/2020', 10, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Theo Aldwich', '851-427-1488', '12/28/2012', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Coletta Bewshaw', '361-323-8705', '1/6/2010', 1, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Yves Grzelak', '360-192-0687', '3/16/2005', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Wright Farrell', '807-158-6907', '3/24/2004', 6, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Jolie McEntagart', '636-242-8448', '3/15/2015', 1, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Titos Vanyukhin', '164-461-8005', '6/15/2013', 6, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Lonnie Thorneywork', '681-514-2504', '9/5/2012', 10, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Chantal Stent', '446-854-7410', '10/29/2016', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Katleen Troyes', '914-269-5808', '8/17/2018', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Bondie Surfleet', '933-332-3492', '3/29/2019', 4, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Jaymee Hebblethwaite', '208-112-4070', '11/4/2013', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Dom Solleme', '286-377-8967', '7/20/2004', 1, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Yolanda Moraleda', '194-169-1477', '2/15/2006', 5, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Adamo Thayre', '922-759-5675', '9/21/2004', 10, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Aime Gitting', '880-696-4181', '9/30/2005', 4, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Quintana Cherrington', '841-369-8986', '2/18/2000', 1, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Ami Jackett', '675-419-0159', '5/19/2021', 9, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Raynor Duigenan', '439-558-2355', '12/21/2019', 2, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Haley Tourmell', '825-668-0669', '5/3/2018', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Gabriele Debold', '246-704-3789', '6/18/2014', 6, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Alwin Gascar', '330-265-3686', '9/27/2001', 9, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Kalvin Axtonne', '938-498-6632', '5/19/2016', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Marilee Duchan', '115-639-9805', '4/22/2017', 10, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Carla Eyes', '892-209-9692', '8/10/2012', 10, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Gavrielle Beining', '812-848-4842', '12/6/2020', 7, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Eveline Tift', '245-108-3254', '4/5/2005', 6, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Scotti McCroft', '888-594-4743', '11/23/2019', 3, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Salvador Tapsfield', '553-975-2527', '3/28/2010', 8, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Betta Learoyd', '728-850-4364', '12/12/2016', 8, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Annadiane Sallis', '395-780-0485', '11/13/2007', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Farand Bhar', '600-301-5122', '3/2/2001', 3, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Gerhardine Bernardo', '311-900-5534', '3/4/2003', 1, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Ailsun Chant', '323-650-6110', '5/2/2003', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Antonina Scocroft', '595-379-2902', '8/8/2003', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Heloise Goodbur', '599-922-9036', '5/22/2017', 5, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Wylma Bilton', '936-869-0702', '6/26/2002', 9, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Orren Bockman', '853-547-7670', '10/23/2015', 4, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Allin Geldeard', '155-271-9993', '4/21/2012', 6, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Bear Hellen', '873-514-4917', '7/30/2006', 8, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Della Cockett', '925-691-7522', '4/15/2009', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Burke Stefi', '207-453-6119', '6/30/2010', 9, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Suzanne Pealing', '946-774-8556', '8/14/2017', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Padriac Steadman', '926-335-0154', '3/10/2005', 6, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Temp Brockley', '963-904-2779', '1/29/2000', 7, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Kathye Sevin', '832-919-5000', '10/30/2000', 5, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('May Crichmer', '808-364-7488', '1/1/2018', 7, 1);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Judi Kment', '759-290-2336', '7/18/2018', 1, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Helene MacAllaster', '388-624-8428', '12/13/2009', 4, 2);
insert into payment_card (owner, number, expiration, id_bank, id_card_type) values ('Gustave Chiplen', '707-801-6285', '9/27/2000', 5, 1);



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

SELECT * FROM room;
SELECT * FROM room_type;
SELECT * FROM surgery;
SELECT * FROM pharmacy_medicine;
ALTER TABLE surgery DROP COLUMN update_date;		


INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(332,'2021-10-02 16:56:26',8,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(764,'2021-10-07 11:05:14',4,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(370,'2021-10-15 09:00:15',4,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(470,'2021-10-14 09:18:21',2,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(498,'2021-10-04 16:20:35',3,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(166,'2021-10-12 17:57:03',8,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(381,'2021-10-11 17:29:08',9,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(162,'2021-10-01 21:20:26',5,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(365,'2021-10-07 14:05:36',2,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(212,'2021-10-15 17:38:04',6,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(234,'2021-10-13 00:12:32',1,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(208,'2021-10-12 18:12:16',1,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(211,'2021-10-15 22:09:46',3,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(308,'2021-10-03 20:25:38',2,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(789,'2021-10-18 19:04:16',4,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(399,'2021-10-17 03:53:24',7,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(703,'2021-10-15 20:20:09',9,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(50,'2021-10-14 11:16:19',4,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(581,'2021-10-03 17:52:55',9,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(685,'2021-10-18 03:00:39',4,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(880,'2021-10-16 05:21:32',6,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(327,'2021-10-18 02:28:13',2,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(262,'2021-10-07 18:55:54',1,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(762,'2021-10-07 00:27:49',8,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(867,'2021-10-14 07:28:29',2,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(909,'2021-10-05 20:46:47',4,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(200,'2021-10-13 09:41:43',6,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(620,'2021-10-07 01:44:25',9,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(514,'2021-10-05 20:41:49',6,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(295,'2021-10-14 22:43:57',6,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(167,'2021-10-16 03:07:39',5,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(705,'2021-10-11 17:06:09',6,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(421,'2021-10-06 16:04:12',1,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(984,'2021-10-01 01:56:45',8,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(928,'2021-10-08 22:44:56',2,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(496,'2021-10-17 14:44:26',5,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(674,'2021-10-03 13:39:58',2,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(496,'2021-10-05 15:45:38',9,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(871,'2021-10-02 03:52:41',7,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(221,'2021-10-15 07:12:26',8,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(416,'2021-10-02 07:44:27',6,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(887,'2021-10-09 06:45:39',1,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(198,'2021-10-06 22:18:13',4,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(824,'2021-10-09 19:44:49',1,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(376,'2021-10-05 10:32:22',9,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(198,'2021-10-07 00:10:16',8,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(630,'2021-10-16 02:02:38',3,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(500,'2021-10-07 20:13:26',3,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(651,'2021-10-09 00:37:34',8,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(247,'2021-10-15 05:16:05',4,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(964,'2021-10-18 03:55:30',6,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(602,'2021-10-14 16:10:42',5,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(915,'2021-10-11 07:55:37',5,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(910,'2021-10-01 12:41:56',5,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(125,'2021-10-16 17:33:55',1,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(416,'2021-10-14 06:54:40',4,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(716,'2021-10-06 10:50:23',7,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(275,'2021-10-17 07:26:50',5,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(953,'2021-10-11 05:32:10',8,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(864,'2021-10-18 13:45:25',4,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(816,'2021-10-01 00:55:08',5,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(732,'2021-10-02 19:33:45',1,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(975,'2021-10-08 02:05:32',5,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(216,'2021-10-02 08:30:33',5,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(382,'2021-10-16 01:57:18',7,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(891,'2021-10-06 11:41:00',8,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(515,'2021-10-07 22:23:40',6,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(548,'2021-10-09 15:51:53',1,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(964,'2021-10-12 09:34:54',4,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(294,'2021-10-14 13:27:19',4,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(146,'2021-10-11 08:32:35',2,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(695,'2021-10-07 02:51:52',9,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(381,'2021-10-07 02:24:40',8,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(684,'2021-10-02 02:04:29',8,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(641,'2021-10-08 21:21:14',8,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(901,'2021-10-06 07:17:52',9,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(316,'2021-10-06 16:01:23',5,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(405,'2021-10-10 01:38:36',2,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(516,'2021-10-05 10:06:19',5,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(981,'2021-10-04 11:37:09',4,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(116,'2021-10-14 02:46:50',6,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(815,'2021-10-08 01:05:18',3,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(886,'2021-10-16 16:37:37',9,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(117,'2021-10-16 04:32:29',3,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(161,'2021-10-04 09:13:08',5,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(772,'2021-10-18 19:44:30',1,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(834,'2021-10-08 00:01:07',8,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(333,'2021-10-15 00:31:24',1,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(881,'2021-10-17 05:21:24',1,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(264,'2021-10-12 19:10:51',9,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(939,'2021-10-16 20:06:55',7,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(492,'2021-10-04 12:21:24',2,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(419,'2021-10-08 16:43:24',3,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(81,'2021-10-12 09:06:56',9,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(768,'2021-10-03 19:15:51',9,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(958,'2021-10-03 09:27:19',7,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(745,'2021-10-13 22:58:52',8,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(298,'2021-10-03 10:26:37',3,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(276,'2021-10-09 22:57:42',6,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(75,'2021-10-13 02:32:12',5,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(307,'2021-10-05 05:05:32',5,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(899,'2021-10-08 02:04:07',7,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(992,'2021-10-08 18:13:43',5,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(661,'2021-10-08 11:35:06',7,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(82,'2021-10-16 10:39:24',4,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(898,'2021-10-04 08:04:44',6,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(118,'2021-10-16 20:35:52',2,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(318,'2021-10-06 07:27:58',7,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(845,'2021-10-14 11:26:45',6,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(542,'2021-10-13 09:42:21',5,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(254,'2021-10-08 03:58:50',4,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(569,'2021-10-11 00:13:28',7,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(604,'2021-10-03 04:24:40',4,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(447,'2021-10-16 14:58:00',5,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(254,'2021-10-10 20:30:41',9,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(880,'2021-10-04 11:08:20',1,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(222,'2021-10-09 05:17:54',1,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(574,'2021-10-04 06:39:08',1,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(567,'2021-10-10 22:50:52',1,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(129,'2021-10-03 16:45:43',7,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(937,'2021-10-13 06:20:18',7,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(432,'2021-10-08 16:04:22',6,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(329,'2021-10-11 19:33:52',3,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(694,'2021-10-09 06:26:02',9,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(398,'2021-10-10 11:11:25',3,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(523,'2021-10-01 07:49:16',6,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(133,'2021-10-06 17:30:23',7,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(552,'2021-10-16 04:49:24',4,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(260,'2021-10-18 20:15:47',2,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(898,'2021-10-04 20:55:23',1,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(590,'2021-10-10 16:36:42',2,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(227,'2021-10-10 21:37:17',3,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(695,'2021-10-06 07:00:49',4,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(78,'2021-10-08 13:27:24',1,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(160,'2021-10-16 13:00:36',9,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(343,'2021-10-09 05:41:11',6,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(496,'2021-10-18 14:30:48',2,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(885,'2021-10-10 21:32:40',5,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(155,'2021-10-03 03:17:04',4,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(664,'2021-10-07 14:39:18',8,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(838,'2021-10-02 07:38:41',3,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(485,'2021-10-17 21:34:53',9,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(352,'2021-10-12 10:55:27',4,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(346,'2021-10-02 09:06:15',9,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(619,'2021-10-18 19:30:18',8,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(474,'2021-10-12 20:57:16',9,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(260,'2021-10-04 16:10:24',8,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(745,'2021-10-04 16:49:27',2,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(62,'2021-10-17 12:25:16',7,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(948,'2021-10-02 01:34:08',2,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(61,'2021-10-11 22:11:25',5,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(915,'2021-10-13 21:50:07',5,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(834,'2021-10-03 15:50:39',5,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(728,'2021-10-07 12:00:14',8,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(130,'2021-10-12 13:16:38',5,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(619,'2021-10-14 14:01:37',4,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(241,'2021-10-11 13:08:14',9,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(963,'2021-10-08 16:27:38',4,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(256,'2021-10-08 04:11:44',8,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(123,'2021-10-07 13:28:02',2,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(414,'2021-10-01 19:02:06',3,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(767,'2021-10-18 19:00:47',2,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(259,'2021-10-16 18:58:00',4,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(379,'2021-10-09 18:51:36',3,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(270,'2021-10-18 15:11:49',9,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(418,'2021-10-17 09:32:06',8,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(451,'2021-10-07 04:56:38',7,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(543,'2021-10-15 11:01:42',8,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(581,'2021-10-01 03:29:03',4,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(996,'2021-10-04 18:56:15',5,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(954,'2021-10-07 09:53:37',9,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(168,'2021-10-12 21:56:33',3,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(246,'2021-10-03 04:07:02',5,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(882,'2021-10-05 01:03:23',9,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(176,'2021-10-07 22:23:09',1,6);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(441,'2021-10-02 02:05:54',2,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(413,'2021-10-05 12:28:07',8,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(95,'2021-10-12 19:12:00',1,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(142,'2021-10-07 19:14:57',5,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(289,'2021-10-17 12:24:14',2,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(130,'2021-10-02 00:07:25',4,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(85,'2021-10-10 13:16:07',6,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(761,'2021-10-03 04:09:01',5,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(712,'2021-10-05 19:55:36',4,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(336,'2021-10-18 01:51:39',9,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(596,'2021-10-15 01:33:36',6,1);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(858,'2021-10-06 22:50:50',9,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(785,'2021-10-07 05:13:38',5,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(808,'2021-10-04 04:47:56',4,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(553,'2021-10-10 09:27:37',2,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(383,'2021-10-02 13:23:53',3,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(978,'2021-10-16 02:44:31',6,5);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(648,'2021-10-15 15:00:30',6,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(647,'2021-10-17 17:39:13',3,3);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(789,'2021-10-11 08:13:46',3,4);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(290,'2021-10-13 18:44:13',5,8);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(329,'2021-10-02 01:24:43',2,9);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(713,'2021-10-14 10:07:32',4,7);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(247,'2021-10-15 17:40:54',5,2);
INSERT INTO pharmacy_medicine(quantity,date_admission,pharmacy_id,medicine_id) VALUES(346,'2021-10-13 12:44:17',1,4);


--Llenado de tabla supplier--
alter table supplier
drop column creation_date

alter table supplier
drop column update_date


INSERT INTO supplier VALUES('Comcast','Biolife Grup, Carlisle  Pass 1017, Amarillo, NZL 2522','4-763-703-7012','Logan_Oliver6121@deavo.com','Logan Oliver');
INSERT INTO supplier VALUES('Carrefour','Zepter, Blackall   Hill 1157, Fort Lauderdale, JOR 5107','2-368-273-0507','David_Hunt7101@muall.tech','David Hunt');
INSERT INTO supplier VALUES('Vodafone','Danone, Adams  Grove 1298, Madrid, CIV 1566','1-371-272-0331','Davina_Clark3172@vetan.org','Davina Clark');
INSERT INTO supplier VALUES('It Smart Group','21st Century Fox, Caroline  Hill 8235, Madison, CCK 7305','6-864-350-2578','Eden_Graves285@iatim.tech','Eden Graves');
INSERT INTO supplier VALUES('Carrefour','Coca-Cola Company, Garfield Street 1033, Rome, EST 5881','8-568-612-5168','Alexander_Evans7470@famism.biz','Alexander Evans');
INSERT INTO supplier VALUES('Vodafone','21st Century Fox, Unwin  Route 5464, Rochester, MSR 5727','4-150-433-1588','Dorothy_Evans9546@joiniaa.com','Dorothy Evans');
INSERT INTO supplier VALUES('Demaco','Team Guard SRL, Byland  Walk 4833, Lincoln, MAF 0325','5-641-032-7445','Lucas_Todd9614@vetan.org','Lucas Todd');
INSERT INTO supplier VALUES('Comodo','Global Print, Oxford Tunnel 4055, Fort Lauderdale, MAR 5364','3-354-616-7317','Bree_Evans800@nanoff.biz','Bree Evans');
INSERT INTO supplier VALUES('Areon Impex','Coca-Cola Company, Berry  Pass 8155, Lakewood, PSE 4720','1-407-638-8370','Erick_Hall6701@twace.org','Erick Hall');
INSERT INTO supplier VALUES('Global Print','Global Print, Andrews  Tunnel 2051, Innsbruck, ARG 6558','6-471-641-5332','Miley_Allen8354@atink.com','Miley Allen');
INSERT INTO supplier VALUES('Carrefour','Areon Impex, Addison  Hill 537, Pittsburgh, TCD 3130','7-822-103-2346','Nicholas_Middleton9845@sveldo.biz','Nicholas Middleton');
INSERT INTO supplier VALUES('ExxonMobil','Areon Impex, Addison  Lane 4251, Wien, BTN 0730','8-874-823-3501','Cecilia_Baker1083@gompie.com','Cecilia Baker');
INSERT INTO supplier VALUES('21st Century Fox','Erickson, Fawn Crossroad 5958, Venice, ETH 7304','5-641-470-4250','Denis_Rust8861@gompie.com','Denis Rust');
INSERT INTO supplier VALUES('Telekom','Facebook, Aspen Street 7855, San Bernardino, DEU 1715','4-808-086-7508','Phillip_Middleton89@vetan.org','Phillip Middleton');
INSERT INTO supplier VALUES('Danone','Team Guard SRL, St. Pauls  Way 9803, Lyon, NFK 2147','6-633-322-4426','Doug_Morgan2609@famism.biz','Doug Morgan');
INSERT INTO supplier VALUES('ENEL','Zepter, Heritage Avenue 1724, Bellevue, SPM 1825','5-446-650-0026','Adeline_Jarvis1047@irrepsy.com','Adeline Jarvis');
INSERT INTO supplier VALUES('Comodo','ENEL, Epworth  Avenue 3358, Huntsville, VAT 0510','5-511-306-5004','Nicole_Antcliff8787@liret.org','Nicole Antcliff');
INSERT INTO supplier VALUES('Facebook','Zepter, Elizabeth  Rue 4142, Oakland, HKG 4667','2-534-145-3480','Callie_Reading6503@irrepsy.com','Callie Reading');
INSERT INTO supplier VALUES('Carrefour','Demaco, Cavendish Crossroad 6493, Salt Lake City, TLS 3234','5-845-352-4864','Anabel_Addley8417@irrepsy.com','Anabel Addley');
INSERT INTO supplier VALUES('Carrefour','Biolife Grup, Charnwood   Rue 137, Fullerton, KNA 8828','1-168-170-8482','Chloe_Eddison1875@tonsy.org','Chloe Eddison');
INSERT INTO supplier VALUES('Telekom','Demaco, Vincent  Alley 9877, Paris, CHE 7786','4-554-616-1227','Parker_Ellison3818@guentu.biz','Parker Ellison');
INSERT INTO supplier VALUES('ExxonMobil','Boeing, Calvin   Rue 5169, Portland, GUY 6351','8-877-021-4274','Vera_Hogg297@yahoo.com','Vera Hogg');
INSERT INTO supplier VALUES('Team Guard SRL','DynCorp, Linden Crossroad 7285, Salt Lake City, JAM 5072','1-618-000-6143','Olivia_Asher3260@zorer.org','Olivia Asher');
INSERT INTO supplier VALUES('Team Guard SRL','Global Print, Bel   Hill 6236, Chicago, GNQ 2717','3-771-720-8717','Domenic_Parsons4006@jiman.org','Domenic Parsons');
INSERT INTO supplier VALUES('Erickson','Mars, Arlington  Boulevard 5005, San Bernardino, KOR 8252','5-667-082-5833','Teagan_Overson9217@acrit.org','Teagan Overson');
INSERT INTO supplier VALUES('Metro Cash&Carry','Erickson, Monroe Lane 1559, Zurich, RWA 5467','2-527-810-3212','Mike_Poole2104@sheye.org','Mike Poole');
INSERT INTO supplier VALUES('Metro Cash&Carry','CarMax, Arctic   Rue 4012, Richmond, DZA 1636','0-200-231-8055','Luke_Mcleod3979@cispeto.com','Luke Mcleod');
INSERT INTO supplier VALUES('Amazon.com','Danone, English   Grove 6960, London, COG 2630','3-161-143-8120','Chuck_Bradshaw2631@bretoux.com','Chuck Bradshaw');
INSERT INTO supplier VALUES('Zepter','ExxonMobil, Comet House  Rue 2879, New York, CHL 7818','0-627-382-6624','Rufus_Ballard9982@irrepsy.com','Rufus Ballard');
INSERT INTO supplier VALUES('ExxonMobil','BuzzFeed, Oxford Alley 2008, Madrid, CAF 2416','6-407-185-3174','Ron_Price1786@corti.com','Ron Price');
INSERT INTO supplier VALUES('Comcast','21st Century Fox, Arthur  Rue 7055, San Antonio, SLV 3070','6-508-321-4254','Quinn_Eaton2443@vetan.org','Quinn Eaton');
INSERT INTO supplier VALUES('AECOM','Global Print, Parkfields Alley 8936, Reno, CMR 2013','0-886-738-8618','Marvin_Drew9056@nimogy.biz','Marvin Drew');
INSERT INTO supplier VALUES('Amazon.com','Amazon.com, Wake  Pass 4455, Toledo, UMI 0076','1-076-817-1428','Rick_Dallas6366@ubusive.com','Rick Dallas');
INSERT INTO supplier VALUES('It Smart Group','Biolife Grup, Queensberry  Walk 1698, Boston, BGD 8303','8-838-605-6873','Doug_Howard5844@bauros.biz','Doug Howard');
INSERT INTO supplier VALUES('BuzzFeed','CarMax, Zealand Alley 1227, Salt Lake City, ARG 3380','5-848-376-7203','Lexi_Norton3222@bungar.biz','Lexi Norton');
INSERT INTO supplier VALUES('Coca-Cola Company','Mars, Abourne   Vale 2033, Springfield, GLP 5808','2-760-460-0638','Kieth_Flack1968@bauros.biz','Kieth Flack');
INSERT INTO supplier VALUES('Carrefour','AECOM, Cave   Pass 7416, Rochester, REU 1566','7-187-027-4840','Liam_Gaynor5578@bretoux.com','Liam Gaynor');
INSERT INTO supplier VALUES('Coca-Cola Company','Danone, Becklow  Hill 9666, Orlando, SLB 8113','2-015-360-1774','Leslie_Bayliss2249@deavo.com','Leslie Bayliss');
INSERT INTO supplier VALUES('Coca-Cola Company','Comodo, Cockspur  Tunnel 1599, Springfield, NRU 5072','7-328-678-5368','Willow_Vass4543@acrit.org','Willow Vass');
INSERT INTO supplier VALUES('Comcast','ENEL, Chestnut Rise Alley 3270, Arlington, WSM 8847','1-704-454-2757','Erick_Bennett7609@vetan.org','Erick Bennett');
INSERT INTO supplier VALUES('CarMax','Danone, Dunstans  Avenue 8213, San Antonio, GNQ 5177','8-452-028-6722','Sarah_Taylor6241@liret.org','Sarah Taylor');
INSERT INTO supplier VALUES('Boeing','AECOM, Shepherds  Street 3043, Reno, CRI 6748','0-374-367-5612','Hayden_James295@yahoo.com','Hayden James');
INSERT INTO supplier VALUES('CarMax','Mars, Battis   Grove 8691, Columbus, BRN 1045','4-148-442-8287','Noah_Uttridge2382@fuliss.net','Noah Uttridge');
INSERT INTO supplier VALUES('Erickson','Leadertech Consulting, Virginia Alley 1754, Tallahassee, NCL 0800','1-406-371-2311','Rocco_Stewart3002@sveldo.biz','Rocco Stewart');
INSERT INTO supplier VALUES('Amazon.com','It Smart Group, College  Vale 1923, Philadelphia, VEN 8533','3-124-034-1421','Lana_Huggins4991@ovock.tech','Lana Huggins');
INSERT INTO supplier VALUES('Apple Inc.','Danone, Buttonwood Boulevard 8090, Fayetteville, VGB 8708','7-231-183-6015','Shay_Antcliff8991@nanoff.biz','Shay Antcliff');
INSERT INTO supplier VALUES('ENEL','Zepter, Longman   Pass 6362, Jersey City, SYR 6771','5-352-584-5701','Sabrina_Rixon7390@hourpy.biz','Sabrina Rixon');
INSERT INTO supplier VALUES('Metro Cash&Carry','Zepter, Cingworth  Boulevard 4040, Fremont, POL 1213','2-585-227-6237','Maggie_Everett9088@bretoux.com','Maggie Everett');
INSERT INTO supplier VALUES('Demaco','Apple Inc., Castlereagh   Street 9, Hayward, COD 7085','6-884-045-1874','Hayden_Oakley6296@extex.org','Hayden Oakley');
INSERT INTO supplier VALUES('Metro Cash&Carry','Demaco, Collent   Rue 4061, Toledo, ASM 7658','3-421-426-1638','Harriet_Emerson6131@deavo.com','Harriet Emerson');
INSERT INTO supplier VALUES('ENEL','Carrefour, Andsell    Lane 5935, Lyon, BRN 8222','1-561-644-2666','Carter_Rosenbloom419@cispeto.com','Carter Rosenbloom');
INSERT INTO supplier VALUES('Team Guard SRL','AECOM, Bethwin  Tunnel 919, Pittsburgh, BEL 7625','3-212-720-5402','Gwenyth_Thornton9466@acrit.org','Gwenyth Thornton');
INSERT INTO supplier VALUES('Telekom','Zepter, Blean   Lane 8850, Ontario, HUN 1340','1-477-347-1843','Josh_Ramsey5038@corti.com','Josh Ramsey');
INSERT INTO supplier VALUES('Danone','Areon Impex, Duthie   Grove 3040, Prague, MKD 0153','6-240-731-8052','Manuel_Walter5676@sheye.org','Manuel Walter');
INSERT INTO supplier VALUES('UPC','Vodafone, Chancellor  Avenue 4176, Valetta, TGO 6100','6-367-671-0834','Clint_Flanders5522@mafthy.com','Clint Flanders');
INSERT INTO supplier VALUES('Metro Cash&Carry','Boeing, Cavaye  Rue 8592, Rome, GTM 1720','8-317-772-3427','Harry_Power5737@grannar.com','Harry Power');
INSERT INTO supplier VALUES('CarMax','Coca-Cola Company, Cliffords  Boulevard 9245, Portland, BOL 5703','1-205-836-1565','Andrea_Heaton1775@nanoff.biz','Andrea Heaton');
INSERT INTO supplier VALUES('Comodo','Biolife Grup, Balfe   Road 801, Nashville, TUV 3110','1-135-073-1146','Noah_Oldfield3568@supunk.biz','Noah Oldfield');
INSERT INTO supplier VALUES('Team Guard SRL','ENEL, Baynes  Drive 1400, Prague, BEL 8050','3-756-362-4020','Clint_Tyler3507@famism.biz','Clint Tyler');
INSERT INTO supplier VALUES('Telekom','Erickson, Marina  Road 6720, Pittsburgh, MMR 4871','7-333-446-0246','Francesca_Redwood9218@hourpy.biz','Francesca Redwood');
INSERT INTO supplier VALUES('Demaco','Danone, Littlebury  Hill 6424, Bakersfield, BFA 0535','3-541-745-4068','Jazmin_Quinton951@ubusive.com','Jazmin Quinton');
INSERT INTO supplier VALUES('AECOM','Amazon.com, Falconberg   Hill 798, Detroit, MNG 7382','4-662-618-2363','Bethany_Jones5775@kideod.biz','Bethany Jones');
INSERT INTO supplier VALUES('Telekom','Facebook, Bellenden  Crossroad 4927, Nashville, BRN 1167','4-426-772-0633','Rihanna_Denton1286@sheye.org','Rihanna Denton');
INSERT INTO supplier VALUES('Coca-Cola Company','Danone, Maple Road 9598, Anaheim, TKL 6171','6-144-083-3700','Tiffany_Glynn5571@cispeto.com','Tiffany Glynn');
INSERT INTO supplier VALUES('Apple Inc.','Vodafone, Fairfield  Street 7450, Cincinnati, DEU 2016','7-735-486-5717','Callie_Newton9166@nimogy.biz','Callie Newton');
INSERT INTO supplier VALUES('Areon Impex','Areon Impex, Bolton  Lane 4609, Berna, BHS 7455','3-071-471-5533','George_Chapman3763@infotech44.tech','George Chapman');
INSERT INTO supplier VALUES('Leadertech Consulting','AECOM, Durweston   Street 2993, Lincoln, BEL 3252','2-305-173-3588','Karla_Dillon728@ubusive.com','Karla Dillon');
INSERT INTO supplier VALUES('Biolife Grup','AECOM, Charnwood   Crossroad 5368, Milano, PHL 2254','2-224-785-8156','Joyce_Button2374@yahoo.com','Joyce Button');
INSERT INTO supplier VALUES('Zepter','Leadertech Consulting, Linden Grove 1356, Las Vegas, MNP 1786','6-756-343-1024','Kendra_Zaoui8477@nanoff.biz','Kendra Zaoui');
INSERT INTO supplier VALUES('Leadertech Consulting','BuzzFeed, Birkbeck  Rue 6179, Atlanta, VEN 0601','2-231-581-7057','Jacob_Fowler2589@twace.org','Jacob Fowler');
INSERT INTO supplier VALUES('Carrefour','Vodafone, Thorndike   Pass 5731, Fullerton, CMR 3262','0-265-823-0751','Noah_Patel2968@infotech44.tech','Noah Patel');
INSERT INTO supplier VALUES('Demaco','Zepter, Parkfield  Grove 4374, Milano, FSM 0723','5-348-785-0538','Ema_Drummond4449@atink.com','Ema Drummond');
INSERT INTO supplier VALUES('Apple Inc.','BuzzFeed, Bloomsbury  Tunnel 4102, Saint Paul, TUN 1662','7-566-667-6625','Darlene_Grady5380@eirey.tech','Darlene Grady');
INSERT INTO supplier VALUES('Zepter','Biolife Grup, South Route 9829, Escondido, ERI 1140','8-042-215-7376','John_Tailor2414@brety.org','John Tailor');
INSERT INTO supplier VALUES('Comodo','Zepter, Victorian  Boulevard 7017, Bellevue, IMN 1573','2-445-515-7628','Erin_Bryson3276@nimogy.biz','Erin Bryson');
INSERT INTO supplier VALUES('ENEL','Coca-Cola Company, Cato   Pass 1500, Arlington, TUN 0341','3-763-547-3282','David_Lewis4739@acrit.org','David Lewis');
INSERT INTO supplier VALUES('Team Guard SRL','Comodo, Coleman  Grove 9957, Quebec, BMU 7121','1-063-108-2088','Ada_Ballard3668@bungar.biz','Ada Ballard');
INSERT INTO supplier VALUES('Boeing','Team Guard SRL, Cable    Street 2425, Baltimore, AFG 6000','1-348-133-5355','Leilani_Verdon1355@atink.com','Leilani Verdon');
INSERT INTO supplier VALUES('Carrefour','21st Century Fox, Spruce Avenue 847, Wien, IRQ 4510','7-368-218-6858','Julius_Adams5059@naiker.biz','Julius Adams');
INSERT INTO supplier VALUES('ExxonMobil','Vodafone, Berriman  Crossroad 942, Toledo, BGD 1335','8-168-302-4155','Nicholas_Archer614@supunk.biz','Nicholas Archer');
INSERT INTO supplier VALUES('Facebook','It Smart Group, Hickory   Pass 9862, Garland, BGD 7242','8-785-485-0526','Kaylee_Atkinson6512@fuliss.net','Kaylee Atkinson');
INSERT INTO supplier VALUES('Amazon.com','Danone, Monroe Street 8088, Oakland, LBR 7075','5-658-586-3620','Carissa_Stone 3607@famism.biz','Carissa Stone ');
INSERT INTO supplier VALUES('Amazon.com','CarMax, Caroline  Lane 1062, Norfolk, TCD 5632','4-270-463-8283','Bart_Ross9631@bretoux.com','Bart Ross');
INSERT INTO supplier VALUES('Apple Inc.','BuzzFeed, Kinglake  Hill 8273, Houston, FJI 8738','4-580-115-1071','Chris_Long9572@gmail.com','Chris Long');
INSERT INTO supplier VALUES('Boeing','Demaco, Blackpool  Drive 9580, Baltimore, CAF 3667','4-637-116-8328','Chester_Wilcox9345@naiker.biz','Chester Wilcox');
INSERT INTO supplier VALUES('ENEL','Danone, Anns  Hill 5908, Orlando, LBY 0383','8-685-243-1368','Janelle_Gray6978@yahoo.com','Janelle Gray');
INSERT INTO supplier VALUES('Comcast','CarMax, Union  Alley 633, Laredo, SAU 1231','2-863-426-6246','Ruth_Stevens4786@deavo.com','Ruth Stevens');
INSERT INTO supplier VALUES('AECOM','UPC, Arlington  Road 8590, San Diego, GUY 5087','3-716-382-0263','Jamie_Bayliss6954@bungar.biz','Jamie Bayliss');
INSERT INTO supplier VALUES('AECOM','Zepter, Walnut Pass 6367, Minneapolis, HUN 0612','2-640-244-2816','Sebastian_Shaw3812@supunk.biz','Sebastian Shaw');
INSERT INTO supplier VALUES('Facebook','Team Guard SRL, Rosewood Grove 3150, Huntsville, PHL 8862','1-000-825-0365','Aurelia_Asher1677@supunk.biz','Aurelia Asher');
INSERT INTO supplier VALUES('Telekom','ExxonMobil, St. Pauls  Walk 3612, Innsbruck, VIR 1766','0-384-152-3280','Lily_Uddin9452@gmail.com','Lily Uddin');
INSERT INTO supplier VALUES('Mars','Carrefour, Battersea   Road 2450, Charlotte, HMD 1147','7-817-125-5531','Leanne_Rixon6870@naiker.biz','Leanne Rixon');
INSERT INTO supplier VALUES('Coca-Cola Company','Biolife Grup, Canon Hill 8543, Hollywood, MSR 0066','4-037-366-3400','Rocco_Young3087@bretoux.com','Rocco Young');
INSERT INTO supplier VALUES('Biolife Grup','Demaco, Cockspur  Way 3445, Orlando, PAN 8418','0-760-745-1415','Denis_Benfield7273@jiman.org','Denis Benfield');
INSERT INTO supplier VALUES('Comodo','Areon Impex, Tiptree   Avenue 2405, Tulsa, SEN 5431','3-824-217-6478','Alan_Penn9336@atink.com','Alan Penn');
INSERT INTO supplier VALUES('Leadertech Consulting','Comodo, Clissold  Lane 8861, Ontario, ERI 6866','5-451-532-1126','Mackenzie_Groves9159@extex.org','Mackenzie Groves');
INSERT INTO supplier VALUES('AECOM','Comodo, Paris   Route 5785, Toledo, KEN 6464','2-274-454-1285','Luke_Calderwood989@deavo.com','Luke Calderwood');
INSERT INTO supplier VALUES('AECOM','DynCorp, Apollo  Road 9825, Honolulu, CHE 5623','0-568-578-0826','Daria_Adler1827@bauros.biz','Daria Adler');
INSERT INTO supplier VALUES('DynCorp','Boeing, Fawn Crossroad 2906, Philadelphia, NOR 2866','4-381-712-3558','Charlotte_Rossi9229@deons.tech','Charlotte Rossi');
INSERT INTO supplier VALUES('Telekom','DynCorp, Sheffield Vale 8704, Albuquerque, ERI 4603','0-244-070-3501','Cedrick_Nicolas4194@sheye.org','Cedrick Nicolas');


