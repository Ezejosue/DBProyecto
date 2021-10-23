CREATE DATABASE proyect2
GO

USE [proyect2]
GO
/****** Object:  Table [dbo].[bank]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bank]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bank] [nvarchar](255) NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blood_type]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blood_type]
(
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
/****** Object:  Table [dbo].[card_type]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[card_type]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](255) NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[check_payment]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[check_payment]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[check_number] [nvarchar](255) NULL,
	[id_bank] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[civil_status]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[civil_status]
(
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
/****** Object:  Table [dbo].[consultation]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[price] [float] NOT NULL,
	[hospital_id] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consulting_room]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consulting_room]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number] [int] NULL,
	[level_id] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee]
(
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
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_consulting_room]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_consulting_room]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_consulting_room] [int] NULL,
	[id_employee] [int] NULL,
	[id_schedule_employee] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_direction]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_direction]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[direction] [varchar](300) NOT NULL,
	[employee_id] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_log]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_log]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
	[generation_date] [datetime] NULL,
	[ip_device] [nvarchar](255) NULL,
	[id_log_type] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospital]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospital]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[direction] [varchar](300) NOT NULL,
	[country_id] [int] NOT NULL,
	[parking_quantity] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[level]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[level]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[hospital_id] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_type]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_type]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](20) NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mail]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mail]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[hospital_id] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicine]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicine]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[price] [float] NOT NULL,
	[description] [varchar](max) NOT NULL,
	[id_provider] [int] NOT NULL,
	[type_medicine] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicine_type]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicine_type]
(
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient]
(
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
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_direction]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_direction]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[direction] [varchar](300) NULL,
	[patient_id] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_disease]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_disease]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[disease] [nvarchar](255) NULL,
	[treatment] [varchar](500) NULL,
	[patient_id] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_record]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_record]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[suffering] [nvarchar](255) NULL,
	[diagnosis] [nvarchar](255) NULL,
	[note] [nvarchar](255) NULL,
	[consultation_date] [datetime] NULL,
	[voucher_generated] [bit] NULL,
	[patient_id] [int] NULL,
	[employee_id] [int] NULL,
	[id_consultation] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_record_medicine]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_record_medicine]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_patient_record] [int] NULL,
	[id_medicine] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_record_surgery]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_record_surgery]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_patient_record] [int] NULL,
	[id_surgery] [int] NULL,
	[surgery_date] [datetime] NULL,
	[employee_id] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_relationship]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_relationship]
(
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
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_card]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_card]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[owner] [nvarchar](255) NULL,
	[number] [nvarchar](255) NULL,
	[expiration] [datetime] NULL,
	[id_bank] [int] NULL,
	[id_card_type] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_type]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_type]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](255) NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pharmacy]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pharmacy]
(
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
/****** Object:  Table [dbo].[pharmacy_medicine]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pharmacy_medicine]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[date_admission] [datetime] NOT NULL,
	[pharmacy_id] [int] NOT NULL,
	[medicine_id] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profession]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profession]
(
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
/****** Object:  Table [dbo].[room]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room]
(
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
/****** Object:  Table [dbo].[room_type]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_type]
(
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
/****** Object:  Table [dbo].[schedule]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_hour] [nvarchar](255) NULL,
	[end_hour] [nvarchar](255) NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule_employee]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule_employee]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_schedule] [int] NULL,
	[id_employee] [int] NULL,
	[id_schedule_freq_type] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule_freq_type]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule_freq_type]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[freq] [nvarchar](255) NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[direction] [varchar](300) NOT NULL,
	[telephone] [varchar](200) NOT NULL,
	[email] [nvarchar](320) NOT NULL,
	[contact_person] [nvarchar](255) NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[surgery]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[surgery]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[cost] [float] NULL,
	[id_room] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telephone_employee]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_employee]
(
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
/****** Object:  Table [dbo].[telephone_hospital]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_hospital]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[hospital_id] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telephone_patient]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_patient]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [varchar](20) NULL,
	[patient_id] [int] NULL,
	[telephone_type_id] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telephone_type]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telephone_type]
(
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
/****** Object:  Table [dbo].[type_user]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_user]
(
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
/****** Object:  Table [dbo].[user_pwd]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_pwd]
(
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
/****** Object:  Table [dbo].[user_status]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_status]
(
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
/****** Object:  Table [dbo].[voucher]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_patient_record] [int] NULL,
	[transaction_date] [datetime] NULL,
	[id_payment_type] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_card_payment]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_card_payment]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_voucher] [int] NULL,
	[id_card_payment] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_check_payment]    Script Date: 22/10/2021 23:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_check_payment]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_voucher] [int] NULL,
	[id_check_payment] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bank] ON

INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(1, N'Capital One')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(2, N'The Bank of New York Mellon')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(3, N'Bank of America')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(4, N'Citigroup')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(5, N'U.S. Bancorp')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(6, N'Charles Schwab')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(7, N'PNC Financial Services')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(8, N'M&T Bank')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(9, N'Wells Fargo')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(10, N'Goldman Sachs')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(11, N'Banco Agricola')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(12, N'Banco Azul')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(13, N'Banco America')
INSERT [dbo].[bank]
	([id], [bank])
VALUES
	(14, N'European Bank')
SET IDENTITY_INSERT [dbo].[bank] OFF
GO
SET IDENTITY_INSERT [dbo].[blood_type] ON

INSERT [dbo].[blood_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(1, N'O Negativo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[blood_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(2, N'O Positivo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[blood_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(3, N'A Negativo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[blood_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(4, N'A Positivo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[blood_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(5, N'B Negativo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[blood_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(6, N'B Positivo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
SET IDENTITY_INSERT [dbo].[blood_type] OFF
GO
SET IDENTITY_INSERT [dbo].[card_type] ON

INSERT [dbo].[card_type]
	([id], [type])
VALUES
	(1, N'Credit card')
INSERT [dbo].[card_type]
	([id], [type])
VALUES
	(2, N'Debit card')
SET IDENTITY_INSERT [dbo].[card_type] OFF
GO
SET IDENTITY_INSERT [dbo].[check_payment] ON

INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(1, N'7755-4844-1518-5573', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(2, N'4484-2053-3255-6671', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(3, N'2145-2832-1448-4671', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(4, N'0532-4602-1688-3836', 9)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(5, N'2585-2552-1413-8573', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(6, N'5173-6433-1232-6502', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(7, N'3127-6070-2177-1004', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(8, N'2175-5141-1218-4811', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(9, N'2504-8182-3345-8137', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(10, N'2737-7065-5651-7165', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(11, N'7434-3073-1785-1171', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(12, N'5274-4537-2430-5178', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(13, N'3730-8744-5260-3470', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(14, N'4473-3706-0442-5516', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(15, N'7866-6428-7357-7850', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(16, N'5306-8023-7381-0552', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(17, N'6723-7053-4447-2482', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(18, N'8764-7842-8037-6685', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(19, N'2660-7342-3475-5707', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(20, N'5757-8871-8825-7641', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(21, N'1150-1421-3355-2128', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(22, N'1107-3778-7326-5623', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(23, N'6720-3325-4414-5685', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(24, N'5216-7360-2003-7532', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(25, N'4466-6762-7263-2621', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(26, N'1012-7348-1321-6772', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(27, N'1384-8444-0005-0262', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(28, N'4208-6016-5430-0371', 9)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(29, N'4718-1457-7242-0058', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(30, N'3423-4376-3014-8614', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(31, N'6713-3731-7664-4371', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(32, N'0384-0431-6442-7526', 9)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(33, N'2668-8671-5502-8633', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(34, N'5755-6261-5277-0136', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(35, N'0036-0503-3828-7718', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(36, N'8412-5306-3302-5464', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(37, N'5204-5142-2342-7468', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(38, N'1743-3528-6100-7343', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(39, N'1781-3358-3854-4823', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(40, N'3808-1664-7841-3087', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(41, N'3881-6483-0564-2266', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(42, N'0535-8025-4317-8856', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(43, N'5330-5305-0080-5573', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(44, N'8336-3765-1164-1516', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(45, N'6224-3128-7824-8623', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(46, N'0223-1564-4230-8472', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(47, N'8412-5106-4730-2341', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(48, N'5745-4650-8788-8442', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(49, N'7727-3015-6733-1877', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(50, N'7878-3742-5317-4277', 9)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(51, N'5682-1720-7815-7811', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(52, N'6533-3865-7607-1445', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(53, N'3185-5048-5835-7485', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(54, N'5235-1626-3121-5360', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(55, N'5823-0483-7038-0201', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(56, N'7214-1458-2826-8455', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(57, N'7030-5641-2686-3710', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(58, N'5471-3454-7455-7463', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(59, N'3866-2462-7762-7006', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(60, N'8160-4575-6274-4112', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(61, N'4121-2807-4571-8358', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(62, N'5457-7371-4176-3558', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(63, N'5848-5161-8803-7725', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(64, N'4556-5730-7610-1012', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(65, N'7637-8286-8376-6350', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(66, N'1835-8007-7340-7871', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(67, N'0517-4260-6352-0358', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(68, N'8270-7538-1845-1485', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(69, N'2087-5555-2644-6080', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(70, N'0520-1077-3313-5756', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(71, N'0404-2614-5774-3754', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(72, N'3335-1000-1131-6777', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(73, N'8387-6804-5183-8457', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(74, N'4237-8404-0473-8805', 1)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(75, N'8157-6421-5705-2562', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(76, N'3544-0783-5321-5186', 9)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(77, N'5420-6606-2608-7700', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(78, N'5314-8264-0108-8507', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(79, N'0286-5837-6173-7421', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(80, N'5553-5155-6586-3180', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(81, N'7603-8366-2170-2577', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(82, N'8328-3131-8340-3073', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(83, N'6400-6175-3874-4818', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(84, N'1574-3461-0025-8186', 9)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(85, N'8273-2133-0156-3321', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(86, N'7247-2837-6058-3776', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(87, N'0713-8341-2304-5684', 4)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(88, N'2611-5234-5063-6378', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(89, N'2300-8805-0523-0364', 9)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(90, N'4153-4567-3266-5825', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(91, N'3443-3614-5501-4608', 7)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(92, N'8533-7721-5628-3606', 3)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(93, N'8185-1338-7856-7466', 8)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(94, N'0522-5611-6084-1803', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(95, N'6780-7284-8764-7152', 5)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(96, N'6348-3474-3243-6042', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(97, N'6867-1227-5736-8832', 6)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(98, N'2681-3215-4041-2712', 2)
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(99, N'3546-4021-7646-3300', 1)
GO
INSERT [dbo].[check_payment]
	([id], [check_number], [id_bank])
VALUES
	(100, N'6733-3551-6266-2024', 8)
SET IDENTITY_INSERT [dbo].[check_payment] OFF
GO
SET IDENTITY_INSERT [dbo].[civil_status] ON

INSERT [dbo].[civil_status]
	([id], [status], [creation_date], [update_date])
VALUES
	(1, N'Soltero', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[civil_status]
	([id], [status], [creation_date], [update_date])
VALUES
	(2, N'Casado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[civil_status]
	([id], [status], [creation_date], [update_date])
VALUES
	(3, N'Viudo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[civil_status]
	([id], [status], [creation_date], [update_date])
VALUES
	(4, N'Divorciado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[civil_status]
	([id], [status], [creation_date], [update_date])
VALUES
	(5, N'Concubinato', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
SET IDENTITY_INSERT [dbo].[civil_status] OFF
GO
SET IDENTITY_INSERT [dbo].[consultation] ON

INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(1, N'Consultorio A-1', 10, 1)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(2, N'Consultorio A-2', 15, 1)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(3, N'Consultorio A-1', 10, 10)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(4, N'Consultorio B-1', 30, 7)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(5, N'Consultorio C-2', 13.75, 6)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(6, N'Consultorio B-3', 12.99, 3)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(7, N'Consultorio A-4', 10, 4)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(8, N'Consultorio A-3', 20, 9)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(9, N'Consultorio A-9', 11, 2)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(10, N'Consultorio A-7', 17.5, 9)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(12, N'Consultorio Tokyo', 120.777429033433, 10)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(13, N'Consultorio Venice', 940.994237774049, 58)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(14, N'Consultorio Honolulu', 148.576929852169, 92)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(15, N'Consultorio Madrid', 963.057378049501, 2)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(16, N'Consultorio Oakland', 148.043941321338, 34)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(18, N'Consultorio Seattle', 238.806496243834, 77)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(19, N'Consultorio Orlando', 220.146340631948, 64)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(21, N'Consultorio Dallas', 286.548615043773, 63)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(23, N'Consultorio Paris', 969.862472329225, 90)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(24, N'Consultorio Omaha', 967.444797865322, 98)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(25, N'Consultorio Lyon', 842.290719270376, 92)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(28, N'Consultorio Quebec', 935.671333595492, 43)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(29, N'Consultorio Stockton', 636.375682036567, 42)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(30, N'Consultorio Columbus', 416.982848078004, 57)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(32, N'Consultorio London', 904.20768984836, 50)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(34, N'Consultorio Irving', 924.233350689632, 31)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(35, N'Consultorio Omaha', 833.493713427565, 14)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(37, N'Consultorio Garland', 435.782811565689, 93)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(40, N'Consultorio Ontario', 319.339479142492, 23)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(41, N'Consultorio Lyon', 614.900481737638, 83)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(43, N'Consultorio Valetta', 72.8562546697707, 76)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(45, N'Consultorio Madrid', 9.10536007588048, 94)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(49, N'Consultorio Milano', 264.12159087794, 97)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(51, N'Consultorio Irving', 588.527261038091, 52)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(52, N'Consultorio Laredo', 617.677494668717, 2)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(54, N'Consultorio Boston', 399.108435865076, 73)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(55, N'Consultorio Oakland', 151.054746484875, 29)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(56, N'Consultorio Reno', 814.603895526195, 20)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(57, N'Consultorio Detroit', 611.271003035489, 66)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(61, N'Consultorio Zurich', 538.212706147792, 97)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(63, N'Consultorio Richmond', 386.272673306182, 81)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(64, N'Consultorio El Paso', 655.324151726591, 85)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(66, N'Consultorio Zurich', 19.285755745734, 73)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(69, N'Consultorio Omaha', 890.936057398997, 18)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(70, N'Consultorio Columbus', 626.639470319561, 68)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(73, N'Consultorio Prague', 411.549294590274, 42)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(74, N'Consultorio Oakland', 25.8178845363752, 33)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(75, N'Consultorio Memphis', 478.120769027677, 37)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(76, N'Consultorio Bellevue', 888.966130861997, 58)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(77, N'Consultorio San Jose', 953.24594116269, 98)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(78, N'Consultorio Reno', 151.25693480729, 36)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(81, N'Consultorio Anaheim', 586.398368864971, 72)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(82, N'Consultorio Lisbon', 562.609620450814, 54)
INSERT [dbo].[consultation]
	([id], [name], [price], [hospital_id])
VALUES
	(85, N'Consultorio Boston', 922.938523062476, 77)
SET IDENTITY_INSERT [dbo].[consultation] OFF
GO
SET IDENTITY_INSERT [dbo].[consulting_room] ON

INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(1, 56, 3)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(2, 36, 4)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(3, 25, 9)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(4, 98, 2)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(5, 49, 2)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(6, 89, 1)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(7, 69, 9)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(8, 47, 9)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(9, 22, 4)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(10, 36, 9)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(11, 31, 7)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(12, 80, 8)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(13, 67, 9)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(14, 4, 7)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(15, 79, 8)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(16, 72, 7)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(17, 44, 3)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(18, 58, 6)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(19, 24, 2)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(20, 74, 6)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(21, 22, 8)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(22, 10, 3)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(23, 46, 8)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(24, 39, 8)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(25, 16, 8)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(26, 52, 5)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(27, 41, 7)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(28, 96, 5)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(29, 28, 1)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(30, 98, 5)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(31, 40, 2)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(32, 15, 6)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(33, 62, 6)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(34, 18, 5)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(35, 47, 1)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(36, 54, 7)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(37, 47, 5)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(38, 48, 7)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(39, 10, 2)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(40, 64, 7)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(41, 22, 1)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(42, 36, 8)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(43, 26, 2)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(44, 90, 3)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(45, 50, 5)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(46, 32, 6)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(47, 76, 7)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(48, 8, 4)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(49, 27, 4)
INSERT [dbo].[consulting_room]
	([id], [number], [level_id])
VALUES
	(50, 97, 1)
SET IDENTITY_INSERT [dbo].[consulting_room] OFF
GO
SET IDENTITY_INSERT [dbo].[country] ON

INSERT [dbo].[country]
	([id], [name])
VALUES
	(1, N'El Salvador')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(2, N'Honduras')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(3, N'México')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(4, N'Guatemala')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(5, N'Costa Rica')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(6, N'Colombia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(7, N'Argentina')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(8, N'Estados Unidos')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(9, N'Paraguay')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(10, N'Nicaragua')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(216, N'Sao Tome and Principe')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(217, N'Nigeria')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(218, N'Kazakhstan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(219, N'Turkmenistan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(220, N'Nepal')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(221, N'Brunei')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(222, N'Kuwait')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(223, N'Bolivia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(224, N'Albania')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(225, N'Jamaica')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(226, N'Sudan, South')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(227, N'Belarus')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(228, N'Kiribati')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(229, N'Macedonia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(230, N'Vietnam')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(231, N'Slovenia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(232, N'Indonesia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(233, N'Côte d’Ivoire')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(234, N'Belgium')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(235, N'Bosnia and Herzegovina')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(236, N'Andorra')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(237, N'Malaysia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(238, N'Liberia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(239, N'Georgia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(240, N'Korea, North')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(241, N'Lebanon')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(242, N'Maldives')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(243, N'Trinidad and Tobago')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(244, N'Malawi')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(245, N'Korea, North')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(246, N'Qatar')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(247, N'Mozambique')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(248, N'Angola')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(249, N'Fiji')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(250, N'Lebanon')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(251, N'Haiti')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(252, N'Moldova')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(253, N'Gabon')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(254, N'Romania')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(255, N'Jamaica')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(256, N'Rwanda')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(257, N'Dominican Republic')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(258, N'Andorra')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(259, N'Georgia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(260, N'Costa Rica')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(261, N'Trinidad and Tobago')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(262, N'Haiti')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(263, N'Bosnia and Herzegovina')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(264, N'Nauru')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(265, N'Argentina')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(266, N'Equatorial Guinea')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(267, N'Madagascar')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(268, N'Iraq')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(269, N'Bolivia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(270, N'Indonesia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(271, N'United Arab Emirates')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(272, N'Russia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(273, N'Netherlands')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(274, N'Congo, Republic of the')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(275, N'Vanuatu')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(276, N'Saint Lucia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(277, N'Burkina Faso')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(278, N'Panama')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(279, N'Austria')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(280, N'Mongolia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(281, N'United Arab Emirates')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(282, N'Tonga')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(283, N'Grenada')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(284, N'Slovenia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(285, N'Kazakhstan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(286, N'Spain')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(287, N'Montenegro')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(288, N'Netherlands')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(289, N'Angola')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(290, N'Bangladesh')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(291, N'Poland')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(292, N'Tanzania')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(293, N'Benin')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(294, N'Dominican Republic')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(295, N'Austria')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(296, N'Morocco')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(297, N'Sri Lanka')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(298, N'Portugal')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(299, N'Sierra Leone')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(300, N'Costa Rica')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(301, N'Liberia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(302, N'Iran')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(303, N'Dominica')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(304, N'Algeria')
GO
INSERT [dbo].[country]
	([id], [name])
VALUES
	(305, N'Czech Republic')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(306, N'Denmark')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(307, N'Serbia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(308, N'Côte d’Ivoire')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(309, N'Uganda')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(310, N'Taiwan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(311, N'Mozambique')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(312, N'Congo, Republic of the')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(313, N'Korea, South')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(314, N'Burkina Faso')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(315, N'Finland')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(316, N'Lithuania')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(317, N'Kazakhstan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(318, N'Equatorial Guinea')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(319, N'Saint Vincent and the Grenadines')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(320, N'Samoa')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(321, N'Marshall Islands')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(322, N'India')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(323, N'Malta')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(324, N'Singapore')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(325, N'Italy')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(326, N'United Kingdom')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(327, N'Guinea-Bissau')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(328, N'The Gambia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(329, N'Syria')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(330, N'Zimbabwe')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(331, N'Uganda')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(332, N'Fiji')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(333, N'Uganda')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(334, N'Argentina')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(335, N'Kuwait')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(336, N'Vatican City')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(337, N'Kenya')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(338, N'Malaysia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(339, N'Dominica')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(340, N'Uruguay')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(341, N'Egypt')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(342, N'Haiti')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(343, N'Sudan, South')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(344, N'Grenada')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(345, N'Greece')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(346, N'Grenada')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(347, N'Korea, South')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(348, N'Tanzania')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(349, N'Nauru')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(350, N'Mauritania')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(351, N'Laos')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(352, N'Suriname')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(353, N'Belize')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(354, N'Nicaragua')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(355, N'Cabo Verde')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(356, N'Ecuador')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(357, N'Senegal')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(358, N'Eritrea')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(359, N'Ukraine')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(360, N'Dominican Republic')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(361, N'Côte d’Ivoire')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(362, N'Ecuador')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(363, N'Saint Lucia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(364, N'Kazakhstan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(365, N'Jordan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(366, N'Sierra Leone')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(367, N'El Salvador')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(368, N'Norway')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(369, N'Nauru')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(370, N'Tuvalu')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(371, N'Saint Vincent and the Grenadines')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(372, N'Namibia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(373, N'Seychelles')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(374, N'Turkey')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(375, N'Equatorial Guinea')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(376, N'Bahrain')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(377, N'Vatican City')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(378, N'Singapore')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(379, N'Burundi')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(380, N'Armenia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(381, N'Norway')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(382, N'Kazakhstan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(383, N'Jamaica')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(384, N'Fiji')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(385, N'Kosovo')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(386, N'Comoros')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(387, N'Tajikistan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(388, N'Estonia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(389, N'Bosnia and Herzegovina')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(390, N'Laos')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(391, N'Samoa')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(392, N'Korea, North')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(393, N'Kiribati')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(394, N'Botswana')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(395, N'Sierra Leone')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(396, N'Greece')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(397, N'Israel')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(398, N'Bosnia and Herzegovina')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(399, N'Italy')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(400, N'Malta')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(401, N'Uganda')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(402, N'Argentina')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(403, N'Togo')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(404, N'Ecuador')
GO
INSERT [dbo].[country]
	([id], [name])
VALUES
	(405, N'Peru')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(406, N'Ireland')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(407, N'Mauritius')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(408, N'Nicaragua')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(409, N'United Kingdom')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(410, N'Cabo Verde')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(411, N'Sao Tome and Principe')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(412, N'Kyrgyzstan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(413, N'Botswana')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(414, N'Solomon Islands')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(415, N'Taiwan')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(416, N'San Marino')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(417, N'Sri Lanka')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(418, N'Namibia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(419, N'Somalia')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(420, N'Switzerland')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(421, N'Korea, South')
INSERT [dbo].[country]
	([id], [name])
VALUES
	(422, N'Andorra')
SET IDENTITY_INSERT [dbo].[country] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON

INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(1, N'Luis Alonso', N'Perez Gonzalez', CAST(N'1996-05-25' AS Date), 1, 1.75, 110, N'Café', 1, 1, 2, 1, 1, N'LuisitoAl', 2, N'luisito@gmail.com', 750, 20, 5)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(2, N'Fabiola Nicole', N'Martinez Ramirez', CAST(N'2001-02-19' AS Date), 2, 1.6, 115, N'Café', 1, 1, 2, 1, 2, N'FabiolaMar', 2, N'faby@gmail.com', 800, 30, 8)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(3, N'Daniel Antonio', N'Manzanarez', CAST(N'1995-06-11' AS Date), 5, 1.6, 125, N'Azules', 3, 1, 2, 1, 3, N'danielAnt', 2, N'dany@gmail.com', 750, 20, 5)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(4, N'Ricardo José', N'Lopez Gonzalez', CAST(N'2000-12-30' AS Date), 3, 1.8, 150, N'Café', 1, 3, 10, 4, 4, N'kaky', 1, N'kaky@gmail.com', 750, 20, 5)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(5, N'Josue Ezequiel', N'Avalos Avalos', CAST(N'1990-12-30' AS Date), 3, 1.8, 150, N'Café', 1, 3, 10, 4, 5, N'ezequiel', 1, N'ezequi@gmail.com', 1000, 40, 8)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(6, N'Adan Alberto', N'Lopez Najarro', CAST(N'1970-07-06' AS Date), 3, 1.8, 133, N'Verde', 1, 3, 10, 1, 6, N'kaky', 1, N'adan007@gmail.com', 750, 20, 5)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(7, N'Raul Alejandro', N'Martinez Ocasio', CAST(N'1994-01-01' AS Date), 3, 1.8, 150, N'Café', 1, 3, 10, 4, 7, N'RauwA', 1, N'rauwvv@gmail.com', 750, 20, 5)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(8, N'Karla Maria', N'Barillas Flores ', CAST(N'2000-09-11' AS Date), 3, 1.55, 100, N'Negros', 2, 3, 10, 4, 8, N'kaMaria', 1, N'kamari@gmail.com', 750, 20, 5)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(9, N'Carlos Arturo', N'Gallardo Hernandez', CAST(N'1980-02-07' AS Date), 3, 1.8, 150, N'Café', 2, 3, 10, 4, 9, N'kaky', 1, N'kaky@gmail.com', 750, 20, 5)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(10, N'Carmen Rosivell', N'Valle', CAST(N'1970-07-07' AS Date), 3, 1.8, 150, N'Café', 3, 3, 10, 4, 10, N'kaky', 1, N'kaky@gmail.com', 750, 20, 5)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(11, N'Chanelle', N'Lewis', CAST(N'1998-02-14' AS Date), 6, 2.2749537085532, 42.719506694339, N'Salmon', 5, 2, 1, 3, 3, N'nOd4Fh2dkN', 3, N'Chanelle_Lewis9052@gmail.com', 1604.60897397371, 793.460400833031, 51.5270260174419)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(12, N'Nate', N'Aldridge', CAST(N'1977-08-30' AS Date), 9, 1.62545450796627, 36.6027001401422, N'White', 1, 4, 1, 1, 9, N'6edGyfIemE', 1, N'Nate_Aldridge4250@typill.biz', 1153.74532882811, 914.611055146256, 47.9281170251445)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(13, N'Chuck', N'Leslie', CAST(N'1965-05-16' AS Date), 5, 1.63953258862697, 30.537190437567, N'Azure', 2, 2, 3, 3, 9, N'nZu1sa2rUE', 3, N'Chuck_Leslie9346@deavo.com', 1340.4504351157, 615.54879144465, 70.5983552609563)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(14, N'Enoch', N'Hopkinson', CAST(N'1983-12-25' AS Date), 9, 1.9337750676711, 146.251899568947, N'Sky blue', 2, 1, 7, 2, 7, N'4gkF5vxi1t', 3, N'Enoch_Hopkinson3119@qater.org', 1949.13301523222, 986.287900892686, 95.8759621702488)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(15, N'Kate', N'Shaw', CAST(N'1998-08-12' AS Date), 9, 2.26945471114919, 99.8481154529602, N'Dark Red', 5, 2, 216, 1, 9, N'nqvHlASfJ2', 3, N'Kate_Shaw6861@ovock.tech', 1369.22775682445, 974.533226553133, 72.2603263739777)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(16, N'Hank', N'Spencer', CAST(N'1976-12-12' AS Date), 8, 1.45057641353951, 27.4067273779804, N'Sky blue', 4, 4, 6, 1, 2, N'X55mtQ1rTX', 3, N'Hank_Spencer200@sheye.org', 572.504458486803, 611.212628656632, 59.4855433788549)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(17, N'Ron', N'Lowe', CAST(N'1993-05-20' AS Date), 7, 2.26872048623335, 92.4511096456326, N'Salmon', 3, 2, 7, 1, 1, N'9RF3Wadz0h', 2, N'Ron_Lowe6324@gembat.biz', 1101.83973859988, 938.719244649503, 41.1404397930673)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(18, N'Bernadette', N'Ulyatt', CAST(N'1964-08-31' AS Date), 3, 1.70160946645849, 47.3153248705507, N'Auburn', 2, 3, 9, 1, 3, N'ioDlg1cPsx', 2, N'Bernadette_Ulyatt3236@brety.org', 1368.00702504302, 835.602129758616, 84.9812651276501)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(19, N'Nathan', N'Farrant', CAST(N'1983-10-24' AS Date), 7, 2.09107020352551, 52.5637895765546, N'Brown', 4, 2, 5, 3, 9, N'SioTFt6h2d', 3, N'Nathan_Farrant603@guentu.biz', 1087.94601866042, 688.748252684133, 92.4773394924017)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(20, N'Chuck', N'Phillips', CAST(N'1979-04-22' AS Date), 9, 2.2225801930868, 79.2997355499769, N'Cadet blue', 4, 3, 5, 2, 8, N'nx2mn7czlp', 2, N'Chuck_Phillips8879@qater.org', 503.105676043362, 696.752997785692, 74.1944090859938)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(21, N'Chuck', N'Garner', CAST(N'1986-01-12' AS Date), 6, 1.86812350045337, 113.336480912443, N'Sepia', 1, 2, 3, 2, 3, N'H8YMG3AllO', 2, N'Chuck_Garner1899@joiniaa.com', 1525.08048694398, 802.893468198317, 90.0502785197693)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(22, N'Juliette', N'Wilkinson', CAST(N'1962-10-20' AS Date), 8, 2.35929373053801, 74.8649598159198, N'Gold', 4, 1, 8, 3, 3, N'9E2PHIoHkb', 1, N'Juliette_Wilkinson730@famism.biz', 901.186105944303, 857.769566270415, 48.6484180920052)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(23, N'Domenic', N'Villiger', CAST(N'1984-02-29' AS Date), 9, 1.70453697419937, 196.341476069922, N'Ruby', 3, 1, 7, 3, 5, N'f4Gq61EzlE', 3, N'Domenic_Villiger8646@fuliss.net', 1641.47951415343, 807.662183562136, 83.1996110636739)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(24, N'Rocco', N'Davies', CAST(N'1968-01-26' AS Date), 9, 1.81306298431617, 61.4581280045482, N'Apricot', 3, 2, 222, 3, 2, N'9SN1MyRN4d', 2, N'Rocco_Davies8741@sheye.org', 1027.52723418527, 539.275368013547, 40.9490850050697)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(25, N'Ron', N'Talbot', CAST(N'1981-02-17' AS Date), 3, 1.97031910287697, 188.622835121873, N'Black', 5, 3, 9, 3, 4, N'1n75bPdmHH', 2, N'Ron_Talbot6736@kideod.biz', 686.002694732511, 724.018183989924, 71.5983263927504)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(26, N'David', N'Needham', CAST(N'1977-04-10' AS Date), 8, 1.80368641698905, 66.2372611170808, N'Peach', 1, 3, 8, 1, 7, N'bIymY6C57F', 1, N'David_Needham521@bungar.biz', 1278.93428270655, 956.084315044845, 71.2272568322845)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(27, N'Amelia', N'Doherty', CAST(N'1983-01-27' AS Date), 9, 1.91684958372118, 153.706749463317, N'Yellow', 3, 4, 217, 1, 8, N'fdySK8LtXF', 2, N'Amelia_Doherty955@gompie.com', 773.350709779817, 624.746291916234, 63.0833820933864)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(28, N'Katelyn', N'Skinner', CAST(N'1988-01-07' AS Date), 9, 2.27404246575853, 198.363093652466, N'Gray', 2, 1, 3, 1, 5, N'R7kWrojoyj', 3, N'Katelyn_Skinner7887@jiman.org', 1620.76606737206, 829.376350158535, 67.1073633982369)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(29, N'Shay', N'Ellery', CAST(N'1963-09-13' AS Date), 3, 2.13601254529134, 91.5757964679859, N'Magenta', 1, 3, 218, 3, 9, N'wlPlPAnBuO', 3, N'Shay_Ellery8411@ubusive.com', 1373.32609634582, 950.544471756809, 68.6816468707666)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(30, N'Chris', N'Rothwell', CAST(N'1988-07-17' AS Date), 9, 1.91165158604814, 87.9296727012515, N'Black', 3, 2, 222, 3, 4, N'lZ2PsiENcW', 2, N'Chris_Rothwell4067@sheye.org', 910.325375067687, 545.757128277215, 72.449610631191)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(31, N'Carrie', N'Wilson', CAST(N'1967-01-11' AS Date), 7, 1.44666976679427, 126.76858283196, N'Sepia', 4, 1, 222, 3, 5, N'WuKlBtzTS6', 3, N'Carrie_Wilson4010@jiman.org', 1531.32823532882, 728.52272250807, 79.5165785758368)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(32, N'Olivia', N'Mann', CAST(N'1965-09-05' AS Date), 2, 2.34028184513575, 189.543042923111, N'Carmine', 2, 1, 2, 1, 7, N'Gv6bRGkPxb', 1, N'Olivia_Mann778@vetan.org', 1684.98029399057, 807.05981099748, 76.3852873213521)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(33, N'Jaylene', N'Potter', CAST(N'1995-01-20' AS Date), 7, 1.57785382744756, 66.431882494796, N'Dark red', 3, 3, 5, 3, 8, N'jUJikTjrYk', 3, N'Jaylene_Potter6252@irrepsy.com', 1639.76294296131, 763.47376730967, 96.0301496558963)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(34, N'Madelyn', N'Smith', CAST(N'1982-06-13' AS Date), 1, 1.81442804244087, 110.733140444724, N'Aquamarine', 2, 1, 2, 1, 9, N'osjpRHnOGe', 3, N'Madelyn_Smith5261@dionrab.com', 1784.14832307545, 795.389410942974, 47.2280635397081)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(35, N'Ryan', N'Richardson', CAST(N'1963-11-17' AS Date), 1, 1.55730750148991, 101.297512305573, N'Silver', 5, 4, 6, 1, 2, N'pVrk13H2MP', 2, N'Ryan_Richardson8567@bungar.biz', 646.167251258235, 598.439226083662, 78.7852223337559)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(36, N'Ethan', N'Farrow', CAST(N'1993-11-01' AS Date), 9, 1.62436827338504, 124.71826420199, N'Emerald', 1, 3, 7, 3, 6, N'1OZI1dNjvk', 3, N'Ethan_Farrow4145@guentu.biz', 737.426605172188, 505.299971106136, 82.0829530670694)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(37, N'Chadwick', N'Yoman', CAST(N'1998-09-01' AS Date), 6, 1.8702547427594, 138.315707932839, N'Magenta', 4, 1, 221, 3, 2, N'WUcSZs3Sc4', 3, N'Chadwick_Yoman8451@gembat.biz', 1603.88629642869, 829.283090419734, 52.423989230033)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(38, N'Chad', N'Ingram', CAST(N'1976-02-23' AS Date), 1, 1.75542136540423, 127.955043326111, N'Magenta', 1, 2, 10, 1, 8, N'VP7a8UCiRD', 3, N'Chad_Ingram6454@zorer.org', 596.869332848056, 554.506454545775, 90.6241163916998)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(39, N'Gladys', N'Parker', CAST(N'1995-11-01' AS Date), 8, 2.04822162904228, 191.470074095982, N'Cadet blue', 2, 3, 3, 3, 1, N'AejFfga7xL', 3, N'Gladys_Parker301@eirey.tech', 783.673612972569, 839.786155090568, 85.6580523753809)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(40, N'Carissa', N'Carpenter', CAST(N'1959-11-15' AS Date), 3, 1.47175513965625, 33.2897144128986, N'Aqua', 3, 4, 8, 2, 9, N'QYvxzkyfv2', 3, N'Carissa_Carpenter4118@supunk.biz', 1259.0516760736, 990.048120040935, 90.677722541931)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(41, N'Benny', N'Davies', CAST(N'1972-10-30' AS Date), 3, 2.18142298002794, 116.293704805567, N'Apricot', 2, 3, 9, 3, 5, N'YqoOGYA4cM', 2, N'Benny_Davies7687@typill.biz', 1904.21810216932, 986.35013797523, 96.0169632751574)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(42, N'Chester', N'Mann', CAST(N'2001-08-20' AS Date), 5, 2.3610249283542, 45.4536888624791, N'Lavender', 2, 4, 1, 1, 8, N'S7oEi2weOb', 2, N'Chester_Mann5786@irrepsy.com', 888.911781206686, 962.455622875809, 85.5497095773694)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(43, N'Mason', N'Hall', CAST(N'1970-04-20' AS Date), 7, 2.21953403531552, 93.6003223399633, N'Cyan', 2, 4, 216, 3, 9, N'Ve8ha2Bd2j', 2, N'Mason_Hall5863@nanoff.biz', 1664.53881383154, 879.295005017563, 89.039194359928)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(44, N'Marjorie', N'Willis', CAST(N'1979-07-12' AS Date), 9, 1.55235450498404, 189.229469976029, N'Maroon', 2, 2, 3, 3, 3, N'ooqDQ45kza', 3, N'Marjorie_Willis3825@supunk.biz', 1802.32615147965, 950.863896402001, 96.8969113481682)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(45, N'Boris', N'Hood', CAST(N'1962-11-13' AS Date), 1, 1.69321306724717, 18.2553845412356, N'Peach', 3, 3, 9, 1, 2, N'IvE4ZZePtL', 2, N'Boris_Hood9723@zorer.org', 571.659805057878, 785.325248063693, 91.9450672594575)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(46, N'Rosa', N'Robertson', CAST(N'1975-05-20' AS Date), 8, 1.67039298101812, 139.330261456003, N'coral', 4, 1, 10, 1, 6, N'dZCkeP0ktv', 1, N'Rosa_Robertson6786@liret.org', 546.797233919984, 816.799403823819, 65.2292287606882)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(47, N'Russel', N'Rixon', CAST(N'1969-03-02' AS Date), 4, 2.1264465222724, 19.3385739570198, N'Red', 3, 1, 10, 3, 8, N'KCph1zsVUy', 1, N'Russel_Rixon1912@zorer.org', 1665.19379566479, 807.329278466911, 48.0493279053128)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(48, N'Doug', N'Kelly', CAST(N'1988-02-08' AS Date), 6, 2.35989162426437, 197.597135412319, N'Rust', 3, 1, 217, 2, 3, N'91TInN6zXP', 2, N'Doug_Kelly739@yahoo.com', 1889.95231058539, 561.633125039578, 62.1033886583072)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(49, N'Hank', N'Horton', CAST(N'1974-10-18' AS Date), 6, 1.78145719253526, 187.326323024615, N'Brown', 4, 3, 216, 1, 2, N'L5Dnu4xhUl', 1, N'Hank_Horton3589@tonsy.org', 818.987516743591, 939.401143159904, 78.4116087618338)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(50, N'Barney', N'Gray', CAST(N'1958-10-30' AS Date), 7, 1.67905355686278, 179.437270619179, N'Silver', 3, 3, 3, 3, 5, N'qLtVIV9iPy', 2, N'Barney_Gray2835@bauros.biz', 1609.00366699556, 607.748926410335, 66.9622399434272)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(51, N'Florence', N'Wright', CAST(N'1995-01-16' AS Date), 2, 2.36707297347815, 141.962729179749, N'Cyan', 1, 2, 3, 1, 2, N'bhJa00GNML', 3, N'Florence_Wright9019@eirey.tech', 612.529573763967, 920.775074596878, 51.973964495572)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(52, N'Iris', N'Randall', CAST(N'1998-11-11' AS Date), 8, 1.74929582306617, 155.515693413334, N'Emerald', 4, 1, 1, 3, 5, N'ornaLQIKI3', 1, N'Iris_Randall6513@iatim.tech', 1983.5920283881, 900.619369195597, 56.6696031678792)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(53, N'Michael', N'Durrant', CAST(N'1960-02-19' AS Date), 8, 1.81019265698744, 8.7524590332771, N'Black', 5, 3, 1, 2, 8, N'Zsw5mI39Zm', 3, N'Michael_Durrant7921@supunk.biz', 1953.69174085823, 632.4514604348, 77.9173777266021)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(54, N'Domenic', N'Allcott', CAST(N'1966-09-24' AS Date), 1, 1.606548062715, 151.915773419624, N'Aqua', 1, 4, 221, 2, 8, N'uBEDAVDHmg', 3, N'Domenic_Allcott1032@mafthy.com', 1808.23650748573, 778.379692881545, 75.9509036466251)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(55, N'Alexander', N'Stewart', CAST(N'1980-02-04' AS Date), 3, 1.89982000724404, 92.3849559120764, N'Blue', 1, 3, 218, 3, 1, N'pm2qgvK18l', 2, N'Alexander_Stewart1034@atink.com', 717.950338089816, 828.350686848793, 57.9349870527792)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(56, N'Felicity', N'Marshall', CAST(N'1987-11-05' AS Date), 3, 2.20773479482519, 4.30071947458234, N'Gray', 2, 4, 4, 3, 8, N'QVTabxQ44s', 3, N'Felicity_Marshall3779@bretoux.com', 1706.47364303725, 927.953033586942, 40.7036265389545)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(57, N'Lynn', N'Barclay', CAST(N'1983-06-22' AS Date), 6, 2.00026172576484, 155.391476519588, N'Capri', 3, 3, 2, 1, 5, N'DeNzDYuhy7', 1, N'Lynn_Barclay374@joiniaa.com', 1886.6029281484, 736.277649516369, 93.2265327522655)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(58, N'Alan', N'Nelson', CAST(N'1972-09-26' AS Date), 5, 1.50642089885959, 32.9644659003077, N'Black', 5, 1, 221, 3, 5, N'pL0w9Ir1AT', 1, N'Alan_Nelson8623@yahoo.com', 598.803914379703, 607.131296567214, 58.2991033155933)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(59, N'Iris', N'Bolton', CAST(N'1959-08-07' AS Date), 1, 1.72199999891315, 166.233037767575, N'Cerise', 4, 1, 3, 1, 3, N'eEGJErxYGT', 3, N'Iris_Bolton2202@gmail.com', 1312.63253498293, 511.782623380321, 95.6981398927505)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(60, N'Emma', N'Jobson', CAST(N'1958-08-17' AS Date), 7, 1.41418117806976, 151.863594757795, N'Lime', 2, 4, 217, 2, 3, N'06SlV1Md2P', 2, N'Emma_Jobson7683@sveldo.biz', 1137.18233115048, 701.721181448419, 68.1259317086665)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(61, N'Barney', N'Chadwick', CAST(N'1967-09-18' AS Date), 8, 1.40406285980906, 94.5742096489175, N'Pink', 5, 1, 216, 3, 2, N'g3UqMgTpIJ', 2, N'Barney_Chadwick7846@cispeto.com', 890.340666381335, 916.130710076136, 62.8497423677937)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(62, N'Julia', N'Stuart', CAST(N'1997-10-24' AS Date), 8, 2.09042030055561, 77.8945266301253, N'coral', 5, 2, 7, 2, 4, N'KeNOSqzG60', 2, N'Julia_Stuart4824@naiker.biz', 1169.80261249505, 638.416813006353, 80.6654764184102)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(63, N'Denny', N'Huggins', CAST(N'1997-01-10' AS Date), 1, 1.43388548131747, 132.710707610338, N'Olive', 1, 2, 4, 3, 2, N'n36FNeyFTZ', 2, N'Denny_Huggins5666@sheye.org', 511.149715252756, 973.34546794479, 85.8360794604924)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(64, N'Josh', N'Morris', CAST(N'1988-01-23' AS Date), 6, 2.20075262244826, 78.1356426352335, N'Lime', 1, 1, 9, 3, 5, N'UQoiztjZwp', 1, N'Josh_Morris2001@gompie.com', 781.974000659294, 871.854268058135, 51.1536566788115)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(65, N'Analise', N'Ulyatt', CAST(N'1978-04-19' AS Date), 6, 1.49860772364708, 79.0557134398519, N'Emerald', 1, 4, 7, 2, 6, N'COMK1N0Y7R', 3, N'Analise_Ulyatt7672@eirey.tech', 1489.68581538633, 891.959565035049, 51.9181801913856)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(66, N'Julian', N'Irving', CAST(N'1970-06-15' AS Date), 8, 2.14437058844807, 91.3529623799738, N'Gold', 4, 3, 1, 2, 6, N'N1tWoJueZp', 3, N'Julian_Irving5348@mafthy.com', 749.226467815333, 884.699892550567, 79.351061684243)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(67, N'Monica', N'Bryant', CAST(N'1967-12-21' AS Date), 8, 2.11567173149235, 154.079670832064, N'Capri', 3, 2, 8, 1, 1, N'XJRH25Bqlk', 2, N'Monica_Bryant4407@bungar.biz', 1396.60799136088, 824.913397728891, 53.8358550890516)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(68, N'Cedrick', N'Brown', CAST(N'1982-04-27' AS Date), 4, 1.61459761970425, 141.399160003475, N'Gold', 2, 2, 9, 2, 5, N'VwKdymOotS', 3, N'Cedrick_Brown5706@bulaffy.com', 1531.82181968159, 998.445809375237, 87.1529315198552)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(69, N'Hank', N'Brooks', CAST(N'1967-09-10' AS Date), 1, 2.14920408322904, 22.0781354396968, N'Ruby', 2, 3, 9, 2, 5, N'TTBjoupVXf', 1, N'Hank_Brooks6559@infotech44.tech', 1622.37820623926, 711.410710091894, 67.5096059578981)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(70, N'Dalia', N'Connor', CAST(N'1966-05-06' AS Date), 4, 1.58502236212838, 49.5324928786291, N'Capri', 3, 3, 8, 2, 9, N'mwWrY4RAZa', 3, N'Dalia_Connor3351@elnee.tech', 538.404681287429, 711.951019021194, 41.6726518965665)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(71, N'Bart', N'Thomson', CAST(N'1977-06-24' AS Date), 9, 2.37004124986475, 3.93201082848572, N'Mauve', 5, 3, 4, 2, 5, N'xvNHCliGHc', 2, N'Bart_Thomson5620@yahoo.com', 1172.16235463236, 874.357874113302, 97.8937312750582)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(72, N'Liam', N'Bentley', CAST(N'1993-06-04' AS Date), 5, 2.34550641437318, 160.993808390104, N'Camel', 5, 3, 7, 1, 4, N'46jvCirTWM', 3, N'Liam_Bentley9941@twace.org', 792.593154235088, 836.468704901388, 54.7174341765779)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(73, N'Grace', N'Price', CAST(N'1992-02-21' AS Date), 1, 1.75923011803964, 63.831512545157, N'Balck', 1, 3, 9, 2, 5, N'dylYPaQrik', 1, N'Grace_Price7610@mafthy.com', 626.242594106702, 996.73441723908, 60.2847589358151)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(74, N'Hayden', N'Andersson', CAST(N'1969-03-30' AS Date), 2, 2.35199383932724, 114.724267212546, N'Gold', 3, 3, 216, 1, 8, N'uwOk1WKOMz', 1, N'Hayden_Andersson4199@elnee.tech', 972.934528555225, 636.871370273582, 90.0236985930352)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(75, N'Mary', N'Foxley', CAST(N'2000-09-06' AS Date), 4, 2.31819594144737, 162.011660085996, N'Turquoise', 1, 4, 6, 3, 2, N'jgPwXny8zu', 2, N'Mary_Foxley7166@acrit.org', 1003.81398599586, 603.544438587755, 75.2819186143027)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(76, N'Manuel', N'Bullock', CAST(N'1962-04-02' AS Date), 7, 2.30851992736967, 165.244494299053, N'Black', 1, 2, 7, 2, 8, N'yjdM7iVE0h', 2, N'Manuel_Bullock4613@jiman.org', 1091.02938107961, 789.989282374265, 47.6021917958754)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(77, N'Angela', N'Knight', CAST(N'1964-06-11' AS Date), 6, 1.97947747110365, 126.896056389388, N'Champagne', 4, 4, 9, 1, 3, N'DmaNrKVy8H', 2, N'Angela_Knight9465@hourpy.biz', 1859.6619605467, 919.995638606136, 44.1554352418312)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(78, N'Eduardo', N'Hood', CAST(N'1997-05-02' AS Date), 3, 1.68200395884086, 27.2922517942694, N'Apricot', 5, 4, 8, 1, 1, N'0usOzusVxp', 1, N'Eduardo_Hood5248@vetan.org', 1958.70641380302, 905.120721680634, 92.0878740959279)
INSERT [dbo].[employee]
	([id], [names], [surnames], [date_birth], [profession_id], [height], [weight], [eyes_color], [blood_type_id], [civil_status_id], [country_id], [id_user_status], [id_user_pwd], [username], [id_type_user], [email], [salary_month], [salary_fortnight], [salary_hour])
VALUES
	(79, N'Martin', N'Morgan', CAST(N'1987-09-01' AS Date), 4, 2.03367421442348, 197.098105602478, N'Pink', 1, 2, 219, 3, 2, N'IpKksqEW0e', 1, N'Martin_Morgan2855@famism.biz', 862.276783744468, 950.932593797768, 83.2234922983793)
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[employee_consulting_room] ON

INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(1, 7, 41, 13)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(2, 22, 26, 16)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(3, 4, 40, 52)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(4, 38, 2, 50)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(5, 30, 58, 25)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(6, 47, 70, 55)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(7, 45, 5, 81)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(8, 43, 14, 93)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(9, 27, 40, 57)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(10, 10, 48, 30)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(11, 43, 18, 86)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(12, 2, 2, 61)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(13, 23, 2, 80)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(14, 20, 67, 66)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(15, 14, 8, 42)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(16, 37, 21, 57)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(17, 27, 41, 69)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(18, 43, 15, 86)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(19, 18, 19, 35)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(20, 10, 67, 80)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(21, 29, 66, 89)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(22, 11, 68, 78)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(23, 32, 42, 77)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(24, 32, 36, 53)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(25, 37, 39, 16)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(26, 8, 45, 9)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(27, 26, 60, 26)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(28, 1, 48, 9)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(29, 30, 74, 5)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(30, 49, 51, 76)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(31, 13, 51, 52)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(32, 49, 60, 2)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(33, 38, 4, 20)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(34, 32, 8, 72)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(35, 40, 68, 7)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(36, 9, 9, 67)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(37, 35, 15, 65)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(38, 14, 51, 10)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(39, 27, 43, 24)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(40, 40, 46, 92)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(41, 37, 48, 87)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(42, 1, 28, 22)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(43, 1, 56, 71)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(44, 7, 29, 56)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(45, 44, 65, 69)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(46, 27, 16, 74)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(47, 1, 33, 87)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(48, 18, 22, 49)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(49, 21, 34, 24)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(50, 39, 71, 43)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(51, 13, 67, 46)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(52, 42, 59, 53)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(53, 42, 12, 36)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(54, 48, 43, 80)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(55, 5, 29, 81)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(56, 20, 1, 37)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(57, 25, 59, 18)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(58, 3, 28, 35)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(59, 20, 67, 38)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(60, 32, 43, 30)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(61, 24, 27, 43)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(62, 7, 47, 97)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(63, 12, 52, 42)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(64, 11, 13, 28)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(65, 25, 30, 71)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(66, 34, 2, 61)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(67, 38, 3, 44)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(68, 43, 22, 18)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(69, 13, 16, 52)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(70, 6, 34, 89)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(71, 8, 16, 58)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(72, 4, 36, 22)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(73, 19, 72, 75)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(74, 42, 13, 32)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(75, 47, 22, 62)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(76, 44, 41, 97)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(77, 32, 53, 87)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(78, 38, 65, 55)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(79, 43, 46, 7)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(80, 13, 66, 42)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(81, 23, 9, 24)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(82, 26, 5, 95)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(83, 35, 33, 91)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(84, 25, 23, 6)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(85, 42, 69, 86)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(86, 7, 68, 99)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(87, 28, 26, 66)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(88, 27, 35, 75)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(89, 1, 28, 35)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(90, 2, 16, 87)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(91, 8, 9, 8)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(92, 17, 29, 5)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(93, 5, 29, 6)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(94, 33, 15, 11)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(95, 3, 12, 40)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(96, 41, 68, 93)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(97, 34, 55, 69)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(98, 4, 52, 53)
INSERT [dbo].[employee_consulting_room]
	([id], [id_consulting_room], [id_employee], [id_schedule_employee])
VALUES
	(99, 38, 68, 65)
GO
SET IDENTITY_INSERT [dbo].[employee_consulting_room] OFF
GO
SET IDENTITY_INSERT [dbo].[employee_direction] ON

INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(1, N'Calle Gerardo Barrios, 17 AV. Sur #412', 1)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(2, N'Calle Gerardo Barrios, 18 AV. Sur #14', 2)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(3, N'Calle Gerardo Barrios, 17 AV. Sur #405', 3)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(4, N'Blvd Del Ejérc Nac Urb Altos Del Boulevard 50 Av Nte', 1)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(5, N'Blvd Del Ejérc Nac Urb Altos Del Boulevard 49 Av Sur', 6)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(6, N'Blvd De los heroes 30 Av Sur', 6)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(7, N'Alam Roosevelt 37 Av S 117', 6)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(8, N'Alam Roosevelt 20 Av S 10', 1)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(9, N'Alam Roosevelt 19 Av N 120', 1)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(10, N'Col Lincoln Cl Castro Morán 7 - 1', 2)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(11, N'89394 American Ash Pass', 1)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(12, N'35 Killdeer Place', 2)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(13, N'195 Mesta Street', 3)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(14, N'68 Glendale Point', 4)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(15, N'6040 Norway Maple Avenue', 5)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(16, N'689 Oakridge Crossing', 6)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(17, N'5 Ridgeview Road', 7)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(18, N'5 Eastwood Center', 8)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(19, N'417 Waywood Parkway', 9)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(20, N'89 Ilene Point', 10)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(21, N'9 Ridgeview Center', 11)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(22, N'5557 Rieder Plaza', 12)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(23, N'3 Eastwood Junction', 13)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(24, N'9430 Sunfield Avenue', 14)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(25, N'42154 Longview Circle', 15)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(26, N'74 Burrows Terrace', 16)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(27, N'2044 Macpherson Lane', 17)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(28, N'2 Glacier Hill Circle', 18)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(29, N'36 Kings Drive', 19)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(30, N'671 Hollow Ridge Road', 19)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(31, N'75231 7th Avenue', 21)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(32, N'1 Porter Crossing', 22)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(33, N'0726 Buena Vista Circle', 23)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(34, N'6224 Butternut Alley', 24)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(35, N'78 Ridge Oak Street', 25)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(36, N'23087 Little Fleur Drive', 26)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(37, N'13 Lerdahl Street', 27)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(38, N'35889 Hallows Place', 28)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(39, N'94145 Shelley Crossing', 29)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(40, N'36 Mcguire Trail', 29)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(41, N'7620 Cardinal Circle', 30)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(42, N'6258 Nelson Court', 32)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(43, N'43 Meadow Valley Hill', 33)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(44, N'41806 Birchwood Trail', 34)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(45, N'9 Golf Course Drive', 35)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(46, N'92859 Cardinal Plaza', 36)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(47, N'8222 Holmberg Alley', 37)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(48, N'182 Loomis Street', 38)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(49, N'947 Tomscot Street', 39)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(50, N'36179 Porter Court', 40)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(51, N'23 Tony Street', 41)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(52, N'26523 Toban Hill', 42)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(53, N'119 Katie Terrace', 43)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(54, N'7 Orin Center', 44)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(55, N'031 Hallows Point', 45)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(56, N'144 Sugar Avenue', 46)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(57, N'28304 Westport Center', 47)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(58, N'4721 Hintze Road', 48)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(59, N'0 Sugar Street', 49)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(60, N'7693 Nelson Point', 50)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(61, N'67 Green Ridge Hill', 51)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(62, N'802 Cottonwood Plaza', 52)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(63, N'5562 Crest Line Center', 53)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(64, N'5608 Huxley Point', 55)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(65, N'03 Park Meadow Center', 55)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(66, N'9155 Vera Point', 56)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(67, N'0 Messerschmidt Place', 57)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(68, N'57 Brown Trail', 58)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(69, N'79516 Harper Drive', 59)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(70, N'2508 Hudson Crossing', 60)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(71, N'64145 Colorado Junction', 61)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(72, N'77 Brentwood Terrace', 62)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(73, N'59 Talisman Drive', 63)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(74, N'850 Dennis Center', 64)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(75, N'297 Nevada Hill', 65)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(76, N'03 Ridge Oak Center', 66)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(77, N'79 Maple Wood Center', 67)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(78, N'1229 Messerschmidt Terrace', 68)
INSERT [dbo].[employee_direction]
	([id], [direction], [employee_id])
VALUES
	(79, N'62999 Sloan Terrace', 69)
SET IDENTITY_INSERT [dbo].[employee_direction] OFF
GO
SET IDENTITY_INSERT [dbo].[employee_log] ON

INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(1, 1, CAST(N'2019-08-17T00:00:00.000' AS DateTime), N'30.186.47.252', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(2, 2, CAST(N'2021-07-01T00:00:00.000' AS DateTime), N'186.220.219.252', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(3, 3, CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'146.191.118.121', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(4, 4, CAST(N'2020-05-22T00:00:00.000' AS DateTime), N'158.186.251.189', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(5, 5, CAST(N'2020-10-04T00:00:00.000' AS DateTime), N'84.145.121.79', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(6, 6, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'0.17.12.229', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(7, 7, CAST(N'2019-02-21T00:00:00.000' AS DateTime), N'21.20.98.27', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(8, 8, CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'127.113.244.255', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(9, 9, CAST(N'2020-05-24T00:00:00.000' AS DateTime), N'20.139.110.6', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(10, 10, CAST(N'2019-03-25T00:00:00.000' AS DateTime), N'154.59.168.154', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(11, 11, CAST(N'2019-03-03T00:00:00.000' AS DateTime), N'123.46.103.93', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(12, 12, CAST(N'2020-06-09T00:00:00.000' AS DateTime), N'37.139.17.88', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(13, 13, CAST(N'2020-09-19T00:00:00.000' AS DateTime), N'174.193.213.203', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(14, 14, CAST(N'2020-10-26T00:00:00.000' AS DateTime), N'177.121.128.201', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(15, 15, CAST(N'2020-06-29T00:00:00.000' AS DateTime), N'224.95.134.36', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(16, 16, CAST(N'2020-12-20T00:00:00.000' AS DateTime), N'68.102.229.149', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(17, 17, CAST(N'2021-06-16T00:00:00.000' AS DateTime), N'4.157.158.242', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(18, 18, CAST(N'2021-01-14T00:00:00.000' AS DateTime), N'205.32.66.91', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(19, 19, CAST(N'2019-12-16T00:00:00.000' AS DateTime), N'113.170.178.242', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(20, 21, CAST(N'2019-02-09T00:00:00.000' AS DateTime), N'92.162.93.48', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(21, 21, CAST(N'2020-12-22T00:00:00.000' AS DateTime), N'9.55.228.223', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(22, 22, CAST(N'2019-05-11T00:00:00.000' AS DateTime), N'169.214.95.76', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(23, 23, CAST(N'2019-11-24T00:00:00.000' AS DateTime), N'80.184.28.92', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(24, 24, CAST(N'2021-05-02T00:00:00.000' AS DateTime), N'31.183.74.168', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(25, 25, CAST(N'2020-01-17T00:00:00.000' AS DateTime), N'151.158.51.48', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(26, 26, CAST(N'2020-02-28T00:00:00.000' AS DateTime), N'125.145.204.75', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(27, 27, CAST(N'2019-08-13T00:00:00.000' AS DateTime), N'68.192.53.181', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(28, 28, CAST(N'2021-05-19T00:00:00.000' AS DateTime), N'221.69.230.63', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(29, 29, CAST(N'2020-09-22T00:00:00.000' AS DateTime), N'135.92.117.237', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(30, 30, CAST(N'2019-01-22T00:00:00.000' AS DateTime), N'207.39.172.38', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(31, 30, CAST(N'2021-06-10T00:00:00.000' AS DateTime), N'17.133.9.107', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(32, 32, CAST(N'2020-09-26T00:00:00.000' AS DateTime), N'190.113.200.249', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(33, 33, CAST(N'2019-09-02T00:00:00.000' AS DateTime), N'173.139.135.91', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(34, 34, CAST(N'2021-01-10T00:00:00.000' AS DateTime), N'3.30.148.83', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(35, 35, CAST(N'2019-04-17T00:00:00.000' AS DateTime), N'251.39.153.104', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(36, 36, CAST(N'2019-01-07T00:00:00.000' AS DateTime), N'175.99.237.36', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(37, 37, CAST(N'2019-09-05T00:00:00.000' AS DateTime), N'222.235.56.97', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(38, 38, CAST(N'2021-06-17T00:00:00.000' AS DateTime), N'213.137.200.57', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(39, 39, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'53.98.198.64', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(40, 40, CAST(N'2019-05-01T00:00:00.000' AS DateTime), N'99.210.40.193', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(41, 41, CAST(N'2020-09-01T00:00:00.000' AS DateTime), N'234.160.51.149', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(42, 42, CAST(N'2021-09-12T00:00:00.000' AS DateTime), N'78.100.57.149', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(43, 43, CAST(N'2021-05-02T00:00:00.000' AS DateTime), N'89.158.70.23', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(44, 44, CAST(N'2019-05-18T00:00:00.000' AS DateTime), N'50.2.173.98', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(45, 45, CAST(N'2020-07-02T00:00:00.000' AS DateTime), N'180.246.206.151', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(46, 46, CAST(N'2021-09-06T00:00:00.000' AS DateTime), N'27.98.31.42', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(47, 47, CAST(N'2020-05-01T00:00:00.000' AS DateTime), N'186.16.134.71', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(48, 48, CAST(N'2020-03-11T00:00:00.000' AS DateTime), N'68.46.248.84', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(49, 49, CAST(N'2019-04-26T00:00:00.000' AS DateTime), N'33.113.54.168', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(50, 50, CAST(N'2020-04-25T00:00:00.000' AS DateTime), N'156.139.254.82', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(51, 51, CAST(N'2018-12-12T00:00:00.000' AS DateTime), N'239.133.36.3', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(52, 52, CAST(N'2019-02-02T00:00:00.000' AS DateTime), N'83.212.225.87', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(53, 53, CAST(N'2019-09-17T00:00:00.000' AS DateTime), N'236.55.21.12', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(54, 53, CAST(N'2019-03-29T00:00:00.000' AS DateTime), N'197.173.206.89', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(55, 55, CAST(N'2020-06-30T00:00:00.000' AS DateTime), N'216.7.168.249', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(56, 56, CAST(N'2019-08-28T00:00:00.000' AS DateTime), N'33.142.76.80', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(57, 57, CAST(N'2018-12-23T00:00:00.000' AS DateTime), N'16.183.179.139', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(58, 58, CAST(N'2021-07-27T00:00:00.000' AS DateTime), N'54.78.171.246', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(59, 59, CAST(N'2021-03-20T00:00:00.000' AS DateTime), N'60.141.41.83', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(60, 60, CAST(N'2019-01-26T00:00:00.000' AS DateTime), N'221.202.83.172', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(61, 61, CAST(N'2018-10-23T00:00:00.000' AS DateTime), N'237.143.99.222', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(62, 62, CAST(N'2019-09-29T00:00:00.000' AS DateTime), N'167.222.226.199', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(63, 63, CAST(N'2020-05-20T00:00:00.000' AS DateTime), N'16.178.106.98', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(64, 64, CAST(N'2021-02-01T00:00:00.000' AS DateTime), N'12.18.5.147', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(65, 65, CAST(N'2021-06-11T00:00:00.000' AS DateTime), N'124.24.21.79', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(66, 66, CAST(N'2019-12-02T00:00:00.000' AS DateTime), N'62.245.42.130', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(67, 67, CAST(N'2019-01-20T00:00:00.000' AS DateTime), N'175.178.162.47', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(68, 68, CAST(N'2019-06-23T00:00:00.000' AS DateTime), N'56.3.146.217', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(69, 69, CAST(N'2020-06-10T00:00:00.000' AS DateTime), N'126.165.227.74', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(70, 70, CAST(N'2019-03-01T00:00:00.000' AS DateTime), N'228.113.117.109', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(71, 71, CAST(N'2019-01-09T00:00:00.000' AS DateTime), N'67.147.185.84', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(72, 72, CAST(N'2019-12-21T00:00:00.000' AS DateTime), N'91.142.116.20', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(73, 73, CAST(N'2021-09-25T00:00:00.000' AS DateTime), N'162.20.210.107', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(74, 74, CAST(N'2019-05-18T00:00:00.000' AS DateTime), N'254.167.48.245', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(75, 75, CAST(N'2021-05-02T00:00:00.000' AS DateTime), N'70.106.219.164', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(76, 76, CAST(N'2020-08-28T00:00:00.000' AS DateTime), N'160.246.183.158', 1)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(77, 77, CAST(N'2019-05-07T00:00:00.000' AS DateTime), N'10.47.224.47', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(78, 78, CAST(N'2019-08-12T00:00:00.000' AS DateTime), N'91.187.46.3', 2)
INSERT [dbo].[employee_log]
	([id], [id_employee], [generation_date], [ip_device], [id_log_type])
VALUES
	(79, 79, CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'126.23.143.52', 1)
SET IDENTITY_INSERT [dbo].[employee_log] OFF
GO
SET IDENTITY_INSERT [dbo].[hospital] ON

INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(1, N'Hospital San Juan', N'29 Cl Pte y 11 Av Nte Bo San Miguelito', 1, 25)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(2, N'Hospital San Miguel', N'28 Cl Pte y 12 Av Nte Bo San Miguelito', 4, 25)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(3, N'Hospital Centro Medico', N'Alam Roosevelt 37 Av S 114', 10, 30)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(4, N'Hospital La familia', N'Alam Roosevelt 35 Av N 120', 9, 100)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(5, N'Hospital Salud integral', N'Alam San Juan 20 Av S 113', 3, 30)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(6, N'Hospital de la mujer', N'Alam Roosevelt 37 Av S 114', 7, 30)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(7, N'Centro Medico general', N'Calle Gerardo Barrios, 18 AV. Sur #350', 1, 30)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(8, N'Centro Lopez Herrera', N'Calle Gustavo Guerrero, 14 AV. Norte #20', 2, 20)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(9, N'Centro Medico Benito Martinez', N'Calle Luis Poma, 20 AV. Sur #10', 3, 50)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(10, N'Hospital El Museo', N'Calle el museo, 1 AV. Norte #142', 6, 63)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(11, N'Centro Medico El conejo', N'Calle el conejo, 2 AV. Sur #351', 1, 10)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(12, N'Emma', N'Empress  Drive, 5843', 3, 277)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(13, N'Joy', N'Geary   Hill, 5511', 9, 498)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(14, N'Julius', N'Endsleigh  Route, 5228', 9, 250)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(15, N'Julian', N'Udall   Way, 341', 5, 230)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(16, N'Oliver', N'Battersea   Street, 4084', 8, 268)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(17, N'Madelyn', N'Maple Road, 6358', 5, 445)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(18, N'Jayden', N'Zealand Lane, 400', 2, 350)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(19, N'Sara', N'Canning  Way, 2753', 3, 365)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(20, N'Cassidy', N'Cheltenham  Hill, 7724', 1, 17)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(21, N'Kassandra', N'Blackwall  Vale, 800', 5, 85)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(22, N'Gabriel', N'Blackwall  Lane, 4597', 6, 319)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(23, N'Marvin', N'Linda   Drive, 3948', 7, 306)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(24, N'Peter', N'Geary   Vale, 5822', 8, 297)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(25, N'Carla', N'Vine  Crossroad, 4318', 8, 107)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(26, N'Aleksandra', N'Hampden  Drive, 6783', 5, 451)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(27, N'Joyce', N'Aspen Walk, 6579', 1, 378)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(28, N'Selena', N'Viscount   Route, 3367', 4, 15)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(29, N'Adelaide', N'Linda Lane Avenue, 6564', 6, 25)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(30, N'Harvey', N'Heritage Road, 7491', 4, 343)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(31, N'Maggie', N'Cedarne  Pass, 2256', 7, 95)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(32, N'Hannah', N'Lincoln Lane, 7133', 8, 342)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(33, N'Melania', N'Andsell    Alley, 4400', 2, 350)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(34, N'Jules', N'Norland  Road, 9589', 8, 164)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(35, N'Mayleen', N'Bicknell  Lane, 6663', 1, 110)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(36, N'Caleb', N'Shepherds  Alley, 7097', 8, 441)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(37, N'Kamila', N'Castle Drive, 7356', 4, 177)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(38, N'Bob', N'Cliff  Boulevard, 2408', 9, 433)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(39, N'Keira', N'Longman   Tunnel, 8545', 8, 339)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(40, N'Maya', N'Cloth  Road, 7676', 5, 166)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(41, N'Alex', N'Gavel   Pass, 3434', 8, 240)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(42, N'Josh', N'Carltoun   Street, 4906', 9, 312)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(43, N'Manuel', N'Elba  Grove, 834', 4, 224)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(44, N'Maggie', N'Armory  Crossroad, 9810', 2, 316)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(45, N'George', N'Monroe Drive, 8987', 1, 224)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(46, N'Greta', N'Dyott   Lane, 1691', 4, 97)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(47, N'Rick', N'Caedmon  Route, 8853', 1, 6)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(48, N'Makena', N'Carolina  Rue, 1121', 8, 235)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(49, N'Elena', N'Blandford  Route, 6140', 8, 439)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(50, N'Macy', N'Balfe   Way, 9513', 2, 227)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(51, N'Gabriel', N'Clyde Lane, 9668', 3, 134)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(52, N'Morgan', N'Bolton  Alley, 1495', 6, 244)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(53, N'John', N'Cleaver Walk, 1392', 9, 428)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(54, N'Danny', N'Castile  Hill, 5384', 3, 176)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(55, N'Bryce', N'Tiptree   Lane, 8774', 6, 384)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(56, N'Maddison', N'Berry  Vale, 6289', 2, 253)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(57, N'Nina', N'King William  Grove, 2263', 4, 95)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(58, N'Chuck', N'Chandos  Walk, 1982', 6, 49)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(59, N'Aileen', N'Bury  Grove, 9416', 9, 459)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(60, N'Samantha', N'Wakley   Tunnel, 657', 7, 373)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(61, N'Clint', N'Cobden  Avenue, 7767', 4, 236)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(62, N'Brad', N'Eaglet  Boulevard, 9206', 2, 262)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(63, N'Maggie', N'Berriman  Rue, 9570', 7, 40)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(64, N'Luke', N'Kilner   Rue, 2853', 6, 162)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(65, N'David', N'Balham   Vale, 6742', 4, 363)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(66, N'Daphne', N'East Grove, 2494', 6, 498)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(67, N'Brad', N'Chicksand  Road, 7548', 4, 99)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(68, N'Rosalie', N'Carnegie   Alley, 463', 7, 41)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(69, N'Carter', N'Bacton   Avenue, 7606', 2, 327)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(70, N'Cedrick', N'Chamberlain  Tunnel, 7176', 8, 179)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(71, N'Harvey', N'Bales  Pass, 463', 1, 188)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(72, N'Oliver', N'Victoria  Hill, 1956', 2, 456)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(73, N'Oliver', N'Blore  Way, 7769', 6, 178)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(74, N'Ruby', N'Thoresby   Avenue, 4783', 4, 280)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(75, N'Stella', N'West Road, 5943', 8, 474)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(76, N'Bryon', N'Baynes  Drive, 5841', 7, 480)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(77, N'Chester', N'Boleyn  Hill, 211', 7, 50)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(78, N'Margot', N'Collins  Lane, 1539', 1, 282)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(79, N'Johnny', N'Chestnut Rise Hill, 7412', 8, 385)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(80, N'Vicky', N'Victoria Rise Way, 2861', 9, 422)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(81, N'Phillip', N'Under  Street, 9388', 4, 457)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(82, N'Doug', N'Cable    Grove, 5990', 5, 37)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(83, N'Chester', N'Elf  Grove, 8369', 4, 440)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(84, N'Hank', N'Elgood   Crossroad, 8901', 2, 344)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(85, N'Nick', N'Becher  Pass, 7782', 3, 17)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(86, N'Kieth', N'Cave   Street, 6095', 6, 9)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(87, N'Darlene', N'Arlington  Vale, 3551', 7, 385)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(88, N'Christine', N'Wakley   Grove, 5797', 9, 130)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(89, N'Maxwell', N'Bel   Road, 2024', 3, 29)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(90, N'Anthony', N'Betton  Walk, 2047', 1, 209)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(91, N'Nate', N'Fieldstone Street, 7335', 8, 324)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(92, N'Johnny', N'Paris   Hill, 4939', 9, 265)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(93, N'Gladys', N'Babmaes    Street, 2921', 7, 489)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(94, N'Christine', N'Linden Route, 4256', 9, 428)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(95, N'Tania', N'Bletchley   Vale, 6557', 4, 285)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(96, N'Eduardo', N'Clerkenwell Crossroad, 1015', 6, 291)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(97, N'Ilona', N'Cleveland  Pass, 3058', 5, 215)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(98, N'Marissa', N'Clere  Lane, 2677', 4, 186)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(99, N'Moira', N'Pine Boulevard, 9011', 8, 276)
GO
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(100, N'Eryn', N'Camdenhurst   Crossroad, 5664', 9, 12)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(101, N'Gil', N'Glenwood Street, 1624', 4, 460)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(102, N'Phillip', N'Marina  Vale, 4337', 4, 90)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(103, N'Tess', N'Central  Route, 9143', 2, 49)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(104, N'Lorraine', N'Arundel   Street, 8209', 1, 470)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(105, N'Lucy', N'Bennett  Pass, 5666', 4, 145)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(106, N'Brad', N'Betton  Alley, 416', 5, 102)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(107, N'Carl', N'Dunstable   Grove, 3633', 4, 490)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(108, N'Marvin', N'Dunstans  Rue, 7622', 9, 495)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(109, N'Harvey', N'Abbey   Boulevard, 3655', 9, 239)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(110, N'Rocco', N'Durnford  Crossroad, 184', 9, 290)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(111, N'Clint', N'Cleaver Crossroad, 7465', 9, 235)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(112, N'Emma', N'Empress  Drive, 5843', 3, 277)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(113, N'Joy', N'Geary   Hill, 5511', 9, 498)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(114, N'Julius', N'Endsleigh  Route, 5228', 9, 250)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(115, N'Julian', N'Udall   Way, 341', 5, 230)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(116, N'Oliver', N'Battersea   Street, 4084', 8, 268)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(117, N'Madelyn', N'Maple Road, 6358', 5, 445)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(118, N'Jayden', N'Zealand Lane, 400', 2, 350)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(119, N'Sara', N'Canning  Way, 2753', 3, 365)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(120, N'Cassidy', N'Cheltenham  Hill, 7724', 1, 17)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(121, N'Kassandra', N'Blackwall  Vale, 800', 5, 85)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(122, N'Gabriel', N'Blackwall  Lane, 4597', 6, 319)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(123, N'Marvin', N'Linda   Drive, 3948', 7, 306)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(124, N'Peter', N'Geary   Vale, 5822', 8, 297)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(125, N'Carla', N'Vine  Crossroad, 4318', 8, 107)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(126, N'Aleksandra', N'Hampden  Drive, 6783', 5, 451)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(127, N'Joyce', N'Aspen Walk, 6579', 1, 378)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(128, N'Selena', N'Viscount   Route, 3367', 4, 15)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(129, N'Adelaide', N'Linda Lane Avenue, 6564', 6, 25)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(130, N'Harvey', N'Heritage Road, 7491', 4, 343)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(131, N'Maggie', N'Cedarne  Pass, 2256', 7, 95)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(132, N'Hannah', N'Lincoln Lane, 7133', 8, 342)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(133, N'Melania', N'Andsell    Alley, 4400', 2, 350)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(134, N'Jules', N'Norland  Road, 9589', 8, 164)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(135, N'Mayleen', N'Bicknell  Lane, 6663', 1, 110)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(136, N'Caleb', N'Shepherds  Alley, 7097', 8, 441)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(137, N'Kamila', N'Castle Drive, 7356', 4, 177)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(138, N'Bob', N'Cliff  Boulevard, 2408', 9, 433)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(139, N'Keira', N'Longman   Tunnel, 8545', 8, 339)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(140, N'Maya', N'Cloth  Road, 7676', 5, 166)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(141, N'Alex', N'Gavel   Pass, 3434', 8, 240)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(142, N'Josh', N'Carltoun   Street, 4906', 9, 312)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(143, N'Manuel', N'Elba  Grove, 834', 4, 224)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(144, N'Maggie', N'Armory  Crossroad, 9810', 2, 316)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(145, N'George', N'Monroe Drive, 8987', 1, 224)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(146, N'Greta', N'Dyott   Lane, 1691', 4, 97)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(147, N'Rick', N'Caedmon  Route, 8853', 1, 6)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(148, N'Makena', N'Carolina  Rue, 1121', 8, 235)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(149, N'Elena', N'Blandford  Route, 6140', 8, 439)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(150, N'Macy', N'Balfe   Way, 9513', 2, 227)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(151, N'Gabriel', N'Clyde Lane, 9668', 3, 134)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(152, N'Morgan', N'Bolton  Alley, 1495', 6, 244)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(153, N'John', N'Cleaver Walk, 1392', 9, 428)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(154, N'Danny', N'Castile  Hill, 5384', 3, 176)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(155, N'Bryce', N'Tiptree   Lane, 8774', 6, 384)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(156, N'Maddison', N'Berry  Vale, 6289', 2, 253)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(157, N'Nina', N'King William  Grove, 2263', 4, 95)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(158, N'Chuck', N'Chandos  Walk, 1982', 6, 49)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(159, N'Aileen', N'Bury  Grove, 9416', 9, 459)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(160, N'Samantha', N'Wakley   Tunnel, 657', 7, 373)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(161, N'Clint', N'Cobden  Avenue, 7767', 4, 236)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(162, N'Brad', N'Eaglet  Boulevard, 9206', 2, 262)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(163, N'Maggie', N'Berriman  Rue, 9570', 7, 40)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(164, N'Luke', N'Kilner   Rue, 2853', 6, 162)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(165, N'David', N'Balham   Vale, 6742', 4, 363)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(166, N'Daphne', N'East Grove, 2494', 6, 498)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(167, N'Brad', N'Chicksand  Road, 7548', 4, 99)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(168, N'Rosalie', N'Carnegie   Alley, 463', 7, 41)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(169, N'Carter', N'Bacton   Avenue, 7606', 2, 327)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(170, N'Cedrick', N'Chamberlain  Tunnel, 7176', 8, 179)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(171, N'Harvey', N'Bales  Pass, 463', 1, 188)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(172, N'Oliver', N'Victoria  Hill, 1956', 2, 456)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(173, N'Oliver', N'Blore  Way, 7769', 6, 178)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(174, N'Ruby', N'Thoresby   Avenue, 4783', 4, 280)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(175, N'Stella', N'West Road, 5943', 8, 474)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(176, N'Bryon', N'Baynes  Drive, 5841', 7, 480)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(177, N'Chester', N'Boleyn  Hill, 211', 7, 50)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(178, N'Margot', N'Collins  Lane, 1539', 1, 282)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(179, N'Johnny', N'Chestnut Rise Hill, 7412', 8, 385)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(180, N'Vicky', N'Victoria Rise Way, 2861', 9, 422)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(181, N'Phillip', N'Under  Street, 9388', 4, 457)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(182, N'Doug', N'Cable    Grove, 5990', 5, 37)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(183, N'Chester', N'Elf  Grove, 8369', 4, 440)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(184, N'Hank', N'Elgood   Crossroad, 8901', 2, 344)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(185, N'Nick', N'Becher  Pass, 7782', 3, 17)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(186, N'Kieth', N'Cave   Street, 6095', 6, 9)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(187, N'Darlene', N'Arlington  Vale, 3551', 7, 385)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(188, N'Christine', N'Wakley   Grove, 5797', 9, 130)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(189, N'Maxwell', N'Bel   Road, 2024', 3, 29)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(190, N'Anthony', N'Betton  Walk, 2047', 1, 209)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(191, N'Nate', N'Fieldstone Street, 7335', 8, 324)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(192, N'Johnny', N'Paris   Hill, 4939', 9, 265)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(193, N'Gladys', N'Babmaes    Street, 2921', 7, 489)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(194, N'Christine', N'Linden Route, 4256', 9, 428)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(195, N'Tania', N'Bletchley   Vale, 6557', 4, 285)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(196, N'Eduardo', N'Clerkenwell Crossroad, 1015', 6, 291)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(197, N'Ilona', N'Cleveland  Pass, 3058', 5, 215)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(198, N'Marissa', N'Clere  Lane, 2677', 4, 186)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(199, N'Moira', N'Pine Boulevard, 9011', 8, 276)
GO
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(200, N'Eryn', N'Camdenhurst   Crossroad, 5664', 9, 12)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(201, N'Gil', N'Glenwood Street, 1624', 4, 460)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(202, N'Phillip', N'Marina  Vale, 4337', 4, 90)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(203, N'Tess', N'Central  Route, 9143', 2, 49)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(204, N'Lorraine', N'Arundel   Street, 8209', 1, 470)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(205, N'Lucy', N'Bennett  Pass, 5666', 4, 145)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(206, N'Brad', N'Betton  Alley, 416', 5, 102)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(207, N'Carl', N'Dunstable   Grove, 3633', 4, 490)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(208, N'Marvin', N'Dunstans  Rue, 7622', 9, 495)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(209, N'Harvey', N'Abbey   Boulevard, 3655', 9, 239)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(210, N'Rocco', N'Durnford  Crossroad, 184', 9, 290)
INSERT [dbo].[hospital]
	([id], [name], [direction], [country_id], [parking_quantity])
VALUES
	(211, N'Clint', N'Cleaver Crossroad, 7465', 9, 235)
SET IDENTITY_INSERT [dbo].[hospital] OFF
GO
SET IDENTITY_INSERT [dbo].[level] ON

INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(1, N'Nivel 1A', 1)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(2, N'Nivel 2A', 1)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(3, N'Nivel 2A', 10)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(4, N'Nivel 3A', 5)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(5, N'Nivel 3B', 4)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(6, N'Nivel 1B', 6)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(7, N'Nivel 1C', 1)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(8, N'Nivel 4A', 7)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(9, N'Nivel A1', 10)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(10, N'Nivel A1', 7)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(11, N'Nivel Otawa', 34)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(12, N'Nivel Fremont', 69)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(13, N'Nivel Rome', 99)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(14, N'Nivel Omaha', 87)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(15, N'Nivel Quebec', 56)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(16, N'Nivel Hollywood', 97)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(17, N'Nivel Boston', 58)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(18, N'Nivel El Paso', 39)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(19, N'Nivel Chicago', 90)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(20, N'Nivel Colorado Springs', 78)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(21, N'Nivel Salt Lake City', 5)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(22, N'Nivel Wien', 22)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(23, N'Nivel Los Angeles', 74)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(24, N'Nivel Garland', 29)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(25, N'Nivel Lancaster', 80)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(26, N'Nivel Oklahoma City', 10)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(27, N'Nivel Quebec', 22)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(28, N'Nivel Bridgeport', 72)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(29, N'Nivel Jersey City', 60)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(30, N'Nivel San Jose', 29)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(31, N'Nivel Lakewood', 14)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(32, N'Nivel Garland', 4)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(33, N'Nivel Nashville', 52)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(34, N'Nivel Omaha', 44)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(35, N'Nivel Rome', 78)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(36, N'Nivel Henderson', 52)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(37, N'Nivel Glendale', 40)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(38, N'Nivel Bellevue', 65)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(39, N'Nivel Tallahassee', 41)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(40, N'Nivel Fullerton', 78)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(41, N'Nivel Otawa', 28)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(42, N'Nivel Arlington', 21)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(43, N'Nivel Lincoln', 88)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(44, N'Nivel Norfolk', 98)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(45, N'Nivel Huntsville', 16)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(46, N'Nivel Denver', 88)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(47, N'Nivel Atlanta', 50)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(48, N'Nivel Berlin', 97)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(49, N'Nivel Moreno Valley', 3)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(50, N'Nivel Berlin', 22)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(51, N'Nivel Laredo', 86)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(52, N'Nivel Moreno Valley', 83)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(53, N'Nivel Phoenix', 99)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(54, N'Nivel Arlington', 60)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(55, N'Nivel Wien', 99)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(56, N'Nivel Miami', 83)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(57, N'Nivel Dallas', 61)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(58, N'Nivel Saint Paul', 60)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(59, N'Nivel Lakewood', 10)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(60, N'Nivel Hollywood', 43)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(61, N'Nivel Tulsa', 58)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(62, N'Nivel Atlanta', 38)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(63, N'Nivel Fremont', 25)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(64, N'Nivel Lyon', 34)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(65, N'Nivel Milano', 20)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(66, N'Nivel New York', 26)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(67, N'Nivel Atlanta', 75)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(68, N'Nivel Lancaster', 83)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(69, N'Nivel Murfreesboro', 43)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(70, N'Nivel Rome', 7)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(71, N'Nivel Anaheim', 37)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(72, N'Nivel Huntsville', 94)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(73, N'Nivel Oakland', 31)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(74, N'Nivel Innsbruck', 88)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(75, N'Nivel New York', 31)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(76, N'Nivel Bakersfield', 66)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(77, N'Nivel Tokyo', 49)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(78, N'Nivel Irving', 59)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(79, N'Nivel San Francisco', 38)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(80, N'Nivel Kansas City', 43)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(81, N'Nivel Norfolk', 92)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(82, N'Nivel Stockton', 86)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(83, N'Nivel Toledo', 20)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(84, N'Nivel Long Beach', 89)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(85, N'Nivel Quebec', 75)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(86, N'Nivel Ontario', 45)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(87, N'Nivel Omaha', 92)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(88, N'Nivel San Antonio', 18)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(89, N'Nivel Bridgeport', 56)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(90, N'Nivel Phoenix', 33)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(91, N'Nivel Quebec', 13)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(92, N'Nivel Indianapolis', 18)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(93, N'Nivel Bakersfield', 25)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(94, N'Nivel Albuquerque', 2)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(95, N'Nivel Ontario', 2)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(96, N'Nivel Chicago', 15)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(97, N'Nivel Salem', 10)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(98, N'Nivel Toledo', 69)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(99, N'Nivel Memphis', 7)
GO
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(100, N'Nivel San Bernardino', 51)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(101, N'Nivel Norfolk', 35)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(102, N'Nivel El Paso', 15)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(103, N'Nivel Salem', 65)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(104, N'Nivel Bakersfield', 12)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(105, N'Nivel Phoenix', 49)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(106, N'Nivel Amarillo', 79)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(107, N'Nivel Oakland', 87)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(108, N'Nivel Springfield', 84)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(109, N'Nivel Atlanta', 93)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(110, N'Nivel Jacksonville', 84)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(111, N'Nivel Otawa', 34)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(112, N'Nivel Fremont', 69)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(113, N'Nivel Rome', 99)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(114, N'Nivel Omaha', 87)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(115, N'Nivel Quebec', 56)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(116, N'Nivel Hollywood', 97)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(117, N'Nivel Boston', 58)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(118, N'Nivel El Paso', 39)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(119, N'Nivel Chicago', 90)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(120, N'Nivel Colorado Springs', 78)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(121, N'Nivel Salt Lake City', 5)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(122, N'Nivel Wien', 22)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(123, N'Nivel Los Angeles', 74)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(124, N'Nivel Garland', 29)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(125, N'Nivel Lancaster', 80)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(126, N'Nivel Oklahoma City', 10)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(127, N'Nivel Quebec', 22)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(128, N'Nivel Bridgeport', 72)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(129, N'Nivel Jersey City', 60)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(130, N'Nivel San Jose', 29)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(131, N'Nivel Lakewood', 14)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(132, N'Nivel Garland', 4)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(133, N'Nivel Nashville', 52)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(134, N'Nivel Omaha', 44)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(135, N'Nivel Rome', 78)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(136, N'Nivel Henderson', 52)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(137, N'Nivel Glendale', 40)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(138, N'Nivel Bellevue', 65)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(139, N'Nivel Tallahassee', 41)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(140, N'Nivel Fullerton', 78)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(141, N'Nivel Otawa', 28)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(142, N'Nivel Arlington', 21)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(143, N'Nivel Lincoln', 88)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(144, N'Nivel Norfolk', 98)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(145, N'Nivel Huntsville', 16)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(146, N'Nivel Denver', 88)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(147, N'Nivel Atlanta', 50)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(148, N'Nivel Berlin', 97)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(149, N'Nivel Moreno Valley', 3)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(150, N'Nivel Berlin', 22)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(151, N'Nivel Laredo', 86)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(152, N'Nivel Moreno Valley', 83)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(153, N'Nivel Phoenix', 99)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(154, N'Nivel Arlington', 60)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(155, N'Nivel Wien', 99)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(156, N'Nivel Miami', 83)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(157, N'Nivel Dallas', 61)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(158, N'Nivel Saint Paul', 60)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(159, N'Nivel Lakewood', 10)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(160, N'Nivel Hollywood', 43)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(161, N'Nivel Tulsa', 58)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(162, N'Nivel Atlanta', 38)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(163, N'Nivel Fremont', 25)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(164, N'Nivel Lyon', 34)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(165, N'Nivel Milano', 20)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(166, N'Nivel New York', 26)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(167, N'Nivel Atlanta', 75)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(168, N'Nivel Lancaster', 83)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(169, N'Nivel Murfreesboro', 43)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(170, N'Nivel Rome', 7)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(171, N'Nivel Anaheim', 37)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(172, N'Nivel Huntsville', 94)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(173, N'Nivel Oakland', 31)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(174, N'Nivel Innsbruck', 88)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(175, N'Nivel New York', 31)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(176, N'Nivel Bakersfield', 66)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(177, N'Nivel Tokyo', 49)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(178, N'Nivel Irving', 59)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(179, N'Nivel San Francisco', 38)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(180, N'Nivel Kansas City', 43)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(181, N'Nivel Norfolk', 92)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(182, N'Nivel Stockton', 86)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(183, N'Nivel Toledo', 20)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(184, N'Nivel Long Beach', 89)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(185, N'Nivel Quebec', 75)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(186, N'Nivel Ontario', 45)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(187, N'Nivel Omaha', 92)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(188, N'Nivel San Antonio', 18)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(189, N'Nivel Bridgeport', 56)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(190, N'Nivel Phoenix', 33)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(191, N'Nivel Quebec', 13)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(192, N'Nivel Indianapolis', 18)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(193, N'Nivel Bakersfield', 25)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(194, N'Nivel Albuquerque', 2)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(195, N'Nivel Ontario', 2)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(196, N'Nivel Chicago', 15)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(197, N'Nivel Salem', 10)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(198, N'Nivel Toledo', 69)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(199, N'Nivel Memphis', 7)
GO
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(200, N'Nivel San Bernardino', 51)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(201, N'Nivel Norfolk', 35)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(202, N'Nivel El Paso', 15)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(203, N'Nivel Salem', 65)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(204, N'Nivel Bakersfield', 12)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(205, N'Nivel Phoenix', 49)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(206, N'Nivel Amarillo', 79)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(207, N'Nivel Oakland', 87)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(208, N'Nivel Springfield', 84)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(209, N'Nivel Atlanta', 93)
INSERT [dbo].[level]
	([id], [name], [hospital_id])
VALUES
	(210, N'Nivel Jacksonville', 84)
SET IDENTITY_INSERT [dbo].[level] OFF
GO
SET IDENTITY_INSERT [dbo].[log_type] ON

INSERT [dbo].[log_type]
	([id], [type])
VALUES
	(1, N'Administrador')
INSERT [dbo].[log_type]
	([id], [type])
VALUES
	(2, N'Usuario')
SET IDENTITY_INSERT [dbo].[log_type] OFF
GO
SET IDENTITY_INSERT [dbo].[mail] ON

INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(1, N'hospitalcontacto@sociedadSaludable.com', 1)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(2, N'hospitalSM@sociedadSaludable.com', 2)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(3, N'hospitalCentroMedicocontacto@sociedadSaludable.com', 3)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(4, N'hospitalSJ@sociedadSaludable.com', 1)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(5, N'cmLopezHerrera@sociedadSaludable.com', 8)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(6, N'cmelconejo@sociedadSaludable.com', 11)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(7, N'hospitalmuseo@sociedadSaludable.com', 10)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(8, N'hospitaldelamujer@sociedadSaludable.com', 6)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(9, N'hospitalmedicogeneral@sociedadSaludable.com', 7)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(10, N'hospitalsaludintegral@sociedadSaludable.com', 5)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(11, N'Bethany_Page 8536@irrepsy.com', 72)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(12, N'Barry_Mackenzie1079@twipet.com', 56)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(13, N'John_Neal9943@kideod.biz', 50)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(14, N'Manuel_Power9810@ubusive.com', 32)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(15, N'Ilona_Uttley6239@gmail.com', 48)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(16, N'Willow_Hewitt8169@liret.org', 34)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(17, N'Caitlyn_Nurton3456@eirey.tech', 39)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(18, N'Ronald_Alcroft4512@infotech44.tech', 2)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(19, N'Noah_Pitt3737@zorer.org', 1)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(20, N'Enoch_Morgan9438@womeona.net', 82)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(21, N'Roger_Cavanagh4915@muall.tech', 69)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(22, N'Daron_Brett2673@elnee.tech', 79)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(23, N'Cynthia_Neal6759@ovock.tech', 33)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(24, N'Kimberly_Groves876@gompie.com', 46)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(25, N'Bernadette_Harris588@grannar.com', 46)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(26, N'Rick_Blythe2139@brety.org', 16)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(27, N'Bob_Jarvis2696@ovock.tech', 66)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(28, N'Mike_Rixon4179@bulaffy.com', 19)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(29, N'Naomi_Allwood2547@mafthy.com', 67)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(30, N'Bob_Moreno3988@gembat.biz', 56)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(31, N'Leanne_Gunn5835@cispeto.com', 82)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(32, N'Lexi_Ward4496@atink.com', 41)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(33, N'Roger_Tutton191@sveldo.biz', 79)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(34, N'Manuel_Mcnally5327@nickia.com', 95)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(35, N'Rufus_Utterson4370@dionrab.com', 19)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(36, N'Tony_Hamilton7951@twipet.com', 51)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(37, N'Nina_Walsh6471@bauros.biz', 68)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(38, N'Adalie_Todd4049@twipet.com', 51)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(39, N'Carl_Redden7167@joiniaa.com', 36)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(40, N'Lana_Hall8060@bungar.biz', 99)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(41, N'Alan_Dickson7695@typill.biz', 2)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(42, N'Doris_Healy4070@sveldo.biz', 73)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(43, N'Jennifer_Dwyer4896@bretoux.com', 72)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(44, N'Alan_Durrant5077@nickia.com', 93)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(45, N'Jolene_Oliver9683@supunk.biz', 85)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(46, N'Barney_Parsons2772@qater.org', 51)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(47, N'Nick_Rainford4294@bretoux.com', 12)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(48, N'Denny_Cooper6790@gembat.biz', 8)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(49, N'Piper_Seymour600@twipet.com', 70)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(50, N'Mark_Abbey2358@extex.org', 86)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(51, N'Kendra_Rehman9245@nickia.com', 3)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(52, N'Megan_Giles6098@extex.org', 84)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(53, N'Miley_Dixon979@sheye.org', 32)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(54, N'Charlotte_Roscoe6428@brety.org', 49)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(55, N'Mason_Rigg7434@corti.com', 55)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(56, N'Brad_Edmonds2762@twace.org', 20)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(57, N'Erick_Flynn9811@supunk.biz', 96)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(58, N'Mary_Foxley2975@corti.com', 22)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(59, N'Georgia_Addison2454@bretoux.com', 90)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(60, N'Esmeralda_Warner2830@gembat.biz', 2)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(61, N'Angelica_Warden9457@nickia.com', 72)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(62, N'Adalind_Jarrett7309@bauros.biz', 97)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(63, N'Tom_Knight7715@dionrab.com', 10)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(64, N'Tyson_Poulton5801@infotech44.tech', 81)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(65, N'Chanelle_Adams5651@twace.org', 47)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(66, N'Gil_Rossi6645@bauros.biz', 84)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(67, N'Goldie_Roth1994@bungar.biz', 19)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(68, N'Bart_Morris5427@vetan.org', 36)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(69, N'Tara_Bradley2930@deavo.com', 78)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(70, N'Phillip_Cooper9313@bulaffy.com', 97)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(71, N'Sienna_Lynch4758@bungar.biz', 68)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(72, N'Ellen_Clifford8674@grannar.com', 43)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(73, N'Melody_Morris9949@bretoux.com', 92)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(74, N'Rowan_Drake6060@gmail.com', 77)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(75, N'Rufus_Jenkin8208@hourpy.biz', 10)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(76, N'Josephine_Clifton9916@elnee.tech', 12)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(77, N'Kurt_Rogan2460@nanoff.biz', 63)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(78, N'Aisha_Kidd1642@atink.com', 35)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(79, N'Susan_Russel6602@famism.biz', 43)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(80, N'Rylee_Ellwood3829@mafthy.com', 42)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(81, N'Scarlett_Johnson978@vetan.org', 27)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(82, N'Marvin_Kelly3855@infotech44.tech', 52)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(83, N'Martin_Anderson4664@kideod.biz', 5)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(84, N'Fred_Janes58@grannar.com', 1)
INSERT [dbo].[mail]
	([id], [email], [hospital_id])
VALUES
	(85, N'Harry_Farrant2952@sveldo.biz', 29)
SET IDENTITY_INSERT [dbo].[mail] OFF
GO
SET IDENTITY_INSERT [dbo].[medicine] ON

INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(1, N'Amoxicilina', 2.5, N'La amoxicilina es un antibiótico similar a la ampicilina', 1, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(2, N'Penicilina', 50, N'La penicilina fue el primer antibiótico descubierto y a día de hoy se sigue utilizando con frecuencia. Se trata también de un bactericida que bloquea la síntesis y reparación de la pared bacteriana, por lo que es de amplio espectro.', 2, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(3, N'Tetraciclina', 20, N'La tetraciclina es un antibiótico bacteriostático, es decir, no mata a las bacterias (como sí hacen los bactericidas) pero inhibe su crecimiento.', 3, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(4, N'Estreptomicina', 80, N'La estreptomicina es un antibiótico bactericida que daña a los ribosomas, unas estructuras celulares encargadas de sintetizar las proteínas. Esto hace que las bacterias mueran.', 4, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(5, N'Cetirizina', 4.5, N'La cetirizina es un fármaco utilizado para el tratamiento de la alergia.', 4, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(6, N'Desloratadina', 4.5, N'La desloratadina es un fármaco antihistamínico utilizado para tratar alergias', 10, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(7, N'Fexofenadina', 7, N' es un medicamento antihistamínico usado en el tratamiento de síntomas de alergia', 7, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(8, N'Levocetirizina', 8.5, N' es un antihistamínico utilizado para el tratamiento de la rinitis alérgica', 8, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(9, N'Oxacilina', 5.5, N'es un antibiótico betalactámico, de espectro reducido del grupo de las penicilinas', 10, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(10, N'Loratadina', 1.5, N'es un fármaco usado para tratar alergias', 9, NULL)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(11, N'Prozac', 10.6523638175113, N'Midodrine', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(12, N'Midodrine', 20.5286156756471, N'Maxalt', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(13, N'Lasix', 28.983017764512, N'MidNite', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(14, N'Vaqta', 6.94283304127996, N'Arcoxia', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(15, N'Herceptin', 16.8314210101177, N'Claritin', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(16, N'Singulair', 15.4029761075056, N'Fosamax', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(17, N'Zoloft', 14.520805087183, N'Cosopt', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(18, N'Zovirax', 14.6730046009985, N'Lasix', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(19, N'OxyContin', 29.7716785416806, N'Visine', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(20, N'Amaryl', 15.1763716513181, N'Panadol', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(21, N'Novolin', 14.1390782679147, N'Cosopt', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(22, N'Zoloft', 17.4386322360666, N'Novolin', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(23, N'Vioxx', 4.17563492673246, N'Unisom', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(24, N'Exact', 12.1767563625131, N'Midodrine', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(25, N'Midodrine', 35.3928453640048, N'Band-Aid', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(26, N'Aggrastat', 14.1030648658532, N'Coldrex', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(27, N'NyQuill', 33.1879025507662, N'Cosopt', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(28, N'NyQuill', 5.86246496106613, N'Tylenol', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(29, N'Exact', 23.9778494080425, N'Prozac', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(30, N'Gravol', 16.2138287072134, N'Aggrastat', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(31, N'OxyContin', 4.33754083157403, N'Zetia', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(32, N'Band-Aid', 26.5281353287996, N'Claritin', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(33, N'Zetia', 13.0771056898297, N'Ibalgin', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(34, N'Visine', 12.2578347908602, N'Aggrastat', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(35, N'Vaqta', 3.70855929456118, N'Zoloft', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(36, N'Zoloft', 38.9042914942393, N'Midodrine', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(37, N'NyQuill', 38.3282255564482, N'Unisom', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(38, N'Lasix', 25.7298352800914, N'OxyContin', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(39, N'Gravol', 21.9940468966933, N'Advil', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(40, N'Aspirin', 37.2204970569445, N'Pepcid', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(41, N'Pepcid', 36.0636945683806, N'Paracetamol', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(42, N'Herceptin', 25.8994087301658, N'Symbicort', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(43, N'Zovirax', 17.7194058358294, N'Novolin', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(44, N'Maxalt', 20.139296397166, N'Paracetamol', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(45, N'Zoloft', 8.20865531880812, N'Emend', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(46, N'Midodrine', 26.3373829584277, N'Risperdal', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(47, N'Amaryl', 39.4559792687446, N'Cosopt', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(48, N'Zoloft', 37.6407035787779, N'Zetia', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(49, N'Vaqta', 28.7900385543658, N'Fosamax', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(50, N'Tylenol', 17.6348994288756, N'Fosamax', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(51, N'Femibion', 16.7238525602612, N'Zoloft', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(52, N'Benadryl', 4.91934371829002, N'Band-Aid', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(53, N'Panadol', 36.7032804888223, N'Cosopt', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(54, N'Prozac', 24.6933863464246, N'Gravol', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(55, N'Nurofen', 37.5966482076778, N'Abilify', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(56, N'MidNite', 36.75300701277, N'NyQuill', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(57, N'Claritin', 1.87419835006548, N'Zoloft', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(58, N'Zoloft', 35.2958434570096, N'Singulair', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(59, N'OxyContin', 30.4585068567928, N'Ibuprofen', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(60, N'Miralax', 31.0741980160001, N'Zetia', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(61, N'Singulair', 36.1155681610646, N'Cosopt', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(62, N'Zoloft', 12.7255039465267, N'Novolin', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(63, N'Coldrex', 2.19521937994064, N'Ibuprofen', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(64, N'Amaryl', 3.78128045321502, N'Coldrex', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(65, N'Tylenol', 29.3788023332035, N'Vioxx', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(66, N'Unisom', 2.30722128800453, N'Maxalt', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(67, N'Ibuprofen', 23.8594350856074, N'Ocrevus', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(68, N'Zoloft', 5.47629216847769, N'NyQuill', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(69, N'Zoloft', 39.3138144767442, N'Singulair', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(70, N'Unisom', 7.11392230359554, N'Amaryl', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(71, N'Vioxx', 11.0666835871836, N'Novolin', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(72, N'Herceptin', 28.2358053262512, N'Zovirax', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(73, N'Claritin', 4.83858224695482, N'Vaqta', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(74, N'Visine', 5.91551068328112, N'Gravol', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(75, N'Arcoxia', 27.3876715276333, N'Femibion', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(76, N'Paracetamol', 16.3448765149083, N'Claritin', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(77, N'Ocrevus', 4.13047369389351, N'Lisinopril', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(78, N'Miralax', 29.9880746765938, N'Zoloft', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(79, N'Ocrevus', 16.1140872501368, N'OxyContin', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(80, N'Lasix', 10.5447162727568, N'Panadol', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(81, N'Cosopt', 39.2695086916301, N'Tylenol', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(82, N'Makena', 39.4321128960848, N'Gravol', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(83, N'Makena', 21.279490996748, N'Ocrevus', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(84, N'Miralax', 27.6242347367221, N'Cosopt', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(85, N'Aggrastat', 38.2771953657629, N'Emend', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(86, N'OxyContin', 39.8740045967856, N'Pepcid', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(87, N'Cosopt', 26.4557021383456, N'Zoloft', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(88, N'Benadryl', 37.269116085148, N'Zoloft', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(89, N'Pepcid', 23.6477889626509, N'Claritin', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(90, N'Femibion', 1.10694953245434, N'Lisinopril', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(91, N'Novolin', 13.7889420431056, N'Aspirin', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(92, N'Arcoxia', 28.1529545225915, N'Zoloft', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(93, N'Zetia', 34.8307537314625, N'Claritin', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(94, N'Maxalt', 14.0730602625166, N'Femibion', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(95, N'Maxalt', 34.4408992526312, N'Unisom', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(96, N'Visine', 24.5630180507726, N'Vioxx', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(97, N'Miralax', 4.47216869819545, N'Benadryl', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(98, N'Prozac', 16.6239406632371, N'Nurofen', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(99, N'Nurofen', 5.28621179623819, N'Zoloft', 5, 1)
GO
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(100, N'Emend', 25.8906823633661, N'Zoloft', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(101, N'Nurofen', 30.5593888175485, N'Ocrevus', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(102, N'Paracetamol', 16.763393753098, N'Ibuprofen', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(103, N'Coldrex', 26.2809236241881, N'Amaryl', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(104, N'Aspirin', 3.82305143905014, N'Maxalt', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(105, N'Varivax', 24.1341778310641, N'Pepcid', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(106, N'Herceptin', 5.8486685607809, N'Gravol', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(107, N'Tylenol', 26.7360597195737, N'Ibuprofen', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(108, N'Midodrine', 17.8201885078196, N'Herceptin', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(109, N'Coldrex', 14.4188056012703, N'Gravol', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(110, N'Maxalt', 37.1111682397831, N'Aggrastat', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(111, N'Abilify', 22.4983087347347, N'Ibuprofen', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(112, N'Ocrevus', 24.2458380592269, N'Symbicort', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(113, N'Ibuprofen', 29.739995308565, N'Exact', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(114, N'Lisinopril', 17.92183886977, N'Novolin', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(115, N'Band-Aid', 31.9913825322834, N'Femibion', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(116, N'Abilify', 4.92744261442099, N'Femibion', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(117, N'Zoloft', 24.7733119487638, N'Herceptin', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(118, N'Risperdal', 20.0634996039157, N'Cosopt', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(119, N'Prozac', 24.0960753336996, N'Amaryl', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(120, N'Zoloft', 35.1996879550627, N'Symbicort', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(121, N'Exact', 5.49080615979191, N'Ocrevus', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(122, N'Singulair', 25.6403133839557, N'Fosamax', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(123, N'Prozac', 23.5472194121905, N'Cosopt', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(124, N'NyQuill', 8.19449477046472, N'Risperdal', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(125, N'Ibalgin', 13.8095534680456, N'Tylenol', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(126, N'Claritin', 8.36311741097044, N'Midodrine', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(127, N'Risperdal', 31.7769254100402, N'Amaryl', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(128, N'Maxalt', 19.5635534774342, N'Cosopt', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(129, N'Maxalt', 12.1766905063655, N'Ibalgin', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(130, N'Femibion', 23.8996796947437, N'Fosamax', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(131, N'Lasix', 1.09504736684963, N'Prozac', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(132, N'Gravol', 21.0967588383224, N'Ocrevus', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(133, N'Varivax', 24.9614215143777, N'Lisinopril', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(134, N'Symbicort', 20.8800189545751, N'Arcoxia', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(135, N'Aspirin', 9.72055021148201, N'Ibuprofen', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(136, N'Cosopt', 24.3542854182209, N'Lasix', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(137, N'Gravol', 13.0575287747465, N'Magne B6', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(138, N'Singulair', 38.0394515167174, N'Emend', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(139, N'Benadryl', 18.766130804441, N'Zoloft', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(140, N'Zetia', 12.1692041150151, N'Gravol', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(141, N'Benadryl', 23.2888695394103, N'Abilify', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(142, N'Claritin', 28.0943947360359, N'Visine', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(143, N'Zovirax', 9.51510716113965, N'Fosamax', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(144, N'Advil', 30.938358892658, N'Cosopt', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(145, N'Benadryl', 28.5893451066638, N'Zoloft', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(146, N'MidNite', 39.8785541708947, N'Gravol', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(147, N'Singulair', 17.0176536450245, N'Paracetamol', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(148, N'Maxalt', 14.0879835738279, N'Emend', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(149, N'OxyContin', 22.8132383161286, N'Ibuprofen', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(150, N'Emend', 11.378144688149, N'NyQuill', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(151, N'Varivax', 7.85884957940264, N'Gravol', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(152, N'Singulair', 33.6120196937639, N'Benadryl', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(153, N'Gravol', 31.0941321393913, N'Lasix', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(154, N'Nurofen', 34.2473683665727, N'Ocrevus', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(155, N'Zoloft', 30.3080264196303, N'Abilify', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(156, N'MidNite', 6.31984286816783, N'Maxalt', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(157, N'Nurofen', 36.6351480640635, N'Magne B6', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(158, N'Advil', 13.2150071743946, N'Visine', 4, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(159, N'Claritin', 35.1969798375838, N'Zetia', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(160, N'Aspirin', 11.1658454119069, N'Claritin', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(161, N'Band-Aid', 17.2289306564391, N'Miralax', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(162, N'Magne B6', 4.46400879857317, N'Risperdal', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(163, N'Abilify', 39.2363973880356, N'Singulair', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(164, N'Varivax', 26.3279243196956, N'Zoloft', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(165, N'Zoloft', 20.3704849539187, N'Arcoxia', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(166, N'Ibalgin', 6.44686644032917, N'Femibion', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(167, N'Paracetamol', 36.2386104335257, N'Aspirin', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(168, N'OxyContin', 39.2438362041692, N'MidNite', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(169, N'Zetril', 15.6594205837042, N'NyQuill', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(170, N'Singulair', 25.7866391771411, N'Aggrastat', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(171, N'Pepcid', 26.3266360840419, N'Zoloft', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(172, N'Nurofen', 22.2915639389733, N'MidNite', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(173, N'OxyContin', 3.63986927719781, N'Zetril', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(174, N'Coldrex', 5.18261927188496, N'Risperdal', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(175, N'Zoloft', 34.6369872240522, N'Herceptin', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(176, N'Zoloft', 35.801323788148, N'Femibion', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(177, N'Aspirin', 2.76150729822065, N'Magne B6', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(178, N'NyQuill', 38.1403362472264, N'Fosamax', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(179, N'Exact', 25.6621859984762, N'Zoloft', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(180, N'Paracetamol', 10.5472632104285, N'Vaqta', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(181, N'Gravol', 3.50207454408616, N'Lisinopril', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(182, N'Amaryl', 31.8844806365131, N'Miralax', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(183, N'Gravol', 29.796236828806, N'Zoloft', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(184, N'Emend', 17.8087177084799, N'Advil', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(185, N'Paracetamol', 11.8220641221023, N'Ocrevus', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(186, N'Pepcid', 3.02981448407742, N'Paracetamol', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(187, N'Miralax', 11.3482341157963, N'Maxalt', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(188, N'Makena', 35.6385836515755, N'Magne B6', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(189, N'Abilify', 39.1632970367387, N'Zoloft', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(190, N'Claritin', 27.5963008872216, N'Arcoxia', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(191, N'Zetia', 4.51134879026159, N'Fosamax', 5, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(192, N'Midodrine', 20.8670019874661, N'Makena', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(193, N'Ocrevus', 19.3513243619126, N'Zetia', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(194, N'Maxalt', 27.0041696387363, N'Aggrastat', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(195, N'Maxalt', 17.3889286245168, N'Prozac', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(196, N'Herceptin', 7.41123364745231, N'Aspirin', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(197, N'Maxalt', 24.4440689200741, N'Nurofen', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(198, N'Prozac', 26.8583282497052, N'Unisom', 6, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(199, N'Abilify', 2.0454621063757, N'Aspirin', 4, 1)
GO
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(200, N'Unisom', 2.49694271129414, N'Lisinopril', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(201, N'Zetia', 18.6686043486319, N'Zovirax', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(202, N'Zoloft', 31.2323585828917, N'Lasix', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(203, N'Vioxx', 3.8637651679403, N'Lisinopril', 1, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(204, N'Zoloft', 17.7962152044271, N'Advil', 3, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(205, N'Zoloft', 25.8402228033357, N'Lisinopril', 7, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(206, N'NyQuill', 21.4002410864459, N'Zoloft', 2, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(207, N'Benadryl', 31.751787477523, N'Midodrine', 9, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(208, N'Fosamax', 34.2548041009599, N'Aspirin', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(209, N'Novolin', 5.9887090781651, N'Makena', 8, 1)
INSERT [dbo].[medicine]
	([id], [name], [price], [description], [id_provider], [type_medicine])
VALUES
	(210, N'Emend', 14.2114023585857, N'Gravol', 5, 1)
SET IDENTITY_INSERT [dbo].[medicine] OFF
GO
INSERT [dbo].[medicine_type]
	([id], [name])
VALUES
	(1, N'Antibiotico')
INSERT [dbo].[medicine_type]
	([id], [name])
VALUES
	(2, N'Antihistamínicos')
GO
SET IDENTITY_INSERT [dbo].[patient] ON

INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(1, N'Dakota', N'Mcgregor', CAST(N'2002-07-16' AS Date), 1, 1.20129006132544, 1, 4, 91.5670226149107, N'Aquamarine', 8, N'Dakota_Mcgregor1167@tonsy.org', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(2, N'Emmanuelle', N'Myatt', CAST(N'2000-06-08' AS Date), 7, 1.38940096757812, 1, 2, 213.361021253448, N'Yellow', 1, N'Emmanuelle_Myatt6828@joiniaa.com', 6)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(3, N'Rosa', N'Dale', CAST(N'1773-08-10' AS Date), 2, 1.25356041651851, 2, 1, 268.276742665692, N'Dark red', 8, N'Rosa_Dale4491@infotech44.tech', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(4, N'Summer', N'Waterson', CAST(N'1998-11-01' AS Date), 4, 1.8477565556987, 4, 2, 199.899167955806, N'Carmine', 8, N'Summer_Waterson7795@gmail.com', 3)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(5, N'Rick', N'Burnley', CAST(N'2001-05-03' AS Date), 6, 1.23854412522099, 1, 1, 204.371211037678, N'Purple', 8, N'Rick_Burnley9980@naiker.biz', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(6, N'William', N'Spencer', CAST(N'2003-01-20' AS Date), 1, 1.25402505614517, 3, 1, 185.151961513866, N'Sienna', 4, N'William_Spencer5576@sheye.org', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(7, N'Lucas', N'Noon', CAST(N'2014-03-08' AS Date), 5, 1.1385169365157, 5, 1, 80.1185310679109, N'Black', 2, N'Lucas_Noon6261@mafthy.com', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(8, N'Fiona', N'Vollans', CAST(N'2013-11-13' AS Date), 5, 1.13155215565653, 5, 4, 224.118303190506, N'Gold', 7, N'Fiona_Vollans2440@nimogy.biz', 6)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(9, N'Jade', N'Evans', CAST(N'2000-10-12' AS Date), 2, 1.72305504638844, 1, 1, 91.4385940271609, N'Amethyst', 6, N'Jade_Evans9997@nickia.com', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(10, N'Abbey', N'Sherwood', CAST(N'2001-03-18' AS Date), 1, 1.90402283375339, 5, 2, 119.474320934375, N'Gray', 4, N'Abbey_Sherwood9494@deons.tech', 5)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(11, N'Ronald', N'Scott', CAST(N'1999-10-22' AS Date), 4, 1.55547304896427, 2, 2, 243.385060240694, N'Cerise', 9, N'Ronald_Scott7031@dionrab.com', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(12, N'Kurt', N'Irwin', CAST(N'1998-08-18' AS Date), 3, 1.99530956800809, 3, 2, 218.080757374447, N'Peach', 8, N'Kurt_Irwin8236@gompie.com', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(13, N'Gwenyth', N'Underhill', CAST(N'2000-03-04' AS Date), 2, 1.24832264298961, 2, 4, 251.397578548359, N'Aqua', 3, N'Gwenyth_Underhill9621@tonsy.org', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(14, N'Michael', N'Larkin', CAST(N'1993-02-06' AS Date), 7, 1.17275126426143, 4, 2, 135.493297992038, N'Purple', 4, N'Michael_Larkin6276@irrepsy.com', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(15, N'Wade', N'Lambert', CAST(N'1999-08-05' AS Date), 7, 1.84525263162574, 1, 3, 279.156048518213, N'Rosegold', 9, N'Wade_Lambert1322@liret.org', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(16, N'Dani', N'Robertson', CAST(N'1998-06-11' AS Date), 2, 1.2944302932799, 3, 2, 250.643217215614, N'Sepia', 3, N'Dani_Robertson5980@corti.com', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(17, N'Liam', N'Graves', CAST(N'1773-07-03' AS Date), 4, 1.14508854604563, 1, 3, 227.603089780362, N'Beige', 3, N'Liam_Graves6473@gompie.com', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(18, N'Angel', N'Cunningham', CAST(N'2000-08-03' AS Date), 8, 1.22500743122073, 1, 4, 282.598452860303, N'Maroon', 3, N'Angel_Cunningham922@irrepsy.com', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(19, N'Isabella', N'Cameron', CAST(N'2001-11-09' AS Date), 6, 1.26762866567244, 3, 1, 200.166295588094, N'Sepia', 6, N'Isabella_Cameron238@cispeto.com', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(20, N'Quinn', N'Fenton', CAST(N'2003-05-14' AS Date), 7, 1.32922003712934, 3, 2, 122.249314356246, N'Lavender', 7, N'Quinn_Fenton8687@muall.tech', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(21, N'Alexander', N'Franks', CAST(N'2004-12-10' AS Date), 1, 1.402288320196, 3, 2, 179.986646546976, N'Black', 1, N'Alexander_Franks3179@kideod.biz', 3)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(22, N'Eve', N'Vaughan', CAST(N'1998-09-08' AS Date), 2, 1.57264403978951, 2, 4, 226.943008312463, N'Carmine', 8, N'Eve_Vaughan3182@elnee.tech', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(23, N'Charlize', N'Owens', CAST(N'1996-07-27' AS Date), 5, 1.04633823411834, 1, 4, 129.482179401667, N'Olive', 4, N'Charlize_Owens4680@extex.org', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(24, N'Candice', N'Robinson', CAST(N'1997-11-07' AS Date), 4, 1.72491677465146, 4, 4, 233.800634717942, N'Green', 9, N'Candice_Robinson7767@eirey.tech', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(25, N'Benny', N'Holt', CAST(N'2003-07-14' AS Date), 8, 1.86618765577031, 1, 3, 226.651490761271, N'Aqua', 7, N'Benny_Holt7029@zorer.org', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(26, N'Chuck', N'Nash', CAST(N'2004-10-16' AS Date), 1, 1.77388770914352, 5, 3, 116.387041396642, N'Camel', 8, N'Chuck_Nash438@bauros.biz', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(27, N'Liam', N'Stuart', CAST(N'2005-05-24' AS Date), 9, 1.06471981064636, 2, 2, 129.446063069834, N'Magenta', 3, N'Liam_Stuart9172@brety.org', 3)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(28, N'Percy', N'Lee', CAST(N'2010-11-10' AS Date), 1, 1.35440147125833, 3, 2, 81.8669971254966, N'coral', 1, N'Percy_Lee7183@muall.tech', 3)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(29, N'Melody', N'Morrison', CAST(N'2011-08-27' AS Date), 1, 1.25573003257426, 1, 4, 162.09361617644, N'Green', 5, N'Melody_Morrison9159@supunk.biz', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(30, N'George', N'Steer', CAST(N'2013-04-12' AS Date), 5, 1.17385524146904, 5, 3, 124.833371283409, N'Mauve', 7, N'George_Steer7860@grannar.com', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(31, N'Scarlett', N'Ross', CAST(N'2010-05-17' AS Date), 3, 1.68864762396023, 1, 1, 155.922127590013, N'Lime', 7, N'Scarlett_Ross3250@infotech44.tech', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(32, N'Manuel', N'Brown', CAST(N'2003-04-09' AS Date), 8, 1.06721205174327, 2, 4, 212.061415691889, N'Lime', 3, N'Manuel_Brown61@bauros.biz', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(33, N'Rufus', N'Redwood', CAST(N'2000-05-25' AS Date), 5, 1.12639307748824, 4, 4, 254.283436110375, N'Azure', 6, N'Rufus_Redwood6770@bungar.biz', 1)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(34, N'Piper', N'Rogers', CAST(N'1996-04-22' AS Date), 9, 1.78091027763715, 3, 2, 217.717296785078, N'Sky blue', 3, N'Piper_Rogers1559@bretoux.com', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(35, N'Bryon', N'Hunter', CAST(N'1998-04-04' AS Date), 8, 1.86308205773266, 3, 4, 259.757984124943, N'Cerise', 8, N'Bryon_Hunter8783@liret.org', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(36, N'Barry', N'Moore', CAST(N'1999-09-12' AS Date), 7, 1.66744782480758, 1, 1, 172.666990478834, N'Gray', 1, N'Barry_Moore3615@gompie.com', 5)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(37, N'Julian', N'Alexander', CAST(N'2000-05-28' AS Date), 7, 1.76175331173546, 1, 4, 91.7462394124578, N'Fuchsia', 8, N'Julian_Alexander1947@zorer.org', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(38, N'Logan', N'Booth', CAST(N'2002-10-01' AS Date), 6, 1.83834129145292, 4, 2, 82.3348631241056, N'Fuchsia', 3, N'Logan_Booth2475@acrit.org', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(39, N'Chester', N'Aldridge', CAST(N'1996-02-14' AS Date), 2, 1.84261636102694, 2, 1, 122.170781322369, N'Rosewood', 9, N'Chester_Aldridge9481@deons.tech', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(40, N'Ethan', N'Eaton', CAST(N'1998-07-20' AS Date), 9, 1.42640311523639, 5, 4, 187.196324127352, N'Mauve', 3, N'Ethan_Eaton928@iatim.tech', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(41, N'Tiffany', N'Whittle', CAST(N'1996-01-17' AS Date), 3, 1.29315068446712, 5, 3, 277.231237157821, N'Carmine', 3, N'Tiffany_Whittle4752@extex.org', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(42, N'Eryn', N'Quinn', CAST(N'2000-02-17' AS Date), 3, 1.68165664639401, 4, 4, 178.52700153204, N'Purple', 8, N'Eryn_Quinn9887@nanoff.biz', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(43, N'Eileen', N'Wellington', CAST(N'2003-11-28' AS Date), 7, 1.68424893994082, 1, 1, 117.23938952351, N'Yellow', 8, N'Eileen_Wellington5632@bauros.biz', 1)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(44, N'Tyson', N'Santos', CAST(N'2003-04-18' AS Date), 9, 1.71171829556661, 1, 2, 291.389044592804, N'Auburn', 9, N'Tyson_Santos948@guentu.biz', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(45, N'Boris', N'Bell', CAST(N'2002-01-02' AS Date), 8, 1.99901354359417, 4, 2, 185.53918618734, N'Red', 6, N'Boris_Bell1206@supunk.biz', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(46, N'Henry', N'Weasley', CAST(N'2001-03-24' AS Date), 5, 1.26937693742541, 1, 2, 174.603011957651, N'Sky blue', 4, N'Henry_Weasley9759@acrit.org', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(47, N'Ethan', N'Whitmore', CAST(N'2010-07-23' AS Date), 9, 1.86650024394807, 5, 2, 234.092961898117, N'Silver', 1, N'Ethan_Whitmore3527@deons.tech', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(48, N'Rosalyn', N'Palmer', CAST(N'2003-12-21' AS Date), 4, 1.47561489486863, 1, 2, 291.093881999652, N'Gold', 8, N'Rosalyn_Palmer5437@fuliss.net', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(49, N'Brad', N'Uttridge', CAST(N'2004-02-18' AS Date), 9, 1.22501056325855, 2, 2, 172.308407202507, N'Dark Red', 7, N'Brad_Uttridge5389@bretoux.com', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(50, N'Celina', N'Buckley', CAST(N'2004-08-08' AS Date), 7, 1.6856140921291, 4, 2, 160.739149912139, N'Pink', 2, N'Celina_Buckley6557@acrit.org', 6)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(51, N'Harvey', N'Gordon', CAST(N'2003-06-08' AS Date), 6, 1.94844370705469, 5, 2, 149.748506362899, N'Amethyst', 6, N'Harvey_Gordon693@qater.org', 1)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(52, N'Jade', N'Moran', CAST(N'2005-03-24' AS Date), 2, 1.71943967636649, 1, 4, 108.83112502649, N'Turquoise', 4, N'Jade_Moran2237@deavo.com', 1)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(53, N'Harvey', N'Allen', CAST(N'2009-11-19' AS Date), 6, 1.0109984255447, 5, 3, 184.404325604627, N'Sky blue', 6, N'Harvey_Allen8412@extex.org', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(54, N'Carter', N'Oakley', CAST(N'2001-11-29' AS Date), 1, 1.78206969647765, 3, 1, 199.039460999444, N'Red', 5, N'Carter_Oakley3456@joiniaa.com', 1)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(55, N'Gemma', N'Gaynor', CAST(N'2000-04-06' AS Date), 7, 1.88141970377482, 4, 1, 116.546042193913, N'Maroon', 3, N'Gemma_Gaynor8788@acrit.org', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(56, N'Adela', N'Broomfield', CAST(N'1999-11-06' AS Date), 8, 1.09164470810985, 3, 3, 129.760046000481, N'Peach', 7, N'Adela_Broomfield4045@sheye.org', 6)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(57, N'Rocco', N'Pratt', CAST(N'1997-12-21' AS Date), 2, 1.69640069487337, 2, 2, 171.569036413715, N'Amethyst', 7, N'Rocco_Pratt5088@gembat.biz', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(58, N'Phillip', N'Harris', CAST(N'1978-11-20' AS Date), 3, 1.19849105281685, 1, 1, 102.459813032048, N'White', 8, N'Phillip_Harris607@fuliss.net', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(59, N'Matt', N'Watson', CAST(N'1983-10-11' AS Date), 6, 1.4652839188768, 5, 1, 219.536915723019, N'Sienna', 6, N'Matt_Watson5695@corti.com', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(60, N'Raquel', N'Needham', CAST(N'1973-02-14' AS Date), 6, 1.94237658378779, 2, 3, 288.200900609233, N'Purple', 1, N'Raquel_Needham4179@atink.com', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(61, N'Caydence', N'Morris', CAST(N'2001-09-18' AS Date), 7, 1.66455933761995, 5, 4, 95.6563387334609, N'Yellow', 1, N'Caydence_Morris6362@liret.org', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(62, N'Bart', N'Chapman', CAST(N'2003-12-28' AS Date), 6, 1.34267921389205, 4, 4, 231.111386255413, N'Capri', 1, N'Bart_Chapman3360@vetan.org', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(63, N'Julius', N'Bell', CAST(N'1978-12-23' AS Date), 3, 1.93099275600677, 5, 3, 236.008855417841, N'Fuchsia', 1, N'Julius_Bell6577@yahoo.com', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(64, N'Irene', N'Camden', CAST(N'1995-06-05' AS Date), 8, 1.87329749338017, 1, 4, 109.425712488324, N'Rust', 8, N'Irene_Camden1538@acrit.org', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(65, N'Erick', N'Johnson', CAST(N'1996-08-25' AS Date), 6, 1.76429425122416, 2, 2, 156.849298557662, N'Pink', 1, N'Erick_Johnson1501@gompie.com', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(66, N'Martin', N'Graves', CAST(N'1998-07-12' AS Date), 6, 1.83529290316407, 1, 4, 185.189664743929, N'Ruby', 5, N'Martin_Graves290@zorer.org', 1)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(67, N'Wendy', N'Donovan', CAST(N'1999-11-30' AS Date), 8, 1.11082371562292, 2, 4, 125.593570065961, N'Red', 1, N'Wendy_Donovan1786@famism.biz', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(68, N'Nick', N'Uttridge', CAST(N'2002-03-09' AS Date), 8, 1.85206130419488, 1, 2, 253.042431647909, N'Blue', 9, N'Nick_Uttridge4079@deavo.com', 1)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(69, N'Matt', N'Tennant', CAST(N'2000-07-17' AS Date), 2, 1.33089934770525, 2, 4, 181.639587572142, N'Sepia', 6, N'Matt_Tennant2148@deons.tech', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(70, N'Cassandra', N'Holmes', CAST(N'2001-01-19' AS Date), 1, 1.3743230231918, 1, 4, 138.280949922409, N'Camel', 9, N'Cassandra_Holmes5589@fuliss.net', 10)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(71, N'Hayden', N'Rodgers', CAST(N'2002-12-10' AS Date), 9, 1.48326201014373, 3, 1, 164.418821436548, N'Sky blue', 8, N'Hayden_Rodgers2729@fuliss.net', 3)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(72, N'Karla', N'Edler', CAST(N'2003-09-12' AS Date), 4, 1.81641818527897, 3, 2, 108.200008070655, N'Cerise', 7, N'Karla_Edler4590@fuliss.net', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(73, N'Chuck', N'Reynolds', CAST(N'2004-11-24' AS Date), 4, 1.90303524532497, 5, 3, 210.258108483282, N'Peach', 4, N'Chuck_Reynolds658@naiker.biz', 7)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(74, N'Lynn', N'Nielson', CAST(N'2006-09-09' AS Date), 5, 1.04326733157191, 2, 4, 186.355612591075, N'Ruby', 8, N'Lynn_Nielson8672@grannar.com', 5)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(75, N'Bryon', N'Wade', CAST(N'2008-01-27' AS Date), 9, 1.56441671800074, 1, 3, 83.2374549802567, N'Sepia', 7, N'Bryon_Wade3413@qater.org', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(76, N'Joseph', N'Wallace', CAST(N'2000-01-03' AS Date), 5, 1.34080865063742, 1, 1, 266.913828992245, N'Salmon', 5, N'Joseph_Wallace2490@sheye.org', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(77, N'Lorraine', N'Jones', CAST(N'2010-05-15' AS Date), 5, 1.60524403006083, 5, 4, 108.886340349394, N'Olive', 5, N'Lorraine_Jones3723@gembat.biz', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(78, N'Nick', N'Fulton', CAST(N'1998-06-18' AS Date), 5, 1.31566637443177, 3, 4, 257.924190305604, N'Cerise', 2, N'Nick_Fulton8770@supunk.biz', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(79, N'Alessandra', N'Woodley', CAST(N'1999-12-29' AS Date), 8, 1.78661250313121, 5, 3, 210.133710352301, N'Salmon', 7, N'Alessandra_Woodley2359@infotech44.tech', 3)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(80, N'Denis', N'Todd', CAST(N'1996-05-16' AS Date), 7, 1.66207304068938, 4, 4, 205.091629572721, N'Pink', 3, N'Denis_Todd4134@dionrab.com', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(81, N'Rosalyn', N'Terry', CAST(N'2000-04-11' AS Date), 7, 1.63223739836004, 2, 3, 292.080462172199, N'Aquamarine', 2, N'Rosalyn_Terry340@gompie.com', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(82, N'Abdul', N'Porter', CAST(N'2001-08-05' AS Date), 7, 1.12075800221449, 2, 4, 213.314379724355, N'Maroon', 2, N'Abdul_Porter6631@dionrab.com', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(83, N'Harvey', N'Rowan', CAST(N'2003-06-07' AS Date), 7, 1.68676940150874, 5, 4, 112.920236579571, N'Blue', 3, N'Harvey_Rowan372@muall.tech', 8)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(84, N'Freya', N'Alexander', CAST(N'2005-08-23' AS Date), 4, 1.31300427453267, 4, 1, 92.6497346752555, N'White', 3, N'Freya_Alexander4932@nimogy.biz', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(85, N'Gil', N'Wren', CAST(N'2001-11-01' AS Date), 9, 1.26330535079506, 5, 3, 142.317385907898, N'White', 4, N'Gil_Wren9310@jiman.org', 6)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(86, N'Maxwell', N'Dillon', CAST(N'2003-12-02' AS Date), 5, 1.87891488749483, 2, 1, 216.534852571569, N'Sepia', 2, N'Maxwell_Dillon465@cispeto.com', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(87, N'George', N'Moran', CAST(N'1999-05-30' AS Date), 2, 1.94292350250432, 3, 1, 186.879144154433, N'Rust', 3, N'George_Moran5081@vetan.org', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(88, N'Lynn', N'Benfield', CAST(N'1997-05-14' AS Date), 2, 1.5519024993069, 1, 3, 283.647870014723, N'Salmon', 1, N'Lynn_Benfield2158@grannar.com', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(89, N'Henry', N'Reyes', CAST(N'1998-12-01' AS Date), 3, 1.9951156578004, 3, 2, 235.21895175158, N'Auburn', 9, N'Henry_Reyes6767@elnee.tech', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(90, N'Julius', N'Tyrrell', CAST(N'1996-07-10' AS Date), 7, 1.00318275019675, 1, 1, 238.425746594288, N'Lavender', 3, N'Julius_Tyrrell93@bauros.biz', 2)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(91, N'Erick', N'Jones', CAST(N'1999-06-12' AS Date), 8, 1.21974597555573, 2, 2, 275.732123703105, N'White', 7, N'Erick_Jones9752@iatim.tech', 4)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(92, N'Jack', N'Bristow', CAST(N'2001-12-15' AS Date), 7, 1.17677881157807, 3, 1, 164.223813413747, N'Sky blue', 7, N'Jack_Bristow304@naiker.biz', 5)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(93, N'Anais', N'Wright', CAST(N'2002-02-16' AS Date), 7, 1.93624633221712, 4, 4, 172.564005692752, N'Beige', 7, N'Anais_Wright5298@joiniaa.com', 5)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(94, N'Manuel', N'Vincent', CAST(N'2003-11-29' AS Date), 9, 1.59808660978362, 3, 4, 87.4564062643128, N'Apricot', 2, N'Manuel_Vincent8081@twipet.com', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(95, N'Carl', N'Varndell', CAST(N'2004-11-21' AS Date), 2, 1.49909369857008, 2, 1, 270.376144992363, N'Lime', 5, N'Carl_Varndell708@yahoo.com', 6)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(96, N'Violet', N'Saunders', CAST(N'2001-08-16' AS Date), 4, 1.26091587835034, 5, 1, 152.215931412864, N'Blue', 7, N'Violet_Saunders6929@cispeto.com', 3)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(97, N'Alison', N'Wren', CAST(N'2003-11-22' AS Date), 1, 1.25631653901949, 3, 2, 255.915243670305, N'Brown', 8, N'Alison_Wren2862@eirey.tech', 9)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(98, N'Danny', N'Ebbs', CAST(N'2004-03-09' AS Date), 4, 1.76339646930033, 3, 2, 192.065863708065, N'Pink', 1, N'Danny_Ebbs4471@deons.tech', 3)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(99, N'Abbey', N'London', CAST(N'2004-03-08' AS Date), 3, 1.77339646930033, 3, 2, 192.065863708065, N'blue', 1, N'Abby_london11@deons.tech', 3)
GO
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(100, N'Kath', N'Jones', CAST(N'2004-03-07' AS Date), 2, 1.78339646930033, 2, 4, 197.065863708065, N'black', 5, N'jones_kath55@deons.tech', 1)
INSERT [dbo].[patient]
	([id], [name], [surname], [date_birth], [profession_id], [height], [blood_type_id], [civil_status_id], [weight], [eyes_color], [country_id], [email], [hospital_id])
VALUES
	(101, N'Lola', N'Style', CAST(N'2004-03-10' AS Date), 1, 1.79339646930033, 1, 5, 174.065863708065, N'green', 4, N'lolstyle45@deons.tech', 2)
SET IDENTITY_INSERT [dbo].[patient] OFF
GO
SET IDENTITY_INSERT [dbo].[patient_direction] ON

INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(1, N'Tilson  Street, 8196', 42)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(2, N'York Rue, 3461', 35)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(3, N'South Vale, 4672', 75)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(4, N'Chatsworth  Crossroad, 7377', 32)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(5, N'Linden Crossroad, 6170', 66)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(6, N'Viscount   Walk, 6689', 85)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(7, N'Blackwall  Vale, 3383', 34)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(8, N'Birkbeck  Road, 5862', 83)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(9, N'Battersea   Rue, 4997', 61)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(10, N'Lake Walk, 3581', 82)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(11, N'Apothecary   Tunnel, 2396', 69)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(12, N'Camelot   Alley, 5424', 95)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(13, N'Cecilia  Grove, 8594', 20)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(14, N'Chatsworth  Avenue, 6709', 40)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(15, N'Glenwood Walk, 4378', 87)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(16, N'Cavendish Route, 1113', 12)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(17, N'Vincent  Walk, 5720', 47)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(18, N'Canon Walk, 4027', 77)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(19, N'Blackheath   Crossroad, 4849', 39)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(20, N'Bede  Vale, 2544', 21)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(21, N'Bekesbourne   Route, 5321', 76)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(22, N'Dunstable   Route, 8206', 59)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(23, N'Maple Alley, 2594', 19)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(24, N'Gate   Avenue, 3129', 97)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(25, N'Blean   Vale, 4029', 64)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(26, N'Bayberry Alley, 7219', 4)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(27, N'Caedmon  Alley, 7724', 17)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(28, N'Chatsworth  Tunnel, 1847', 24)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(29, N'Bellenden   Street, 2890', 13)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(30, N'Bigland  Boulevard, 9302', 90)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(31, N'Church Drive, 4690', 14)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(32, N'Bagford   Street, 4214', 94)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(33, N'Enford   Avenue, 2118', 10)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(34, N'Cliffords  Way, 6852', 52)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(35, N'Shepherds  Avenue, 7216', 10)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(36, N'Collins  Rue, 5801', 72)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(37, N'Ellerman   Road, 6596', 13)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(38, N'Biggerstaff   Street, 1055', 83)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(39, N'Biggerstaff   Avenue, 6810', 54)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(40, N'Victorian  Hill, 5198', 82)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(41, N'Beatty  Crossroad, 6340', 49)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(42, N'Bolingbroke  Alley, 5185', 92)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(43, N'Fair Walk, 4678', 37)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(44, N'Under  Crossroad, 2872', 31)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(45, N'Baynes  Pass, 2209', 49)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(46, N'Collingwood  Boulevard, 7538', 35)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(47, N'Rivervalley Route, 9055', 22)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(48, N'Cingworth  Vale, 9143', 8)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(49, N'Thomas  Lane, 4318', 79)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(50, N'Maple Alley, 6491', 82)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(51, N'Rosewood Pass, 5821', 42)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(52, N'Kilner   Pass, 2027', 36)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(53, N'Clavell   Route, 1428', 85)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(54, N'Apothecary   Road, 2738', 37)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(55, N'King Tunnel, 850', 69)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(56, N'Coley  Boulevard, 9909', 40)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(57, N'Billing  Route, 3893', 73)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(58, N'Argyle  Avenue, 2893', 32)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(59, N'Railroad Route, 9824', 81)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(60, N'Kilner   Boulevard, 6309', 67)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(61, N'Waite  Hill, 49', 56)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(62, N'Kinglake  Alley, 7074', 94)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(63, N'Carolina  Alley, 7152', 73)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(64, N'Maple Drive, 6417', 21)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(65, N'Cave   Street, 5619', 32)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(66, N'Gate   Grove, 9604', 71)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(67, N'Lexington Crossroad, 7524', 97)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(68, N'Endsleigh  Grove, 6528', 74)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(69, N'Virginia Grove, 5075', 64)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(70, N'Linden Grove, 4022', 79)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(71, N'Castlereagh   Grove, 1126', 34)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(72, N'Cephas  Hill, 3158', 14)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(73, N'Ely  Walk, 652', 53)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(74, N'Tiptree   Boulevard, 3221', 71)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(75, N'Carlton  Tunnel, 4743', 17)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(76, N'Blackwall  Pass, 8994', 16)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(77, N'Rivervalley Drive, 785', 59)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(78, N'Angela   Road, 9075', 32)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(79, N'Cheney  Walk, 6355', 90)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(80, N'Cheltenham  Way, 9306', 53)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(81, N'Cavendish Way, 2162', 27)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(82, N'Walnut Vale, 9661', 35)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(83, N'Eaglet  Walk, 517', 1)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(84, N'Boleyn  Street, 4871', 95)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(85, N'Magnolia Drive, 9263', 80)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(86, N'Lake Pass, 6848', 75)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(87, N'Bennett  Pass, 7542', 1)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(88, N'Erindale Grove, 3522', 96)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(89, N'Bury  Drive, 6604', 69)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(90, N'Birkenhead   Way, 7655', 29)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(91, N'Chatsworth  Pass, 4951', 65)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(92, N'Empress  Lane, 3548', 55)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(93, N'Burton  Rue, 3644', 41)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(94, N'Marina  Vale, 500', 78)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(95, N'Cingworth  Grove, 4000', 64)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(96, N'Apothecary   Drive, 6740', 67)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(97, N'Bocking   Alley, 6455', 2)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(98, N'Blomfield  Walk, 4285', 91)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(99, N'Westbourne Way, 7963', 74)
GO
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(100, N'Canon Road, 7965', 96)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(101, N'Walnut Street, 7277', 98)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(102, N'Catherine  Drive, 2632', 24)
INSERT [dbo].[patient_direction]
	([id], [direction], [patient_id])
VALUES
	(103, N'Monroe Crossroad, 7664', 6)
SET IDENTITY_INSERT [dbo].[patient_direction] OFF
GO
SET IDENTITY_INSERT [dbo].[patient_disease] ON

INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(1, N'Runny Nose', N'flu and rest', 64)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(2, N' Ear Ache', N'pain reliever and rest', 13)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(3, N'Runny Nose', N'flu and rest', 3)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(4, N'Runny Nose', N'flu and rest', 2)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(5, N' Ear Ache', N'pain reliever and rest', 25)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(6, N'Runny Nose', N'flu and rest', 77)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(7, N' Ear Ache', N'pain reliever and rest', 30)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(8, N'Runny Nose', N'flu and rest', 14)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(9, N' Ear Ache', N'pain reliever and rest', 88)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(10, N'Runny Nose', N'flu and rest', 10)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(11, N'Runny Nose', N'flu and rest', 11)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(12, N' Ear Ache', N'pain reliever and rest', 90)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(13, N' Ear Ache', N'pain reliever and rest', 21)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(14, N'Runny Nose', N'flu and rest', 32)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(15, N' Ear Ache', N'pain reliever and rest', 2)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(16, N' Ear Ache', N'pain reliever and rest', 8)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(17, N'Runny Nose', N'flu and rest', 18)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(18, N'Coughinge', N'syrup, tea and rest', 36)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(19, N'Runny Nose', N'flu and rest', 64)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(20, N'Coughinge', N'syrup, tea and rest', 27)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(21, N'Coughinge', N'syrup, tea and rest', 16)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(22, N' glaucoma', N'eye drops', 68)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(23, N' glaucoma', N'eye drops', 69)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(24, N'Coughinge', N'syrup, tea and rest', 23)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(25, N'Coughinge', N'syrup, tea and rest', 21)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(26, N' anemia', N'Corticosteroids and good diet', 82)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(27, N' anemia', N'Corticosteroids and good diet', 83)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(28, N'Coughinge', N'syrup, tea and rest', 76)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(29, N' Sore Throat', N'syrup, tea', 96)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(30, N' Sore Throat', N'syrup, tea', 99)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(31, N' hypertension', N'benazepril', 80)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(32, N' hypertension', N'benazepril', 81)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(33, N' Sore Throat', N'syrup, tea', 52)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(34, N' Sore Throat', N'syrup, tea', 22)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(35, N'Headache', N'pill and rest', 87)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(36, N' anemia', N'Corticosteroids and good diet', 86)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(37, N' anemia', N'Corticosteroids and good diet', 87)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(38, N'Headache', N'pill and rest', 92)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(39, N'Headache', N'pill and rest', 91)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(40, N'Headache', N'pill and rest', 90)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(41, N' anemia', N'Corticosteroids and good diet', 90)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(42, N' anemia', N'Corticosteroids and good diet', 91)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(43, N'Headache', N'pill and rest', 33)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(44, N'Stomach Ache', N'serums, gastric and good nutrition', 80)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(45, N' epilepsy', N'Phenytoin', 64)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(46, N' epilepsy', N'Phenytoin', 65)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(47, N'Stomach Ache', N'serums, gastric and good nutrition', 77)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(48, N'Stomach Ache', N'serums, gastric and good nutrition', 14)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(49, N' epilepsy', N'Phenytoin', 66)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(50, N' glaucoma', N'eye drops', 67)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(51, N'Stomach Ache', N'serums, gastric and good nutrition', 13)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(52, N'Stomach Ache', N'serums, gastric and good nutrition', 5)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(53, N'Chickenpox', N'distancing and rest', 3)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(54, N' glaucoma', N'eye drops', 70)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(55, N' glaucoma', N'eye drops', 71)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(56, N'Chickenpox', N'distancing and rest', 17)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(57, N' glaucoma', N'eye drops', 72)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(58, N' hypertension', N'benazepril', 78)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(59, N' hypertension', N'benazepril', 79)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(60, N' glaucoma', N'eye drops', 73)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(61, N'Chickenpox', N'distancing and rest', 57)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(62, N' hypertension', N'benazepril', 76)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(63, N' hypertension', N'benazepril', 77)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(64, N'Chickenpox', N'distancing and rest', 51)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(65, N'Sneeze', N'mask, anti-flu, anti-allergy', 29)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(66, N' diabetes', N'insulin', 55)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(67, N' diabetes', N'insulin', 54)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(68, N'Sneeze', N'mask, anti-flu, anti-allergy', 74)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(69, N'Sneeze', N'mask, anti-flu, anti-allergy', 41)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(70, N' epilepsy', N'Phenytoin', 62)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(71, N' epilepsy', N'Phenytoin', 63)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(72, N'Stomach Ache', N'serums, gastric and good nutrition', 58)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(73, N' anemia', N'Corticosteroids and good diet', 88)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(74, N' anemia', N'Corticosteroids and good diet', 89)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(75, N'Stomach Ache', N'serums, gastric and good nutrition', 94)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(76, N'Sneeze', N'mask, anti-flu, anti-allergy', 42)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(77, N'Sneeze', N'mask, anti-flu, anti-allergy', 29)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(78, N'Coughinge', N'syrup, tea and rest', 76)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(79, N' diabetes', N'insulin', 58)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(80, N' diabetes', N'insulint', 59)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(81, N'Coughinge', N'syrup, tea and rest', 22)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(82, N'Sneeze', N'mask, anti-flu, anti-allergy', 74)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(83, N'Sneeze', N'mask, anti-flu, anti-allergy', 41)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(84, N' Fever', N'acetaminophen and rest', 71)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(85, N'Sneeze', N'mask, anti-flu, anti-allergy', 42)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(86, N'Stomach Ache', N'serums, gastric and good nutrition', 35)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(87, N' anemia', N'Corticosteroids and good diet', 84)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(88, N' anemia', N'Corticosteroids and good diet', 85)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(89, N'Stomach Ache', N'serums, gastric and good nutrition', 34)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(90, N'Chickenpox', N'distancing and rest', 83)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(91, N'Coughinge', N'syrup, tea and rest', 78)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(92, N'Coughinge', N'syrup, tea and rest', 76)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(93, N' Sore Throat', N'syrup, tea', 12)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(94, N' Fever', N'acetaminophen and rest', 55)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(95, N' diabetes', N'insulint', 56)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(96, N' epilepsy', N'Phenytoin', 60)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(97, N' epilepsy', N'Phenytoin', 61)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(98, N' hypertension', N'benazepril', 74)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(99, N' hypertension', N'benazepril', 75)
GO
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(100, N' diabetes', N'insulin', 57)
INSERT [dbo].[patient_disease]
	([id], [disease], [treatment], [patient_id])
VALUES
	(101, N' Fever', N'acetaminophen and rest', 54)
SET IDENTITY_INSERT [dbo].[patient_disease] OFF
GO
SET IDENTITY_INSERT [dbo].[patient_record] ON

INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(1, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2010-10-05T00:00:00.000' AS DateTime), 1, 1, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(2, N' hypertension	', N' care, stress management', N'taking medications, constant appointments', CAST(N'2013-07-08T00:00:00.000' AS DateTime), 1, 5, 9, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(3, N' hypertension	', N' care, stress management', N'taking medications, constant appointments', CAST(N'2004-11-28T00:00:00.000' AS DateTime), 1, 6, 10, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(4, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2010-10-05T00:00:00.000' AS DateTime), 1, 1, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(5, N' Chickenpox', N' Fever and Chickenpox ', N'gradual improvement, requires rest', CAST(N'2002-11-05T00:00:00.000' AS DateTime), 1, 20, 5, 4)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(6, N' Chickenpox', N' Fever', N'no gradual improvement, requires rest', CAST(N'2001-08-05T00:00:00.000' AS DateTime), 1, 11, 2, 7)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(7, N' Chickenpox', N' Fever', N'gradual improvement, requires rest', CAST(N'2005-10-05T00:00:00.000' AS DateTime), 1, 18, 3, 10)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(8, N' Runny Nose', N' Runny Nose', N'gradual improvement, requires rest', CAST(N'2007-01-05T00:00:00.000' AS DateTime), 1, 19, 4, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(9, N' Chickenpox', N' Fever', N'gradual improvement, requires rest', CAST(N'2005-05-05T00:00:00.000' AS DateTime), 1, 11, 3, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(10, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2005-09-05T00:00:00.000' AS DateTime), 1, 12, 32, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(11, N' discomfort and fever', N' Fever and Stomach Acher', N'gradual improvement, requires rest', CAST(N'2010-10-04T00:00:00.000' AS DateTime), 1, 18, 26, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(12, N' Stomach Acher', N' Fever', N'gradual improvement, requires rest', CAST(N'2008-01-08T00:00:00.000' AS DateTime), 1, 36, 42, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(13, N' Coughinge', N' Coughinge', N'gradual improvement, requires rest', CAST(N'2008-07-25T00:00:00.000' AS DateTime), 1, 87, 52, 7)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(14, N' Chickenpox', N' Fever', N'gradual improvement, requires rest', CAST(N'2005-10-05T00:00:00.000' AS DateTime), 1, 18, 3, 10)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(15, N' Runny Nose', N' Runny Nose', N'gradual improvement, requires rest', CAST(N'2007-01-05T00:00:00.000' AS DateTime), 1, 19, 4, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(16, N' Chickenpox', N' Fever', N'gradual improvement, requires rest', CAST(N'2005-05-05T00:00:00.000' AS DateTime), 1, 11, 3, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(17, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2005-09-05T00:00:00.000' AS DateTime), 1, 12, 32, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(18, N' Coughinge', N' Coughinge', N'gradual improvement, requires rest', CAST(N'2009-09-07T00:00:00.000' AS DateTime), 1, 87, 35, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(19, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2007-07-15T00:00:00.000' AS DateTime), 1, 77, 64, 2)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(20, N' Runny Nose', N' Runny Nose', N'no gradual improvement, requires rest', CAST(N'2006-10-07T00:00:00.000' AS DateTime), 1, 71, 28, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(21, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2020-10-08T00:00:00.000' AS DateTime), 1, 70, 21, 1)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(22, N' Stomach Ache', N' Stomach Ache', N'gradual improvement, requires rest', CAST(N'2001-05-05T00:00:00.000' AS DateTime), 1, 10, 23, 2)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(23, N' hypertension	', N'care, stress management', N'taking medications, constant appointments', CAST(N'2011-07-13T00:00:00.000' AS DateTime), 1, 11, 15, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(24, N' hypertension	', N' care, stress management', N'taking medications, constant appointments', CAST(N'2012-08-14T00:00:00.000' AS DateTime), 1, 12, 16, 7)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(25, N' Stomach Ache', N' Stomach Ache', N'no gradual improvement, requires rest', CAST(N'2008-10-04T00:00:00.000' AS DateTime), 1, 94, 23, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(26, N' Sneeze', N' Fever', N'gradual improvement, requires rest', CAST(N'2007-10-05T00:00:00.000' AS DateTime), 1, 17, 28, 4)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(27, N' Sneeze', N' Fever', N'gradual improvement, requires rest', CAST(N'2001-10-08T00:00:00.000' AS DateTime), 1, 18, 23, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(28, N' discomfort and fever', N' Fever', N'no gradual improvement, requires rest', CAST(N'2006-10-17T00:00:00.000' AS DateTime), 1, 85, 46, 2)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(30, N' Sore Throat', N' Sore Throat', N'gradual improvement, requires rest', CAST(N'2017-02-05T00:00:00.000' AS DateTime), 1, 7, 15, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(31, N' discomfort and fever', N' Fever', N'no gradual improvement, requires rest', CAST(N'2016-10-05T00:00:00.000' AS DateTime), 1, 69, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(32, N' Sore Throat', N' Sore Throat', N'no gradual improvement, requires rest', CAST(N'2019-10-05T00:00:00.000' AS DateTime), 1, 28, 2, 4)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(33, N' Sore Throat', N' Sore Throat', N'gradual improvement, requires rest', CAST(N'2017-02-05T00:00:00.000' AS DateTime), 1, 7, 15, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(34, N' discomfort and fever', N' Fever', N'no gradual improvement, requires rest', CAST(N'2016-10-05T00:00:00.000' AS DateTime), 1, 69, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(35, N' Sore Throat', N' Sore Throat', N'gradual improvement, requires rest', CAST(N'2019-10-05T00:00:00.000' AS DateTime), 1, 28, 2, 4)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(36, N' Sore Throat', N' Sore Throat', N'gradual improvement, requires rest', CAST(N'2008-10-05T00:00:00.000' AS DateTime), 1, 74, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(37, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2007-10-15T00:00:00.000' AS DateTime), 1, 40, 2, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(38, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2008-04-05T00:00:00.000' AS DateTime), 1, 12, 28, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(39, N' hypertension	', N' care, stress management', N'taking medications, constant appointments', CAST(N'2009-05-11T00:00:00.000' AS DateTime), 1, 9, 13, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(40, N' hypertension	', N' care, stress management', N'taking medications, constant appointments', CAST(N'2010-06-12T00:00:00.000' AS DateTime), 1, 10, 14, 4)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(41, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2008-10-05T00:00:00.000' AS DateTime), 1, 96, 21, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(42, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2007-10-05T00:00:00.000' AS DateTime), 1, 95, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(43, N' gastritis	', N' correct feeding', N'constant appointments', CAST(N'2021-10-08T00:00:00.000' AS DateTime), 1, 21, 25, 4)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(44, N' gastritis	', N' correct feeding', N' constant appointments', CAST(N'2020-11-09T00:00:00.000' AS DateTime), 1, 22, 26, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(45, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2000-10-25T00:00:00.000' AS DateTime), 1, 45, 8, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(46, N' Coughinge', N' Coughinge', N'gradual improvement, requires rest', CAST(N'2010-07-01T00:00:00.000' AS DateTime), 1, 87, 25, 7)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(47, N' Coughinge', N' Coughinge', N'no gradual improvement, requires rest', CAST(N'2003-08-05T00:00:00.000' AS DateTime), 1, 86, 77, 7)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(48, N' pregnancy', N' control vitamins', N'pending appointment scheduling', CAST(N'2007-11-04T00:00:00.000' AS DateTime), 1, 19, 4, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(49, N' diabetes	', N' good diet and insulin', N'dont forget pills', CAST(N'2006-02-08T00:00:00.000' AS DateTime), 1, 5, 9, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(50, N' Chagas disease', N' intensive treatment', N'pending appointment scheduling', CAST(N'2005-10-04T00:00:00.000' AS DateTime), 1, 15, 4, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(51, N' Runny Nose', N' Runny Nose', N'gradual improvement, requires rest', CAST(N'2007-10-05T00:00:00.000' AS DateTime), 1, 14, 71, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(52, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2008-04-05T00:00:00.000' AS DateTime), 1, 12, 28, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(53, N' epilepsy	', N' care and pills', N'taking medications, constant appointments', CAST(N'2011-12-20T00:00:00.000' AS DateTime), 1, 15, 19, 7)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(54, N' epilepsy	', N' care and pills', N'taking medications, constant appointments', CAST(N'2013-09-01T00:00:00.000' AS DateTime), 1, 16, 21, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(55, N' discomfort and fever', N' Fever', N'no gradual improvement, requires rest', CAST(N'2008-10-05T00:00:00.000' AS DateTime), 1, 96, 21, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(56, N' gastritis	', N' correct feeding', N' constant appointments', CAST(N'2020-12-05T00:00:00.000' AS DateTime), 1, 23, 27, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(57, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2007-10-05T00:00:00.000' AS DateTime), 1, 95, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(58, N' gastritis	', N' correct feeding', N' constant appointments', CAST(N'2020-08-06T00:00:00.000' AS DateTime), 1, 19, 23, 2)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(59, N' gastritis	', N' correct feeding', N' constant appointments', CAST(N'2020-09-07T00:00:00.000' AS DateTime), 1, 20, 24, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(60, N' discomfort and fever', N' Fever', N'no gradual improvement, requires rest', CAST(N'2007-10-15T00:00:00.000' AS DateTime), 1, 40, 2, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(61, N' depression and anxiety	', N' appointment with a psychologist or psychiatrist', N'pending appointment scheduling', CAST(N'2021-07-12T00:00:00.000' AS DateTime), 1, 82, 8, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(62, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2008-04-05T00:00:00.000' AS DateTime), 1, 12, 28, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(63, N' Cancer', N' chemotherapy and protocol', N'gradual improvement, requires rest', CAST(N'2007-10-05T00:00:00.000' AS DateTime), 1, 95, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(64, N' virus	', N'distancing and medication', N'gradual improvement, requires rest', CAST(N'2007-10-05T00:00:00.000' AS DateTime), 1, 95, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(65, N' Cancer', N' chemotherapy and protocol', N'no gradual improvement, requires rest', CAST(N'2007-10-15T00:00:00.000' AS DateTime), 1, 40, 2, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(66, N' Cancer', N' Cancer', N'gradual improvement, requires rest', CAST(N'2008-04-05T00:00:00.000' AS DateTime), 1, 12, 28, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(67, N' diabetes	', N' good diet and insulin', N'dont forget pills', CAST(N'2003-02-04T00:00:00.000' AS DateTime), 1, 1, 8, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(68, N' diabetes	', N' good diet and insulin', N'dont forget pills', CAST(N'2006-02-08T00:00:00.000' AS DateTime), 1, 5, 9, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(69, N' pregnancy', N' control vitamins', N'pending appointment scheduling', CAST(N'2007-10-04T00:00:00.000' AS DateTime), 1, 19, 4, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(70, N' depression and anxiety	', N' appointment with a psychologist or psychiatrist', N'pending appointment scheduling', CAST(N'2021-07-12T00:00:00.000' AS DateTime), 1, 82, 8, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(71, N' Chickenpox', N' Fever', N'gradual improvement, requires rest', CAST(N'2005-05-05T00:00:00.000' AS DateTime), 1, 11, 3, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(72, N' pregnancy', N' control vitamins', N'pending appointment scheduling', CAST(N'2007-10-04T00:00:00.000' AS DateTime), 1, 19, 4, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(73, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2007-10-05T00:00:00.000' AS DateTime), 1, 95, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(74, N' diabetes	', N' good diet and insulin', N'dont forget pills', CAST(N'2017-08-04T00:00:00.000' AS DateTime), 1, 3, 5, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(75, N' diabetes	', N' good diet and insulin', N'dont forget pills', CAST(N'2013-02-10T00:00:00.000' AS DateTime), 1, 20, 8, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(76, N' discomfort and fever', N' Fever', N'no gradual improvement, requires rest', CAST(N'2008-10-05T00:00:00.000' AS DateTime), 1, 96, 21, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(77, N' virus	', N'distancing and medication', N'gradual improvement, requires rest', CAST(N'2007-10-05T00:00:00.000' AS DateTime), 1, 95, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(78, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2007-04-15T00:00:00.000' AS DateTime), 1, 12, 28, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(79, N' broken arm	', N' orthopedic appointment', N'dont forget pills', CAST(N'2019-01-04T00:00:00.000' AS DateTime), 1, 8, 70, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(80, N' broken arm	', N' orthopedic appointment', N'dont forget pills', CAST(N'2020-02-10T00:00:00.000' AS DateTime), 1, 18, 69, 4)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(81, N' Coughinge', N' Coughinge', N'gradual improvement, requires rest', CAST(N'2003-07-01T00:00:00.000' AS DateTime), 1, 87, 25, 7)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(82, N' discomfort and fever', N' Fever', N'gradual improvement, requires rest', CAST(N'2005-10-25T00:00:00.000' AS DateTime), 1, 45, 8, 3)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(83, N' Sore Throat', N' Sore Throat', N'gradual improvement, requires rest', CAST(N'2004-10-05T00:00:00.000' AS DateTime), 1, 74, 2, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(84, N' Sneeze', N' Fever', N'gradual improvement, requires rest', CAST(N'2002-10-08T00:00:00.000' AS DateTime), 1, 18, 23, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(85, N' Runny Nose', N' Runny Nose', N'gradual improvement, requires rest', CAST(N'2004-01-03T00:00:00.000' AS DateTime), 1, 19, 4, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(86, N' epilepsy	', N' care and pills', N'taking medications, constant appointments', CAST(N'2014-10-15T00:00:00.000' AS DateTime), 1, 13, 17, 5)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(87, N' epilepsy	', N' care and pills', N'taking medications, constant appointments', CAST(N'2013-11-15T00:00:00.000' AS DateTime), 1, 14, 18, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(88, N' Runny Nose', N' Runny Nose', N'gradual improvement, requires rest', CAST(N'2008-01-04T00:00:00.000' AS DateTime), 1, 19, 4, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(89, N' pregnancy', N' control vitamins', N'pending appointment scheduling', CAST(N'2007-10-04T00:00:00.000' AS DateTime), 1, 19, 4, 6)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(90, N' hypertension	', N' care, stress management', N'taking medications, constant appointments', CAST(N'2006-03-09T00:00:00.000' AS DateTime), 1, 7, 11, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(91, N' epilepsy	', N' care and pills', N'taking medications, constant appointments', CAST(N'2007-07-15T00:00:00.000' AS DateTime), 1, 17, 21, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(92, N' gastritis	', N' correct feeding', N' constant appointments', CAST(N'2019-07-05T00:00:00.000' AS DateTime), 1, 18, 22, 1)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(93, N' hypertension	', N' care, stress management', N'taking medications, constant appointments', CAST(N'2008-04-10T00:00:00.000' AS DateTime), 1, 8, 12, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(94, N' Chagas disease', N' intensive treatment', N'pending appointment scheduling', CAST(N'2005-10-04T00:00:00.000' AS DateTime), 1, 20, 4, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(95, N' diabetes	', N' good diet and insulin', N'dont forget pills', CAST(N'2018-05-04T00:00:00.000' AS DateTime), 1, 10, 60, 1)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(96, N' diabetes	', N' good diet and insulin', N'dont forget pills', CAST(N'2017-01-04T00:00:00.000' AS DateTime), 1, 20, 9, 8)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(97, N' Chagas disease', N' intensive treatment', N'pending appointment scheduling', CAST(N'2005-10-04T00:00:00.000' AS DateTime), 1, 15, 4, 9)
INSERT [dbo].[patient_record]
	([id], [suffering], [diagnosis], [note], [consultation_date], [voucher_generated], [patient_id], [employee_id], [id_consultation])
VALUES
	(98, N' depression and anxiety	', N' appointment with a psychologist or psychiatrist', N'pending appointment scheduling', CAST(N'2020-01-20T00:00:00.000' AS DateTime), 1, 72, 48, 3)
SET IDENTITY_INSERT [dbo].[patient_record] OFF
GO
SET IDENTITY_INSERT [dbo].[patient_record_medicine] ON

INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(1, 8, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(2, 41, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(3, 68, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(4, 9, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(5, 21, 4)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(6, 66, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(7, 23, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(8, 60, 4)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(9, 45, 4)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(10, 65, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(11, 26, 5)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(12, 64, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(13, 71, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(14, 34, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(15, 34, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(16, 50, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(17, 69, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(18, 33, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(19, 44, 3)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(20, 40, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(21, 23, 4)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(22, 40, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(23, 21, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(24, 43, 3)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(25, 62, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(26, 48, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(27, 51, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(28, 4, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(29, 14, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(30, 46, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(31, 8, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(32, 41, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(33, 48, 3)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(34, 66, 5)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(35, 49, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(36, 58, 4)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(37, 60, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(38, 40, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(39, 66, 3)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(40, 30, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(41, 44, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(42, 10, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(43, 35, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(44, 63, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(45, 55, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(46, 47, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(47, 46, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(48, 9, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(49, 60, 4)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(50, 70, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(51, 71, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(52, 44, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(53, 69, 3)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(54, 56, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(55, 28, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(56, 55, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(57, 33, 5)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(58, 10, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(59, 72, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(60, 47, 5)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(61, 33, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(62, 55, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(63, 25, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(64, 53, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(65, 41, 4)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(66, 11, 5)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(67, 21, 5)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(68, 8, 5)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(69, 43, 3)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(70, 55, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(71, 25, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(72, 47, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(73, 4, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(74, 21, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(75, 50, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(76, 14, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(77, 56, 4)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(78, 37, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(79, 23, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(80, 38, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(81, 42, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(82, 33, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(83, 68, 3)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(84, 47, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(85, 32, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(86, 24, 7)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(87, 7, 5)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(88, 16, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(89, 18, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(90, 61, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(91, 55, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(92, 25, 4)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(93, 14, 2)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(94, 52, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(95, 69, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(96, 16, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(97, 54, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(98, 44, 6)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(100, 54, 7)
GO
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(101, 55, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(102, 56, 9)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(103, 57, 10)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(104, 58, 1)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(105, 52, 8)
INSERT [dbo].[patient_record_medicine]
	([id], [id_patient_record], [id_medicine])
VALUES
	(106, 51, 7)
SET IDENTITY_INSERT [dbo].[patient_record_medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[patient_record_surgery] ON

INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(1, 61, 5, CAST(N'1999-01-18T00:00:00.000' AS DateTime), 46)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(2, 17, 6, CAST(N'2004-10-24T00:00:00.000' AS DateTime), 34)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(3, 4, 2, CAST(N'2010-04-27T00:00:00.000' AS DateTime), 61)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(4, 4, 4, CAST(N'2001-10-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(5, 9, 5, CAST(N'2004-01-03T00:00:00.000' AS DateTime), 24)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(6, 42, 4, CAST(N'2019-02-08T00:00:00.000' AS DateTime), 27)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(7, 75, 9, CAST(N'2016-02-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(8, 47, 4, CAST(N'2006-08-22T00:00:00.000' AS DateTime), 76)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(9, 83, 6, CAST(N'2003-09-02T00:00:00.000' AS DateTime), 62)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(10, 55, 9, CAST(N'2002-02-05T00:00:00.000' AS DateTime), 29)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(11, 58, 6, CAST(N'2015-02-28T00:00:00.000' AS DateTime), 48)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(12, 9, 1, CAST(N'2006-09-09T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(13, 15, 4, CAST(N'2003-07-21T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(14, 13, 6, CAST(N'2010-12-27T00:00:00.000' AS DateTime), 78)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(16, 11, 5, CAST(N'2013-10-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(17, 22, 5, CAST(N'2015-04-07T00:00:00.000' AS DateTime), 38)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(18, 10, 4, CAST(N'2001-11-08T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(19, 50, 2, CAST(N'2010-05-25T00:00:00.000' AS DateTime), 44)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(20, 73, 6, CAST(N'2006-06-26T00:00:00.000' AS DateTime), 69)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(21, 87, 2, CAST(N'2018-08-16T00:00:00.000' AS DateTime), 64)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(22, 19, 5, CAST(N'2014-12-30T00:00:00.000' AS DateTime), 62)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(23, 92, 1, CAST(N'2011-08-24T00:00:00.000' AS DateTime), 24)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(24, 15, 1, CAST(N'2011-07-28T00:00:00.000' AS DateTime), 77)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(25, 22, 2, CAST(N'2011-07-22T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(26, 70, 6, CAST(N'2020-07-29T00:00:00.000' AS DateTime), 61)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(27, 85, 4, CAST(N'2007-09-24T00:00:00.000' AS DateTime), 26)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(28, 57, 1, CAST(N'2017-09-27T00:00:00.000' AS DateTime), 36)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(29, 27, 3, CAST(N'2010-02-06T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(30, 11, 9, CAST(N'2013-07-04T00:00:00.000' AS DateTime), 41)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(31, 42, 5, CAST(N'2017-02-18T00:00:00.000' AS DateTime), 42)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(32, 51, 1, CAST(N'2004-08-29T00:00:00.000' AS DateTime), 63)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(33, 79, 8, CAST(N'2013-10-07T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(34, 73, 1, CAST(N'2008-05-21T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(35, 10, 2, CAST(N'2003-03-13T00:00:00.000' AS DateTime), 44)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(36, 26, 9, CAST(N'2014-06-14T00:00:00.000' AS DateTime), 26)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(37, 57, 9, CAST(N'2007-08-26T00:00:00.000' AS DateTime), 34)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(38, 70, 4, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 22)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(39, 30, 8, CAST(N'2019-07-13T00:00:00.000' AS DateTime), 53)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(40, 53, 9, CAST(N'2004-09-28T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(41, 67, 1, CAST(N'2002-12-25T00:00:00.000' AS DateTime), 42)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(42, 88, 6, CAST(N'2021-03-01T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(43, 46, 2, CAST(N'2017-05-20T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(44, 23, 8, CAST(N'2019-12-21T00:00:00.000' AS DateTime), 41)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(45, 4, 7, CAST(N'2005-11-23T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(46, 23, 4, CAST(N'1999-12-21T00:00:00.000' AS DateTime), 39)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(47, 21, 4, CAST(N'2017-07-08T00:00:00.000' AS DateTime), 73)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(48, 73, 2, CAST(N'2018-03-01T00:00:00.000' AS DateTime), 37)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(49, 80, 1, CAST(N'2013-10-18T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(50, 24, 7, CAST(N'2009-11-15T00:00:00.000' AS DateTime), 27)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(51, 27, 8, CAST(N'2003-10-08T00:00:00.000' AS DateTime), 55)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(52, 42, 7, CAST(N'1998-06-07T00:00:00.000' AS DateTime), 45)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(53, 27, 5, CAST(N'2009-07-31T00:00:00.000' AS DateTime), 55)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(54, 9, 1, CAST(N'2011-06-04T00:00:00.000' AS DateTime), 45)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(55, 10, 7, CAST(N'2010-05-08T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(56, 40, 9, CAST(N'2021-10-11T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(57, 4, 9, CAST(N'2003-08-06T00:00:00.000' AS DateTime), 28)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(58, 47, 2, CAST(N'2012-09-28T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(59, 42, 5, CAST(N'2001-03-24T00:00:00.000' AS DateTime), 45)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(60, 72, 8, CAST(N'2001-04-02T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(61, 27, 8, CAST(N'2016-06-14T00:00:00.000' AS DateTime), 70)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(62, 11, 4, CAST(N'1999-02-28T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(63, 10, 3, CAST(N'2011-02-19T00:00:00.000' AS DateTime), 17)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(64, 97, 7, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 55)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(65, 40, 2, CAST(N'2004-02-13T00:00:00.000' AS DateTime), 62)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(66, 82, 1, CAST(N'2019-04-17T00:00:00.000' AS DateTime), 66)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(67, 7, 8, CAST(N'2003-12-22T00:00:00.000' AS DateTime), 77)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(68, 24, 3, CAST(N'2006-04-28T00:00:00.000' AS DateTime), 26)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(69, 86, 1, CAST(N'2012-12-03T00:00:00.000' AS DateTime), 65)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(70, 28, 9, CAST(N'2005-07-10T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(71, 84, 5, CAST(N'1998-07-23T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(72, 42, 3, CAST(N'2016-07-05T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(73, 46, 7, CAST(N'2013-09-14T00:00:00.000' AS DateTime), 42)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(74, 28, 1, CAST(N'1999-05-27T00:00:00.000' AS DateTime), 58)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(75, 13, 3, CAST(N'2020-02-22T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(76, 95, 3, CAST(N'2017-07-03T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(77, 2, 1, CAST(N'2021-10-07T00:00:00.000' AS DateTime), 50)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(78, 50, 8, CAST(N'2017-01-07T00:00:00.000' AS DateTime), 66)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(79, 7, 9, CAST(N'2007-07-19T00:00:00.000' AS DateTime), 38)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(80, 3, 1, CAST(N'1999-02-17T00:00:00.000' AS DateTime), 45)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(81, 90, 2, CAST(N'2010-12-28T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(82, 37, 5, CAST(N'2018-04-25T00:00:00.000' AS DateTime), 43)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(83, 27, 1, CAST(N'2005-02-13T00:00:00.000' AS DateTime), 79)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(84, 32, 1, CAST(N'2020-02-15T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(85, 55, 1, CAST(N'2008-07-24T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(86, 85, 9, CAST(N'2008-10-11T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(87, 38, 5, CAST(N'2014-11-21T00:00:00.000' AS DateTime), 52)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(88, 62, 8, CAST(N'2001-02-15T00:00:00.000' AS DateTime), 26)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(89, 63, 9, CAST(N'2015-12-30T00:00:00.000' AS DateTime), 50)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(90, 13, 5, CAST(N'2019-05-15T00:00:00.000' AS DateTime), 66)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(91, 14, 4, CAST(N'1999-08-24T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(92, 62, 2, CAST(N'2021-09-25T00:00:00.000' AS DateTime), 69)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(93, 36, 6, CAST(N'2019-10-26T00:00:00.000' AS DateTime), 61)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(94, 95, 8, CAST(N'2013-07-15T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(95, 11, 1, CAST(N'2009-12-05T00:00:00.000' AS DateTime), 70)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(96, 8, 5, CAST(N'2010-04-26T00:00:00.000' AS DateTime), 57)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(97, 98, 2, CAST(N'2007-12-20T00:00:00.000' AS DateTime), 68)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(98, 10, 5, CAST(N'2013-10-12T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(99, 95, 1, CAST(N'2011-06-20T00:00:00.000' AS DateTime), 66)
INSERT [dbo].[patient_record_surgery]
	([id], [id_patient_record], [id_surgery], [surgery_date], [employee_id])
VALUES
	(100, 56, 4, CAST(N'2003-09-07T00:00:00.000' AS DateTime), 71)
GO
SET IDENTITY_INSERT [dbo].[patient_record_surgery] OFF
GO
SET IDENTITY_INSERT [dbo].[patient_relationship] ON

INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(1, N'David', N'Harrison', CAST(N'1999-05-19' AS Date), N'Executive Director', 1.52990639434657, 2, 205.132212258006, N'Rosegold', 8, N'David_Harrison687@brety.org', 88)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(2, N'Taylor', N'Russel', CAST(N'1996-01-30' AS Date), N'Audiologist', 1.25676719451173, 5, 134.972788428875, N'Cadet blue', 6, N'Taylor_Russel9653@hourpy.biz', 81)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(3, N'Liv', N'Knight', CAST(N'1983-01-16' AS Date), N'Auditor', 1.35408803478539, 3, 139.281852137894, N'Camel', 2, N'Liv_Knight1180@vetan.org', 48)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(4, N'Dani', N'Alexander', CAST(N'1982-11-06' AS Date), N'Physician', 1.89895967543077, 2, 43.0011198581202, N'White', 7, N'Dani_Alexander2196@nanoff.biz', 11)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(5, N'Nathan', N'Goodman', CAST(N'1994-04-07' AS Date), N'Paramedic', 1.1243895815799, 5, 105.476107449027, N'Lime', 9, N'Nathan_Goodman539@cispeto.com', 81)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(6, N'Anais', N'Bailey', CAST(N'1995-07-27' AS Date), N'Paramedic', 1.66990149206012, 1, 255.41763530272, N'Peach', 9, N'Anais_Bailey4911@acrit.org', 98)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(7, N'Sonya', N'Walton', CAST(N'1973-09-02' AS Date), N'Global Logistics Supervisor', 1.41531652012622, 2, 135.564590503725, N'Azure', 1, N'Sonya_Walton2702@zorer.org', 46)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(8, N'Liam', N'Mould', CAST(N'1978-03-01' AS Date), N'Treasurer', 1.73770628172797, 5, 140.996656377333, N'Azure', 5, N'Liam_Mould9931@typill.biz', 18)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(9, N'Gemma', N'Shepherd', CAST(N'1973-05-19' AS Date), N'Project Manager', 1.67205774736221, 2, 299.564829350712, N'Red', 9, N'Gemma_Shepherd1529@brety.org', 63)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(10, N'Fiona', N'Hamilton', CAST(N'1987-05-15' AS Date), N'HR Coordinator', 1.07869500125698, 1, 169.145322606967, N'Champagne', 8, N'Fiona_Hamilton8429@mafthy.com', 36)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(11, N'Jack', N'Tyler', CAST(N'1994-07-16' AS Date), N'Software Engineer', 1.68220766819185, 5, 56.1994796801356, N'Mauve', 8, N'Jack_Tyler3252@gompie.com', 74)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(12, N'Percy', N'Foxley', CAST(N'1973-04-04' AS Date), N'Auditor', 1.00647987812128, 4, 200.033118890614, N'Gray', 1, N'Percy_Foxley2246@gmail.com', 42)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(13, N'Ron', N'Clark', CAST(N'1973-11-19' AS Date), N'Physician', 1.33624982630659, 2, 284.64900273534, N'Capri', 2, N'Ron_Clark8505@deons.tech', 66)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(14, N'Rosie', N'Glass', CAST(N'1973-12-02' AS Date), N'Stockbroker', 1.65833279348832, 5, 159.697508662333, N'Peach', 8, N'Rosie_Glass7803@brety.org', 96)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(15, N'Chloe', N'Varley', CAST(N'1973-08-18' AS Date), N'Designer', 1.89341331654853, 3, 63.4674142177531, N'Apricot', 2, N'Chloe_Varley2719@elnee.tech', 62)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(16, N'Gemma', N'Veale', CAST(N'1978-01-21' AS Date), N'Bookkeeper', 1.74873503113572, 2, 193.510818406246, N' Pink', 2, N'Gemma_Veale1012@joiniaa.com', 33)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(17, N'Kaylee', N'Crawford', CAST(N'1984-09-04' AS Date), N'Ambulatory Nurse', 1.77198589223995, 5, 58.2569642617632, N'Gold', 5, N'Kaylee_Crawford6030@twipet.com', 84)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(18, N'Peter', N'Allcott', CAST(N'1978-03-09' AS Date), N'Doctor', 1.17450037853536, 1, 270.753781273846, N'Lavender', 1, N'Peter_Allcott915@ubusive.com', 33)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(19, N'Rosalee', N'Ballard', CAST(N'1995-12-01' AS Date), N'Physician', 1.25860364714572, 4, 182.658683511735, N'Camel', 5, N'Rosalee_Ballard5368@twace.org', 99)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(20, N'Daniel', N'Janes', CAST(N'1992-11-29' AS Date), N'Laboratory Technician', 1.28973424182727, 5, 66.3014106127906, N'Blue', 6, N'Daniel_Janes4267@yahoo.com', 2)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(21, N'Owen', N'Roberts', CAST(N'1981-05-24' AS Date), N'Retail Trainee', 1.6866962783908, 5, 281.054038782629, N'Red', 9, N'Owen_Roberts7985@twipet.com', 68)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(22, N'Irene', N'Pratt', CAST(N'1999-01-31' AS Date), N'Call Center Representative', 0.907062036081712, 5, 282.357532201967, N'Camel', 8, N'Irene_Pratt5691@atink.com', 28)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(23, N'Shelby', N'Plant', CAST(N'1991-03-13' AS Date), N'Bookkeeper', 1.83697856922493, 2, 120.008980237417, N'Amethyst', 9, N'Shelby_Plant2974@zorer.org', 12)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(24, N'Cynthia', N'Coates', CAST(N'1991-02-13' AS Date), N'Ambulatory Nurse', 1.89496920965378, 1, 35.1216562428147, N'Sepia', 7, N'Cynthia_Coates6366@twipet.com', 40)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(25, N'Paula', N'James', CAST(N'1991-06-13' AS Date), N'HR Specialist', 0.914966342139508, 1, 125.439103666432, N'Capri', 6, N'Paula_James3235@dionrab.com', 84)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(26, N'Matt', N'Strong', CAST(N'1991-11-05' AS Date), N'Design Engineer', 1.54889378689644, 3, 69.2756055236215, N'Blue', 7, N'Matt_Strong1066@famism.biz', 31)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(27, N'Doug', N'Vollans', CAST(N'1991-02-02' AS Date), N'Laboratory Technician', 1.07894504972684, 5, 262.989954934916, N'Dark red', 3, N'Doug_Vollans8411@bungar.biz', 83)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(28, N'Helen', N'Alexander', CAST(N'1992-01-20' AS Date), N'Cashier', 1.68594754952283, 2, 201.936244110547, N'Silver', 7, N'Helen_Alexander1175@nickia.com', 54)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(29, N'Henry', N'Connell', CAST(N'1986-11-12' AS Date), N'Pharmacist', 1.48965701171647, 3, 271.860697052377, N'Dark Red', 2, N'Henry_Connell9469@womeona.net', 35)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(30, N'Bob', N'Morley', CAST(N'1992-07-19' AS Date), N'Physician', 1.49292600936858, 3, 103.939868994029, N'Blue', 3, N'Bob_Morley9370@dionrab.com', 47)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(31, N'Johnny', N'John', CAST(N'1992-05-08' AS Date), N'Inspector', 1.23231879832797, 2, 122.381788537084, N'Cadet blue', 1, N'Johnny_John8853@vetan.org', 95)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(32, N'Rosa', N'Irving', CAST(N'1987-02-08' AS Date), N'Stockbroker', 1.60869112932528, 2, 48.0971674276968, N'Gray', 8, N'Rosa_Irving5361@deavo.com', 15)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(33, N'Eryn', N'Powell', CAST(N'1992-11-08' AS Date), N'Stockbroker', 1.12442338113879, 2, 84.0744632515472, N'Aquamarine', 2, N'Eryn_Powell9567@infotech44.tech', 30)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(34, N'Rocco', N'Hamilton', CAST(N'1983-07-02' AS Date), N'Audiologist', 1.62656941028618, 3, 127.242101241947, N'Black', 3, N'Rocco_Hamilton3768@famism.biz', 13)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(35, N'Gemma', N'Jenkins', CAST(N'1995-09-10' AS Date), N'Executive Director', 1.71726138192101, 2, 134.750794747728, N'Dark red', 6, N'Gemma_Jenkins5383@supunk.biz', 22)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(36, N'Jessica', N'John', CAST(N'1975-12-17' AS Date), N'Front Desk Coordinator', 1.75718869550954, 2, 296.64916626953, N'marine', 1, N'Jessica_John4523@grannar.com', 28)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(37, N'Chester', N'Grey', CAST(N'1983-11-18' AS Date), N'Health Educator', 1.1318571862913, 3, 69.0921956575905, N'Lavender', 4, N'Chester_Grey2992@iatim.tech', 48)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(38, N'Percy', N'Quinn', CAST(N'1983-09-23' AS Date), N'Production Painter', 1.71265960299068, 5, 81.7611818764178, N'Cerise', 6, N'Percy_Quinn5634@gompie.com', 98)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(39, N'Mason', N'Michael', CAST(N'1992-01-28' AS Date), N'Mobile Developer', 1.80616503865745, 2, 70.7178738837679, N'Mauve', 2, N'Mason_Michael3814@fuliss.net', 82)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(40, N'Lauren', N'Brock', CAST(N'1978-05-23' AS Date), N'Systems Administrator', 1.70235159620752, 3, 227.387937664235, N'Sepia', 9, N'Lauren_Brock1439@yahoo.com', 94)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(41, N'Carter', N'Cobb', CAST(N'1975-03-02' AS Date), N'Bookkeeper', 1.19139597913781, 5, 223.250738350326, N'Turquoise', 9, N'Carter_Cobb5993@typill.biz', 87)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(42, N'Jackeline', N'Emmott', CAST(N'1975-03-31' AS Date), N'Biologist', 1.31419897853127, 4, 237.575945478201, N'Purple', 9, N'Jackeline_Emmott6793@typill.biz', 63)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(43, N'Hank', N'Rivers', CAST(N'1975-07-18' AS Date), N'Physician', 1.7268991051367, 2, 222.920166293122, N'Pink', 1, N'Hank_Rivers7021@iatim.tech', 56)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(44, N'Harry', N'Rossi', CAST(N'1998-09-12' AS Date), N'Cashier', 1.3541332663289, 2, 198.172717348753, N'Magenta', 2, N'Harry_Rossi3944@guentu.biz', 50)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(45, N'Penelope', N'Glass', CAST(N'1978-09-08' AS Date), N'Inspector', 0.986382841265939, 3, 296.537244700146, N'Capri', 2, N'Penelope_Glass3642@sheye.org', 1)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(46, N'Sofie', N'Reading', CAST(N'1991-10-03' AS Date), N'Budget Analyst', 1.19432865571898, 4, 123.299316142359, N'Gold', 6, N'Sofie_Reading9060@qater.org', 63)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(47, N'Leanne', N'Allcott', CAST(N'1974-06-29' AS Date), N'Steward', 1.6859256732212, 1, 177.070041171773, N'Salmon', 6, N'Leanne_Allcott635@hourpy.biz', 32)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(48, N'George', N'Dwyer', CAST(N'1993-01-03' AS Date), N'Auditor', 1.05911233898211, 3, 189.864526894812, N'Emerald', 7, N'George_Dwyer7704@bretoux.com', 50)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(49, N'Owen', N'Dickson', CAST(N'1976-03-05' AS Date), N'Budget Analyst', 0.919522374504955, 1, 297.939317483427, N'Peach', 6, N'Owen_Dickson4051@nanoff.biz', 37)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(50, N'Harriet', N'Reid', CAST(N'1997-06-11' AS Date), N'Investment  Advisor', 1.4255752967324, 4, 215.042050279231, N'Brown', 8, N'Harriet_Reid5935@nickia.com', 6)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(51, N'Raquel', N'Seymour', CAST(N'1978-01-24' AS Date), N'Baker', 1.12071011095341, 1, 247.237839775736, N'White', 6, N'Raquel_Seymour1772@hourpy.biz', 45)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(52, N'Faith', N'Quinton', CAST(N'1978-05-16' AS Date), N'Front Desk Coordinator', 1.46542970732107, 3, 242.850875857217, N'Maroon', 9, N'Faith_Quinton1322@womeona.net', 24)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(53, N'Luke', N'Roberts', CAST(N'1977-06-24' AS Date), N'CNC Operator', 1.8365708743858, 2, 286.312536314741, N'Red', 1, N'Luke_Roberts6265@deavo.com', 18)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(54, N'Harvey', N'Overson', CAST(N'1978-02-04' AS Date), N'Banker', 1.87363259362692, 3, 58.5551362845838, N'Fuchsia', 9, N'Harvey_Overson2862@famism.biz', 47)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(55, N'Caleb', N'Upsdell', CAST(N'1977-10-24' AS Date), N'Baker', 0.95050328096864, 3, 273.225991687843, N'Olive', 5, N'Caleb_Upsdell7319@sveldo.biz', 6)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(56, N'Bryce', N'Cavanagh', CAST(N'1977-04-11' AS Date), N'Audiologist', 1.78648260938306, 1, 181.74579313339, N'Purple', 3, N'Bryce_Cavanagh9357@extex.org', 23)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(57, N'Daphne', N'Robertson', CAST(N'1991-07-18' AS Date), N'Service Supervisor', 1.42546151519076, 4, 209.580507680578, N'Lavender', 9, N'Daphne_Robertson1974@atink.com', 15)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(58, N'Domenic', N'Ogilvy', CAST(N'1991-06-25' AS Date), N'Restaurant Manager', 1.03207902858596, 3, 76.4536834957328, N'Amethyst', 9, N'Domenic_Ogilvy9877@corti.com', 52)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(59, N'Blake', N'Stewart', CAST(N'1988-04-14' AS Date), N'Investment  Advisor', 1.17382429236259, 4, 185.427606293199, N'Pink', 2, N'Blake_Stewart2741@dionrab.com', 13)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(60, N'Hayden', N'Jones', CAST(N'1974-03-22' AS Date), N'Accountant', 1.30606982605814, 1, 260.700967267948, N'Green', 9, N'Hayden_Jones495@twipet.com', 83)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(61, N'Sofie', N'Skinner', CAST(N'1992-10-11' AS Date), N'Mobile Developer', 1.4953705048167, 4, 268.542005985296, N'Black', 8, N'Sofie_Skinner558@yahoo.com', 64)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(62, N'Leanne', N'Harrington', CAST(N'1988-02-24' AS Date), N'Physician', 1.11744163717024, 4, 52.3801481339057, N'Yellow', 7, N'Leanne_Harrington631@qater.org', 8)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(63, N'Johnny', N'Farrow', CAST(N'1988-03-21' AS Date), N'Project Manager', 1.76181000287729, 3, 160.471264346722, N'White', 9, N'Johnny_Farrow8180@fuliss.net', 54)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(64, N'Livia', N'Thomson', CAST(N'1988-06-09' AS Date), N'Food Technologist', 1.18541523138313, 3, 48.1876059096249, N'Gray', 1, N'Livia_Thomson8977@vetan.org', 23)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(65, N'Sienna', N'Hewitt', CAST(N'1985-03-20' AS Date), N'Software Engineer', 1.08707837638775, 4, 74.0696182730932, N'White', 9, N'Sienna_Hewitt6464@bungar.biz', 61)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(66, N'Danielle', N'Bloom', CAST(N'1988-09-11' AS Date), N'Machine Operator', 1.32160248729475, 4, 182.562459946406, N'Olive', 3, N'Danielle_Bloom9250@twace.org', 24)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(67, N'Chuck', N'Webster', CAST(N'1985-05-10' AS Date), N'Inspector', 1.39177767452401, 2, 254.767177067123, N'Sky blue', 9, N'Chuck_Webster4550@elnee.tech', 30)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(68, N'Rosie', N'Hunt', CAST(N'1980-05-27' AS Date), N'Electrician', 1.71484446014038, 2, 79.4710347952652, N'Sepia', 3, N'Rosie_Hunt5004@guentu.biz', 95)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(69, N'Owen', N'Eaton', CAST(N'1985-11-28' AS Date), N'Web Developer', 1.38270489717028, 1, 147.288599757612, N'Mauve', 8, N'Owen_Eaton3233@atink.com', 31)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(70, N'Nicholas', N'King', CAST(N'1987-12-31' AS Date), N'Loan Officer', 1.8163253642229, 3, 116.913463037421, N'Blue', 8, N'Nicholas_King6045@liret.org', 42)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(71, N'Hazel', N'Lakey', CAST(N'1990-11-19' AS Date), N'Clerk', 0.955847227599401, 4, 288.290493314755, N'Gold', 2, N'Hazel_Lakey5603@zorer.org', 77)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(72, N'Gwen', N'Talbot', CAST(N'1985-08-22' AS Date), N'Retail Trainee', 1.11767663686428, 2, 293.369022418917, N'Gray', 3, N'Gwen_Talbot6158@zorer.org', 31)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(73, N'Remy', N'Purvis', CAST(N'1983-09-13' AS Date), N'Audiologist', 1.05734875442337, 2, 54.5606238267201, N'Lime', 4, N'Remy_Purvis2180@jiman.org', 83)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(74, N'Sara', N'Price', CAST(N'1996-07-27' AS Date), N'Stockbroker', 0.910429614228397, 3, 32.0927374000162, N'Capri', 5, N'Sara_Price2722@nickia.com', 80)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(75, N'Josh', N'Brett', CAST(N'1985-04-20' AS Date), N'Dentist', 0.984286737295001, 4, 222.558845364749, N'Black', 1, N'Josh_Brett7597@vetan.org', 80)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(76, N'Deborah', N'Stewart', CAST(N'1983-03-15' AS Date), N'Biologist', 1.22055920796495, 3, 261.734925323043, N'Emerald', 7, N'Deborah_Stewart4770@infotech44.tech', 41)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(77, N'George', N'James', CAST(N'1983-11-18' AS Date), N'Software Engineer', 1.4631678805515, 2, 80.1351777357679, N'Gold', 1, N'George_James234@womeona.net', 65)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(78, N'Eileen', N'Turner', CAST(N'1983-01-15' AS Date), N'HR Specialist', 1.6886841845646, 5, 123.309125579572, N'Amethyst', 1, N'Eileen_Turner3121@muall.tech', 73)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(79, N'Julian', N'Squire', CAST(N'1975-10-03' AS Date), N'Stockbroker', 1.80134347784395, 3, 41.5211901126994, N'Black', 8, N'Julian_Squire5482@infotech44.tech', 64)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(80, N'Cassandra', N'Ventura', CAST(N'1983-03-09' AS Date), N'Production Painter', 1.68359765269961, 4, 79.5796252403313, N'Sienna', 2, N'Cassandra_Ventura840@deons.tech', 65)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(81, N'Adina', N'Howard', CAST(N'1990-09-05' AS Date), N'Clerk', 1.26571413388742, 1, 200.220588345183, N'Turquoise', 9, N'Adina_Howard1261@deavo.com', 18)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(82, N'Hayden', N'Powell', CAST(N'1988-07-13' AS Date), N'Pharmacist', 1.23810740864748, 3, 263.973197028494, N'Turquoise', 5, N'Hayden_Powell7107@gompie.com', 80)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(83, N'Callie', N'Richards', CAST(N'1990-06-02' AS Date), N'Systems Administrator', 1.21960956767183, 2, 191.45336798134, N'Black', 3, N'Callie_Richards35@elnee.tech', 83)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(84, N'Robyn', N'Porter', CAST(N'1990-06-10' AS Date), N'Banker', 1.17266331635074, 1, 232.235315158141, N'Rosegold', 7, N'Robyn_Porter9982@joiniaa.com', 86)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(85, N'Tiffany', N'Craig', CAST(N'1990-06-17' AS Date), N'Treasurer', 1.63818345588547, 1, 137.886266782361, N'Aqua', 3, N'Tiffany_Craig5342@sheye.org', 2)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(86, N'Ellen', N'Connor', CAST(N'1984-02-20' AS Date), N'Retail Trainee', 1.80833992879295, 4, 109.653674796062, N'Aqua', 6, N'Ellen_Connor1947@deons.tech', 13)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(87, N'Josh', N'Skinner', CAST(N'1984-06-08' AS Date), N'Banker', 0.974025686399092, 3, 219.699926762702, N'Emerald', 6, N'Josh_Skinner3761@qater.org', 45)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(88, N'Lara', N'Heaton', CAST(N'1990-03-30' AS Date), N'Health Educator', 1.89472265131526, 3, 164.261895235284, N'Gold', 3, N'Lara_Heaton5548@brety.org', 29)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(89, N'Tyler', N'Blythe', CAST(N'1984-04-19' AS Date), N'Dentist', 1.72084997735026, 2, 217.50007967907, N'Rosewood', 3, N'Tyler_Blythe96@naiker.biz', 28)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(90, N'Cristal', N'Lloyd', CAST(N'1977-11-18' AS Date), N'Budget Analyst', 1.26009037045766, 1, 54.5615308780975, N'Red', 4, N'Cristal_Lloyd166@twipet.com', 51)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(91, N'Samara', N'Lambert', CAST(N'1977-11-18' AS Date), N'Restaurant Manager', 1.20767938369311, 3, 36.1282026903369, N'Cyan', 7, N'Samara_Lambert2203@gembat.biz', 98)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(92, N'Enoch', N'Ellis', CAST(N'1977-04-11' AS Date), N'CNC Operator', 1.01239409265686, 4, 130.105937450242, N'Lime', 9, N'Enoch_Ellis5521@hourpy.biz', 62)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(93, N'William', N'Mason', CAST(N'1991-02-06' AS Date), N'Designer', 1.26345918586639, 1, 158.707557122087, N'Turquoise', 7, N'William_Mason4184@cispeto.com', 58)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(94, N'Maggie', N'Wilkinson', CAST(N'1977-11-03' AS Date), N'Business Broker', 1.35761617992894, 3, 76.7417205249619, N'Orange', 4, N'Maggie_Wilkinson7380@grannar.com', 69)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(95, N'Madison', N'Dixon', CAST(N'1992-05-10' AS Date), N'Doctor', 1.75215713589087, 3, 258.863297458674, N'Magenta', 3, N'Madison_Dixon848@typill.biz', 77)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(96, N'Zara', N'Knight', CAST(N'1991-09-15' AS Date), N'Associate Professor', 1.55115820274277, 5, 129.212425283721, N'Black', 8, N'Zara_Knight4458@ovock.tech', 31)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(97, N'Benny', N'Spencer', CAST(N'1988-03-23' AS Date), N'Machine Operator', 1.31806519423521, 3, 209.06132888238, N'Magenta', 2, N'Benny_Spencer921@corti.com', 49)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(98, N'Teagan', N'Kennedy', CAST(N'1974-09-19' AS Date), N'Physician', 1.42517605178299, 1, 273.836631636525, N'Fuchsia', 4, N'Teagan_Kennedy5317@bungar.biz', 23)
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(99, N'Ryan', N'Larsen', CAST(N'1974-07-24' AS Date), N'Doctor', 1.85338247248595, 3, 134.257212423374, N'Cerise', 6, N'Ryan_Larsen6466@mafthy.com', 2)
GO
INSERT [dbo].[patient_relationship]
	([id], [name], [surname], [date_birth], [profession], [height], [blood_type_id], [weight], [eyes_color], [country_id], [email], [patient_id])
VALUES
	(100, N'Paige', N'Morrow', CAST(N'1979-08-17' AS Date), N'Food Technologist', 1.45330284384699, 2, 142.132608250777, N'Cyan', 7, N'Paige_Morrow8344@brety.org', 59)
SET IDENTITY_INSERT [dbo].[patient_relationship] OFF
GO
SET IDENTITY_INSERT [dbo].[payment_card] ON

INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(1, N'Benoite Sives', N'402-611-8962', CAST(N'2017-12-31T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(2, N'Biddie Hindmoor', N'486-862-0651', CAST(N'2005-12-20T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(3, N'Deana Foxcroft', N'430-923-6103', CAST(N'2014-07-24T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(4, N'Rolf Sutor', N'972-607-8089', CAST(N'2001-04-29T00:00:00.000' AS DateTime), 10, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(5, N'Erin Boog', N'302-573-6888', CAST(N'2005-07-30T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(6, N'Mendel Nineham', N'334-790-0531', CAST(N'2005-08-17T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(7, N'Thane Bark', N'510-703-1182', CAST(N'2009-11-11T00:00:00.000' AS DateTime), 9, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(8, N'Ernestus Wheildon', N'649-802-6732', CAST(N'2002-07-03T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(9, N'Carma Salmoni', N'117-355-6471', CAST(N'2012-03-03T00:00:00.000' AS DateTime), 9, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(10, N'Owen Isson', N'948-748-7724', CAST(N'2001-05-09T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(11, N'Milzie Hargie', N'785-756-0462', CAST(N'2015-08-14T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(12, N'Ardath Lightollers', N'951-256-3528', CAST(N'2014-04-16T00:00:00.000' AS DateTime), 5, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(13, N'Sylvester Bollam', N'250-647-6321', CAST(N'2004-05-08T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(14, N'Fanchette Leacy', N'978-599-3212', CAST(N'2011-02-15T00:00:00.000' AS DateTime), 6, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(15, N'Toiboid Heindrick', N'515-922-4998', CAST(N'2017-12-09T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(16, N'Ernst Prebble', N'221-380-8130', CAST(N'2018-07-08T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(17, N'Kiah Ivanonko', N'755-293-6219', CAST(N'2002-05-02T00:00:00.000' AS DateTime), 5, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(18, N'Lusa McGuckin', N'876-282-8328', CAST(N'2016-08-11T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(19, N'Adi Shurman', N'699-283-6555', CAST(N'2021-07-31T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(20, N'Leoine Broadbent', N'159-326-5782', CAST(N'2001-06-20T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(21, N'Othelia Rivelon', N'558-387-0019', CAST(N'2002-10-01T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(22, N'Susie McDonough', N'836-650-3689', CAST(N'2020-01-16T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(23, N'Rudolfo Hullbrook', N'266-347-9127', CAST(N'2006-06-08T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(24, N'Bondie Drynan', N'143-987-3951', CAST(N'2017-12-17T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(25, N'Clarinda Maybey', N'404-592-3638', CAST(N'2004-12-21T00:00:00.000' AS DateTime), 5, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(26, N'Barbabas Chappell', N'927-423-6010', CAST(N'2000-06-12T00:00:00.000' AS DateTime), 9, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(27, N'Maiga Baythrop', N'294-695-8717', CAST(N'2005-08-12T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(28, N'Cherilyn Shacklady', N'542-450-7091', CAST(N'2020-07-03T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(29, N'Sissy Wickson', N'149-748-7727', CAST(N'2002-06-21T00:00:00.000' AS DateTime), 9, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(30, N'Terrell Aishford', N'588-265-0974', CAST(N'2006-11-17T00:00:00.000' AS DateTime), 6, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(31, N'Gunilla Klimp', N'775-447-7687', CAST(N'2008-10-22T00:00:00.000' AS DateTime), 8, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(32, N'Paco Acutt', N'298-267-3734', CAST(N'2004-12-09T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(33, N'Rolph Drane', N'842-284-6699', CAST(N'2016-09-29T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(34, N'Mohandas Stores', N'622-813-2857', CAST(N'2019-02-04T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(35, N'Nolly Lippitt', N'761-958-7390', CAST(N'2016-02-07T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(36, N'Golda Drakeford', N'766-779-8543', CAST(N'2006-10-28T00:00:00.000' AS DateTime), 5, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(37, N'Silvain Rubinlicht', N'970-903-9508', CAST(N'2000-02-04T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(38, N'Tish Tuite', N'175-161-2002', CAST(N'2009-03-07T00:00:00.000' AS DateTime), 8, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(39, N'Pattin Cejka', N'482-335-2827', CAST(N'2016-08-19T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(40, N'Sabra Pindar', N'291-126-9442', CAST(N'2006-01-30T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(41, N'Claybourne Norcop', N'269-741-2437', CAST(N'2007-06-18T00:00:00.000' AS DateTime), 7, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(42, N'Mar Keasey', N'257-536-9915', CAST(N'2016-12-05T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(43, N'Padriac Ewence', N'316-645-5439', CAST(N'2017-07-26T00:00:00.000' AS DateTime), 7, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(44, N'Joni Houdmont', N'912-605-7352', CAST(N'2012-11-16T00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(45, N'Marlin Dysert', N'777-183-0369', CAST(N'2007-11-16T00:00:00.000' AS DateTime), 6, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(46, N'Sofia Nichol', N'807-272-5395', CAST(N'2005-10-24T00:00:00.000' AS DateTime), 7, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(47, N'Lottie Longworthy', N'474-944-3526', CAST(N'2015-08-19T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(48, N'Gilburt Kettlesing', N'488-271-3076', CAST(N'2019-04-04T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(49, N'Arluene Coster', N'120-236-5537', CAST(N'2017-07-03T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(50, N'Gwenni Charlson', N'883-789-6122', CAST(N'2014-06-25T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(51, N'Ivor Castanho', N'859-968-5507', CAST(N'2020-11-16T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(52, N'Iseabal Allmond', N'123-341-1988', CAST(N'2015-09-09T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(53, N'Rosemary Inglefield', N'397-657-5562', CAST(N'2010-09-20T00:00:00.000' AS DateTime), 9, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(54, N'Ivan Anyene', N'380-990-0196', CAST(N'2004-06-01T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(55, N'Flynn Fulks', N'801-157-2800', CAST(N'2001-02-02T00:00:00.000' AS DateTime), 5, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(56, N'Elisha McCullough', N'530-717-9608', CAST(N'2018-05-12T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(57, N'Alex Skinn', N'292-868-0589', CAST(N'2001-05-04T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(58, N'Lewiss Stygall', N'280-504-8512', CAST(N'2002-01-31T00:00:00.000' AS DateTime), 6, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(59, N'Tabor Kase', N'837-524-4812', CAST(N'2009-10-24T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(60, N'Antonietta Bille', N'189-771-0300', CAST(N'2006-03-25T00:00:00.000' AS DateTime), 6, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(61, N'Roger Jankovsky', N'432-392-1880', CAST(N'2020-04-27T00:00:00.000' AS DateTime), 10, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(62, N'Theo Aldwich', N'851-427-1488', CAST(N'2012-12-28T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(63, N'Coletta Bewshaw', N'361-323-8705', CAST(N'2010-01-06T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(64, N'Yves Grzelak', N'360-192-0687', CAST(N'2005-03-16T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(65, N'Wright Farrell', N'807-158-6907', CAST(N'2004-03-24T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(66, N'Jolie McEntagart', N'636-242-8448', CAST(N'2015-03-15T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(67, N'Titos Vanyukhin', N'164-461-8005', CAST(N'2013-06-15T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(68, N'Lonnie Thorneywork', N'681-514-2504', CAST(N'2012-09-05T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(69, N'Chantal Stent', N'446-854-7410', CAST(N'2016-10-29T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(70, N'Katleen Troyes', N'914-269-5808', CAST(N'2018-08-17T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(71, N'Bondie Surfleet', N'933-332-3492', CAST(N'2019-03-29T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(72, N'Jaymee Hebblethwaite', N'208-112-4070', CAST(N'2013-11-04T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(73, N'Dom Solleme', N'286-377-8967', CAST(N'2004-07-20T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(74, N'Yolanda Moraleda', N'194-169-1477', CAST(N'2006-02-15T00:00:00.000' AS DateTime), 5, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(75, N'Adamo Thayre', N'922-759-5675', CAST(N'2004-09-21T00:00:00.000' AS DateTime), 10, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(76, N'Aime Gitting', N'880-696-4181', CAST(N'2005-09-30T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(77, N'Quintana Cherrington', N'841-369-8986', CAST(N'2000-02-18T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(78, N'Ami Jackett', N'675-419-0159', CAST(N'2021-05-19T00:00:00.000' AS DateTime), 9, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(79, N'Raynor Duigenan', N'439-558-2355', CAST(N'2019-12-21T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(80, N'Haley Tourmell', N'825-668-0669', CAST(N'2018-05-03T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(81, N'Gabriele Debold', N'246-704-3789', CAST(N'2014-06-18T00:00:00.000' AS DateTime), 6, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(82, N'Alwin Gascar', N'330-265-3686', CAST(N'2001-09-27T00:00:00.000' AS DateTime), 9, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(83, N'Kalvin Axtonne', N'938-498-6632', CAST(N'2016-05-19T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(84, N'Marilee Duchan', N'115-639-9805', CAST(N'2017-04-22T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(85, N'Carla Eyes', N'892-209-9692', CAST(N'2012-08-10T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(86, N'Gavrielle Beining', N'812-848-4842', CAST(N'2020-12-06T00:00:00.000' AS DateTime), 7, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(87, N'Eveline Tift', N'245-108-3254', CAST(N'2005-04-05T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(88, N'Scotti McCroft', N'888-594-4743', CAST(N'2019-11-23T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(89, N'Salvador Tapsfield', N'553-975-2527', CAST(N'2010-03-28T00:00:00.000' AS DateTime), 8, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(90, N'Betta Learoyd', N'728-850-4364', CAST(N'2016-12-12T00:00:00.000' AS DateTime), 8, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(91, N'Annadiane Sallis', N'395-780-0485', CAST(N'2007-11-13T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(92, N'Farand Bhar', N'600-301-5122', CAST(N'2001-03-02T00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(93, N'Gerhardine Bernardo', N'311-900-5534', CAST(N'2003-03-04T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(94, N'Ailsun Chant', N'323-650-6110', CAST(N'2003-05-02T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(95, N'Antonina Scocroft', N'595-379-2902', CAST(N'2003-08-08T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(96, N'Heloise Goodbur', N'599-922-9036', CAST(N'2017-05-22T00:00:00.000' AS DateTime), 5, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(97, N'Wylma Bilton', N'936-869-0702', CAST(N'2002-06-26T00:00:00.000' AS DateTime), 9, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(98, N'Orren Bockman', N'853-547-7670', CAST(N'2015-10-23T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(99, N'Allin Geldeard', N'155-271-9993', CAST(N'2012-04-21T00:00:00.000' AS DateTime), 6, 1)
GO
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(100, N'Bear Hellen', N'873-514-4917', CAST(N'2006-07-30T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(101, N'Della Cockett', N'925-691-7522', CAST(N'2009-04-15T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(102, N'Burke Stefi', N'207-453-6119', CAST(N'2010-06-30T00:00:00.000' AS DateTime), 9, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(103, N'Suzanne Pealing', N'946-774-8556', CAST(N'2017-08-14T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(104, N'Padriac Steadman', N'926-335-0154', CAST(N'2005-03-10T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(105, N'Temp Brockley', N'963-904-2779', CAST(N'2000-01-29T00:00:00.000' AS DateTime), 7, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(106, N'Kathye Sevin', N'832-919-5000', CAST(N'2000-10-30T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(107, N'May Crichmer', N'808-364-7488', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(108, N'Judi Kment', N'759-290-2336', CAST(N'2018-07-18T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(109, N'Helene MacAllaster', N'388-624-8428', CAST(N'2009-12-13T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[payment_card]
	([id], [owner], [number], [expiration], [id_bank], [id_card_type])
VALUES
	(110, N'Gustave Chiplen', N'707-801-6285', CAST(N'2000-09-27T00:00:00.000' AS DateTime), 5, 1)
SET IDENTITY_INSERT [dbo].[payment_card] OFF
GO
SET IDENTITY_INSERT [dbo].[payment_type] ON

INSERT [dbo].[payment_type]
	([id], [type])
VALUES
	(1, N'Cash payment')
INSERT [dbo].[payment_type]
	([id], [type])
VALUES
	(2, N'Payment in installments')
SET IDENTITY_INSERT [dbo].[payment_type] OFF
GO
SET IDENTITY_INSERT [dbo].[pharmacy] ON

INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(1, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(2, 2, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(3, 3, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(4, 4, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(5, 5, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(6, 6, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(7, 7, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(8, 8, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(9, 9, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
INSERT [dbo].[pharmacy]
	([id], [hospital_id], [creation_date], [update_date])
VALUES
	(10, 10, CAST(N'2021-07-06T16:30:06.893' AS DateTime), CAST(N'2021-07-06T16:30:06.893' AS DateTime))
SET IDENTITY_INSERT [dbo].[pharmacy] OFF
GO
SET IDENTITY_INSERT [dbo].[pharmacy_medicine] ON

INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(1, 100, CAST(N'2021-07-06T16:33:49.670' AS DateTime), 1, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(2, 200, CAST(N'2021-07-06T16:33:49.680' AS DateTime), 1, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(3, 784, CAST(N'2021-07-06T16:33:49.680' AS DateTime), 3, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(5, 374, CAST(N'2021-07-06T16:33:49.680' AS DateTime), 10, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(6, 654, CAST(N'2021-07-06T16:36:55.973' AS DateTime), 5, 10)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(7, 50, CAST(N'2021-07-06T16:40:12.653' AS DateTime), 1, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(8, 1000, CAST(N'2021-07-06T16:40:12.687' AS DateTime), 7, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(9, 845, CAST(N'2021-07-06T16:40:12.687' AS DateTime), 6, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(10, 700, CAST(N'2021-07-06T16:40:12.687' AS DateTime), 2, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(11, 500, CAST(N'2021-07-06T16:40:12.687' AS DateTime), 4, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(212, 332, CAST(N'2021-10-02T16:56:26.000' AS DateTime), 8, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(213, 764, CAST(N'2021-10-07T11:05:14.000' AS DateTime), 4, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(214, 370, CAST(N'2021-10-15T09:00:15.000' AS DateTime), 4, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(215, 470, CAST(N'2021-10-14T09:18:21.000' AS DateTime), 2, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(216, 498, CAST(N'2021-10-04T16:20:35.000' AS DateTime), 3, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(217, 166, CAST(N'2021-10-12T17:57:03.000' AS DateTime), 8, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(218, 381, CAST(N'2021-10-11T17:29:08.000' AS DateTime), 9, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(219, 162, CAST(N'2021-10-01T21:20:26.000' AS DateTime), 5, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(220, 365, CAST(N'2021-10-07T14:05:36.000' AS DateTime), 2, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(221, 212, CAST(N'2021-10-15T17:38:04.000' AS DateTime), 6, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(222, 234, CAST(N'2021-10-13T00:12:32.000' AS DateTime), 1, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(223, 208, CAST(N'2021-10-12T18:12:16.000' AS DateTime), 1, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(224, 211, CAST(N'2021-10-15T22:09:46.000' AS DateTime), 3, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(225, 308, CAST(N'2021-10-03T20:25:38.000' AS DateTime), 2, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(226, 789, CAST(N'2021-10-18T19:04:16.000' AS DateTime), 4, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(227, 399, CAST(N'2021-10-17T03:53:24.000' AS DateTime), 7, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(228, 703, CAST(N'2021-10-15T20:20:09.000' AS DateTime), 9, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(229, 50, CAST(N'2021-10-14T11:16:19.000' AS DateTime), 4, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(230, 581, CAST(N'2021-10-03T17:52:55.000' AS DateTime), 9, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(231, 685, CAST(N'2021-10-18T03:00:39.000' AS DateTime), 4, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(232, 880, CAST(N'2021-10-16T05:21:32.000' AS DateTime), 6, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(233, 327, CAST(N'2021-10-18T02:28:13.000' AS DateTime), 2, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(234, 262, CAST(N'2021-10-07T18:55:54.000' AS DateTime), 1, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(235, 762, CAST(N'2021-10-07T00:27:49.000' AS DateTime), 8, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(236, 867, CAST(N'2021-10-14T07:28:29.000' AS DateTime), 2, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(237, 909, CAST(N'2021-10-05T20:46:47.000' AS DateTime), 4, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(238, 200, CAST(N'2021-10-13T09:41:43.000' AS DateTime), 6, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(239, 620, CAST(N'2021-10-07T01:44:25.000' AS DateTime), 9, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(240, 514, CAST(N'2021-10-05T20:41:49.000' AS DateTime), 6, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(241, 295, CAST(N'2021-10-14T22:43:57.000' AS DateTime), 6, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(242, 167, CAST(N'2021-10-16T03:07:39.000' AS DateTime), 5, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(243, 705, CAST(N'2021-10-11T17:06:09.000' AS DateTime), 6, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(244, 421, CAST(N'2021-10-06T16:04:12.000' AS DateTime), 1, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(245, 984, CAST(N'2021-10-01T01:56:45.000' AS DateTime), 8, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(246, 928, CAST(N'2021-10-08T22:44:56.000' AS DateTime), 2, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(247, 496, CAST(N'2021-10-17T14:44:26.000' AS DateTime), 5, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(248, 674, CAST(N'2021-10-03T13:39:58.000' AS DateTime), 2, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(249, 496, CAST(N'2021-10-05T15:45:38.000' AS DateTime), 9, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(250, 871, CAST(N'2021-10-02T03:52:41.000' AS DateTime), 7, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(251, 221, CAST(N'2021-10-15T07:12:26.000' AS DateTime), 8, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(252, 416, CAST(N'2021-10-02T07:44:27.000' AS DateTime), 6, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(253, 887, CAST(N'2021-10-09T06:45:39.000' AS DateTime), 1, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(254, 198, CAST(N'2021-10-06T22:18:13.000' AS DateTime), 4, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(255, 824, CAST(N'2021-10-09T19:44:49.000' AS DateTime), 1, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(256, 376, CAST(N'2021-10-05T10:32:22.000' AS DateTime), 9, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(257, 198, CAST(N'2021-10-07T00:10:16.000' AS DateTime), 8, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(258, 630, CAST(N'2021-10-16T02:02:38.000' AS DateTime), 3, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(259, 500, CAST(N'2021-10-07T20:13:26.000' AS DateTime), 3, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(260, 651, CAST(N'2021-10-09T00:37:34.000' AS DateTime), 8, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(261, 247, CAST(N'2021-10-15T05:16:05.000' AS DateTime), 4, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(262, 964, CAST(N'2021-10-18T03:55:30.000' AS DateTime), 6, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(263, 602, CAST(N'2021-10-14T16:10:42.000' AS DateTime), 5, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(264, 915, CAST(N'2021-10-11T07:55:37.000' AS DateTime), 5, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(265, 910, CAST(N'2021-10-01T12:41:56.000' AS DateTime), 5, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(266, 125, CAST(N'2021-10-16T17:33:55.000' AS DateTime), 1, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(267, 416, CAST(N'2021-10-14T06:54:40.000' AS DateTime), 4, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(268, 716, CAST(N'2021-10-06T10:50:23.000' AS DateTime), 7, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(269, 275, CAST(N'2021-10-17T07:26:50.000' AS DateTime), 5, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(270, 953, CAST(N'2021-10-11T05:32:10.000' AS DateTime), 8, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(271, 864, CAST(N'2021-10-18T13:45:25.000' AS DateTime), 4, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(272, 816, CAST(N'2021-10-01T00:55:08.000' AS DateTime), 5, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(273, 732, CAST(N'2021-10-02T19:33:45.000' AS DateTime), 1, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(274, 975, CAST(N'2021-10-08T02:05:32.000' AS DateTime), 5, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(275, 216, CAST(N'2021-10-02T08:30:33.000' AS DateTime), 5, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(276, 382, CAST(N'2021-10-16T01:57:18.000' AS DateTime), 7, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(277, 891, CAST(N'2021-10-06T11:41:00.000' AS DateTime), 8, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(278, 515, CAST(N'2021-10-07T22:23:40.000' AS DateTime), 6, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(279, 548, CAST(N'2021-10-09T15:51:53.000' AS DateTime), 1, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(280, 964, CAST(N'2021-10-12T09:34:54.000' AS DateTime), 4, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(281, 294, CAST(N'2021-10-14T13:27:19.000' AS DateTime), 4, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(282, 146, CAST(N'2021-10-11T08:32:35.000' AS DateTime), 2, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(283, 695, CAST(N'2021-10-07T02:51:52.000' AS DateTime), 9, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(284, 381, CAST(N'2021-10-07T02:24:40.000' AS DateTime), 8, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(285, 684, CAST(N'2021-10-02T02:04:29.000' AS DateTime), 8, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(286, 641, CAST(N'2021-10-08T21:21:14.000' AS DateTime), 8, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(287, 901, CAST(N'2021-10-06T07:17:52.000' AS DateTime), 9, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(288, 316, CAST(N'2021-10-06T16:01:23.000' AS DateTime), 5, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(289, 405, CAST(N'2021-10-10T01:38:36.000' AS DateTime), 2, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(290, 516, CAST(N'2021-10-05T10:06:19.000' AS DateTime), 5, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(291, 981, CAST(N'2021-10-04T11:37:09.000' AS DateTime), 4, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(292, 116, CAST(N'2021-10-14T02:46:50.000' AS DateTime), 6, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(293, 815, CAST(N'2021-10-08T01:05:18.000' AS DateTime), 3, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(294, 886, CAST(N'2021-10-16T16:37:37.000' AS DateTime), 9, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(295, 117, CAST(N'2021-10-16T04:32:29.000' AS DateTime), 3, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(296, 161, CAST(N'2021-10-04T09:13:08.000' AS DateTime), 5, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(297, 772, CAST(N'2021-10-18T19:44:30.000' AS DateTime), 1, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(298, 834, CAST(N'2021-10-08T00:01:07.000' AS DateTime), 8, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(299, 333, CAST(N'2021-10-15T00:31:24.000' AS DateTime), 1, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(300, 881, CAST(N'2021-10-17T05:21:24.000' AS DateTime), 1, 7)
GO
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(301, 264, CAST(N'2021-10-12T19:10:51.000' AS DateTime), 9, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(302, 939, CAST(N'2021-10-16T20:06:55.000' AS DateTime), 7, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(303, 492, CAST(N'2021-10-04T12:21:24.000' AS DateTime), 2, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(304, 419, CAST(N'2021-10-08T16:43:24.000' AS DateTime), 3, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(305, 81, CAST(N'2021-10-12T09:06:56.000' AS DateTime), 9, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(306, 768, CAST(N'2021-10-03T19:15:51.000' AS DateTime), 9, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(307, 958, CAST(N'2021-10-03T09:27:19.000' AS DateTime), 7, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(308, 745, CAST(N'2021-10-13T22:58:52.000' AS DateTime), 8, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(309, 298, CAST(N'2021-10-03T10:26:37.000' AS DateTime), 3, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(310, 276, CAST(N'2021-10-09T22:57:42.000' AS DateTime), 6, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(311, 75, CAST(N'2021-10-13T02:32:12.000' AS DateTime), 5, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(312, 307, CAST(N'2021-10-05T05:05:32.000' AS DateTime), 5, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(313, 899, CAST(N'2021-10-08T02:04:07.000' AS DateTime), 7, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(314, 992, CAST(N'2021-10-08T18:13:43.000' AS DateTime), 5, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(315, 661, CAST(N'2021-10-08T11:35:06.000' AS DateTime), 7, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(316, 82, CAST(N'2021-10-16T10:39:24.000' AS DateTime), 4, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(317, 898, CAST(N'2021-10-04T08:04:44.000' AS DateTime), 6, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(318, 118, CAST(N'2021-10-16T20:35:52.000' AS DateTime), 2, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(319, 318, CAST(N'2021-10-06T07:27:58.000' AS DateTime), 7, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(320, 845, CAST(N'2021-10-14T11:26:45.000' AS DateTime), 6, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(321, 542, CAST(N'2021-10-13T09:42:21.000' AS DateTime), 5, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(322, 254, CAST(N'2021-10-08T03:58:50.000' AS DateTime), 4, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(323, 569, CAST(N'2021-10-11T00:13:28.000' AS DateTime), 7, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(324, 604, CAST(N'2021-10-03T04:24:40.000' AS DateTime), 4, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(325, 447, CAST(N'2021-10-16T14:58:00.000' AS DateTime), 5, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(326, 254, CAST(N'2021-10-10T20:30:41.000' AS DateTime), 9, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(327, 880, CAST(N'2021-10-04T11:08:20.000' AS DateTime), 1, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(328, 222, CAST(N'2021-10-09T05:17:54.000' AS DateTime), 1, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(329, 574, CAST(N'2021-10-04T06:39:08.000' AS DateTime), 1, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(330, 567, CAST(N'2021-10-10T22:50:52.000' AS DateTime), 1, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(331, 129, CAST(N'2021-10-03T16:45:43.000' AS DateTime), 7, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(332, 937, CAST(N'2021-10-13T06:20:18.000' AS DateTime), 7, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(333, 432, CAST(N'2021-10-08T16:04:22.000' AS DateTime), 6, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(334, 329, CAST(N'2021-10-11T19:33:52.000' AS DateTime), 3, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(335, 694, CAST(N'2021-10-09T06:26:02.000' AS DateTime), 9, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(336, 398, CAST(N'2021-10-10T11:11:25.000' AS DateTime), 3, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(337, 523, CAST(N'2021-10-01T07:49:16.000' AS DateTime), 6, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(338, 133, CAST(N'2021-10-06T17:30:23.000' AS DateTime), 7, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(339, 552, CAST(N'2021-10-16T04:49:24.000' AS DateTime), 4, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(340, 260, CAST(N'2021-10-18T20:15:47.000' AS DateTime), 2, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(341, 898, CAST(N'2021-10-04T20:55:23.000' AS DateTime), 1, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(342, 590, CAST(N'2021-10-10T16:36:42.000' AS DateTime), 2, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(343, 227, CAST(N'2021-10-10T21:37:17.000' AS DateTime), 3, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(344, 695, CAST(N'2021-10-06T07:00:49.000' AS DateTime), 4, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(345, 78, CAST(N'2021-10-08T13:27:24.000' AS DateTime), 1, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(346, 160, CAST(N'2021-10-16T13:00:36.000' AS DateTime), 9, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(347, 343, CAST(N'2021-10-09T05:41:11.000' AS DateTime), 6, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(348, 496, CAST(N'2021-10-18T14:30:48.000' AS DateTime), 2, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(349, 885, CAST(N'2021-10-10T21:32:40.000' AS DateTime), 5, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(350, 155, CAST(N'2021-10-03T03:17:04.000' AS DateTime), 4, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(351, 664, CAST(N'2021-10-07T14:39:18.000' AS DateTime), 8, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(352, 838, CAST(N'2021-10-02T07:38:41.000' AS DateTime), 3, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(353, 485, CAST(N'2021-10-17T21:34:53.000' AS DateTime), 9, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(354, 352, CAST(N'2021-10-12T10:55:27.000' AS DateTime), 4, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(355, 346, CAST(N'2021-10-02T09:06:15.000' AS DateTime), 9, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(356, 619, CAST(N'2021-10-18T19:30:18.000' AS DateTime), 8, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(357, 474, CAST(N'2021-10-12T20:57:16.000' AS DateTime), 9, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(358, 260, CAST(N'2021-10-04T16:10:24.000' AS DateTime), 8, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(359, 745, CAST(N'2021-10-04T16:49:27.000' AS DateTime), 2, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(360, 62, CAST(N'2021-10-17T12:25:16.000' AS DateTime), 7, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(361, 948, CAST(N'2021-10-02T01:34:08.000' AS DateTime), 2, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(362, 61, CAST(N'2021-10-11T22:11:25.000' AS DateTime), 5, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(363, 915, CAST(N'2021-10-13T21:50:07.000' AS DateTime), 5, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(364, 834, CAST(N'2021-10-03T15:50:39.000' AS DateTime), 5, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(365, 728, CAST(N'2021-10-07T12:00:14.000' AS DateTime), 8, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(366, 130, CAST(N'2021-10-12T13:16:38.000' AS DateTime), 5, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(367, 619, CAST(N'2021-10-14T14:01:37.000' AS DateTime), 4, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(368, 241, CAST(N'2021-10-11T13:08:14.000' AS DateTime), 9, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(369, 963, CAST(N'2021-10-08T16:27:38.000' AS DateTime), 4, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(370, 256, CAST(N'2021-10-08T04:11:44.000' AS DateTime), 8, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(371, 123, CAST(N'2021-10-07T13:28:02.000' AS DateTime), 2, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(372, 414, CAST(N'2021-10-01T19:02:06.000' AS DateTime), 3, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(373, 767, CAST(N'2021-10-18T19:00:47.000' AS DateTime), 2, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(374, 259, CAST(N'2021-10-16T18:58:00.000' AS DateTime), 4, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(375, 379, CAST(N'2021-10-09T18:51:36.000' AS DateTime), 3, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(376, 270, CAST(N'2021-10-18T15:11:49.000' AS DateTime), 9, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(377, 418, CAST(N'2021-10-17T09:32:06.000' AS DateTime), 8, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(378, 451, CAST(N'2021-10-07T04:56:38.000' AS DateTime), 7, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(379, 543, CAST(N'2021-10-15T11:01:42.000' AS DateTime), 8, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(380, 581, CAST(N'2021-10-01T03:29:03.000' AS DateTime), 4, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(381, 996, CAST(N'2021-10-04T18:56:15.000' AS DateTime), 5, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(382, 954, CAST(N'2021-10-07T09:53:37.000' AS DateTime), 9, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(383, 168, CAST(N'2021-10-12T21:56:33.000' AS DateTime), 3, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(384, 246, CAST(N'2021-10-03T04:07:02.000' AS DateTime), 5, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(385, 882, CAST(N'2021-10-05T01:03:23.000' AS DateTime), 9, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(386, 176, CAST(N'2021-10-07T22:23:09.000' AS DateTime), 1, 6)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(387, 441, CAST(N'2021-10-02T02:05:54.000' AS DateTime), 2, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(388, 413, CAST(N'2021-10-05T12:28:07.000' AS DateTime), 8, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(389, 95, CAST(N'2021-10-12T19:12:00.000' AS DateTime), 1, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(390, 142, CAST(N'2021-10-07T19:14:57.000' AS DateTime), 5, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(391, 289, CAST(N'2021-10-17T12:24:14.000' AS DateTime), 2, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(392, 130, CAST(N'2021-10-02T00:07:25.000' AS DateTime), 4, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(393, 85, CAST(N'2021-10-10T13:16:07.000' AS DateTime), 6, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(394, 761, CAST(N'2021-10-03T04:09:01.000' AS DateTime), 5, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(395, 712, CAST(N'2021-10-05T19:55:36.000' AS DateTime), 4, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(396, 336, CAST(N'2021-10-18T01:51:39.000' AS DateTime), 9, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(397, 596, CAST(N'2021-10-15T01:33:36.000' AS DateTime), 6, 1)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(398, 858, CAST(N'2021-10-06T22:50:50.000' AS DateTime), 9, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(399, 785, CAST(N'2021-10-07T05:13:38.000' AS DateTime), 5, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(400, 808, CAST(N'2021-10-04T04:47:56.000' AS DateTime), 4, 7)
GO
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(401, 553, CAST(N'2021-10-10T09:27:37.000' AS DateTime), 2, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(402, 383, CAST(N'2021-10-02T13:23:53.000' AS DateTime), 3, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(403, 978, CAST(N'2021-10-16T02:44:31.000' AS DateTime), 6, 5)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(404, 648, CAST(N'2021-10-15T15:00:30.000' AS DateTime), 6, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(405, 647, CAST(N'2021-10-17T17:39:13.000' AS DateTime), 3, 3)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(406, 789, CAST(N'2021-10-11T08:13:46.000' AS DateTime), 3, 4)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(407, 290, CAST(N'2021-10-13T18:44:13.000' AS DateTime), 5, 8)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(408, 329, CAST(N'2021-10-02T01:24:43.000' AS DateTime), 2, 9)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(409, 713, CAST(N'2021-10-14T10:07:32.000' AS DateTime), 4, 7)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(410, 247, CAST(N'2021-10-15T17:40:54.000' AS DateTime), 5, 2)
INSERT [dbo].[pharmacy_medicine]
	([id], [quantity], [date_admission], [pharmacy_id], [medicine_id])
VALUES
	(411, 346, CAST(N'2021-10-13T12:44:17.000' AS DateTime), 1, 4)
SET IDENTITY_INSERT [dbo].[pharmacy_medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[profession] ON

INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(1, N'Medico', CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(2, N'Cirujano', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(3, N'Ingeniero', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(4, N'Secretaria', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(5, N'Medico general', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(6, N'Licenciado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(7, N'Técnico', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(8, N'Administrador', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(9, N'Medico', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[profession]
	([id], [profession], [creation_date], [update_date])
VALUES
	(10, N'Anestesiologo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
SET IDENTITY_INSERT [dbo].[profession] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON

INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(1, N'Habitación 1', 8.5, 1, 2, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(2, N'Habitación 2', 10, 2, 3, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(3, N'Habitación San Juan', 20, 8, 2, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(4, N'Habitación La Familia', 35, 7, 3, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(5, N'Habitación Buenavista', 75, 5, 9, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(6, N'Habitación San Marcos', 45, 7, 5, CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(7, N'Habitación El trevor', 45, 8, 8, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(8, N'Habitación B', 13.75, 3, 4, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(9, N'Habitación C', 33.2, 9, 7, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
INSERT [dbo].[room]
	([id], [name], [price_per_day], [level_id], [id_room_type], [creation_date], [update_date])
VALUES
	(10, N'Habitación D', 17.5, 5, 8, CAST(N'2021-07-06T16:30:06.883' AS DateTime), CAST(N'2021-07-06T16:30:06.883' AS DateTime))
SET IDENTITY_INSERT [dbo].[room] OFF
GO
SET IDENTITY_INSERT [dbo].[room_type] ON

INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(1, N'Pequeña', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(2, N'Para cirugias', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(3, N'Habitación', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(4, N'Consultorio', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(5, N'Grande', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(6, N'Multiusos', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(7, N'Descanso', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(8, N'Mediana', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(9, N'De espera', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
INSERT [dbo].[room_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(10, N'Administración', CAST(N'2021-07-06T16:30:06.880' AS DateTime), CAST(N'2021-07-06T16:30:06.880' AS DateTime))
SET IDENTITY_INSERT [dbo].[room_type] OFF
GO
SET IDENTITY_INSERT [dbo].[schedule] ON

INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(1, N'10 am', N'3 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(2, N'8 am', N'3 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(3, N'11 am', N'2 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(4, N'6 am', N'1 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(5, N'8 pm', N'4 am')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(6, N'8 am', N'4 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(7, N'11 am', N'5 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(8, N'10 am', N'3 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(9, N'11 am', N'3 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(10, N'7 am', N'5 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(11, N'7:30 am', N'3:40 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(12, N'7:15 am', N'12:00 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(13, N'8:10 am', N'2:30 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(14, N'10:00 pm', N'4:00 am')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(15, N'6:00 pm', N'6:00 am')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(16, N'9:00 am', N'4:30 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(17, N'11:00', N'7:00 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(18, N'10:30 am', N'6:30 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(19, N'9:45 am', N'6:15 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(20, N'9:45 am', N'5:15 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(21, N'9:45 am', N'7:15 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(22, N'6:45 am', N'1:15 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(23, N'7:00 am', N'11:10 am')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(24, N'5:30 am', N'12:00 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(25, N'10:25 am', N'1:35 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(26, N'10:25 am', N'2:35 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(27, N'8,:25 am', N'1:35 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(28, N'8:30 am', N'3:45 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(29, N'7:30 am', N'4:45 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(30, N'11:00 am', N'6:12 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(31, N'8:15 am', N'4:30 pm')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(32, N'8:00 pm', N'6:00 am')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(33, N'7:30 pm', N'5:15 am')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(34, N'10:05 pm', N'7:05 am')
INSERT [dbo].[schedule]
	([id], [start_hour], [end_hour])
VALUES
	(35, N'6:00 am', N'4:00 pm')
SET IDENTITY_INSERT [dbo].[schedule] OFF
GO
SET IDENTITY_INSERT [dbo].[schedule_employee] ON

INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(1, 29, 10, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(2, 34, 47, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(3, 11, 5, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(4, 33, 30, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(5, 26, 24, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(6, 30, 28, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(7, 19, 4, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(8, 17, 64, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(9, 27, 38, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(10, 1, 52, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(11, 4, 32, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(12, 1, 42, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(13, 32, 2, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(14, 20, 66, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(15, 22, 69, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(16, 11, 61, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(17, 33, 33, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(18, 14, 38, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(19, 4, 28, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(20, 2, 16, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(21, 34, 24, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(22, 12, 65, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(23, 6, 24, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(24, 18, 70, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(25, 9, 72, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(26, 20, 62, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(27, 32, 36, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(28, 26, 5, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(29, 1, 52, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(30, 24, 69, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(31, 15, 65, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(32, 8, 45, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(33, 26, 23, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(34, 31, 11, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(35, 30, 32, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(36, 26, 11, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(37, 15, 39, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(38, 12, 10, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(39, 15, 17, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(40, 4, 26, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(41, 2, 35, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(42, 20, 7, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(43, 18, 4, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(44, 21, 62, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(45, 30, 3, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(46, 20, 67, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(47, 26, 22, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(48, 13, 21, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(49, 22, 7, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(50, 3, 58, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(51, 11, 49, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(52, 31, 62, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(53, 11, 22, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(54, 15, 16, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(55, 7, 61, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(56, 1, 35, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(57, 14, 65, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(58, 21, 25, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(59, 21, 52, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(60, 13, 71, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(61, 12, 33, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(62, 34, 22, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(63, 20, 73, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(64, 23, 19, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(65, 11, 24, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(66, 16, 14, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(67, 25, 47, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(68, 22, 51, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(69, 2, 53, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(70, 30, 22, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(71, 17, 71, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(72, 11, 8, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(73, 29, 14, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(74, 18, 33, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(75, 31, 56, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(76, 25, 23, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(77, 1, 11, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(78, 25, 48, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(79, 14, 51, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(80, 12, 70, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(81, 30, 52, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(82, 3, 12, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(83, 10, 73, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(84, 10, 47, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(85, 32, 17, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(86, 5, 56, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(87, 11, 25, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(88, 11, 64, 1)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(89, 22, 57, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(90, 1, 69, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(91, 1, 36, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(92, 32, 48, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(93, 28, 61, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(94, 11, 34, 2)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(95, 28, 56, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(96, 18, 59, 3)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(97, 5, 21, 5)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(98, 28, 5, 4)
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(99, 7, 42, 5)
GO
INSERT [dbo].[schedule_employee]
	([id], [id_schedule], [id_employee], [id_schedule_freq_type])
VALUES
	(100, 19, 33, 2)
SET IDENTITY_INSERT [dbo].[schedule_employee] OFF
GO
SET IDENTITY_INSERT [dbo].[schedule_freq_type] ON

INSERT [dbo].[schedule_freq_type]
	([id], [freq])
VALUES
	(1, N'2 veces a la semana')
INSERT [dbo].[schedule_freq_type]
	([id], [freq])
VALUES
	(2, N'1 vez a la semana')
INSERT [dbo].[schedule_freq_type]
	([id], [freq])
VALUES
	(3, N'3 veces a la semana')
INSERT [dbo].[schedule_freq_type]
	([id], [freq])
VALUES
	(4, N'4 veces a la semana')
INSERT [dbo].[schedule_freq_type]
	([id], [freq])
VALUES
	(5, N'Todos los días de la semana')
INSERT [dbo].[schedule_freq_type]
	([id], [freq])
VALUES
	(6, N'Sábados')
SET IDENTITY_INSERT [dbo].[schedule_freq_type] OFF
GO
SET IDENTITY_INSERT [dbo].[supplier] ON

INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(1, N'Pfizer', N'Colonia Buenos Aires 3, Diagonal Centroamérica, Avenida Alvarado, contiguo al Ministerio de Hacienda', N'7458-9857', N'pfizer@gmail.com', N'Amanda Hernandez')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(2, N'Laboratorios Lopez', N'1ª Calle Poniente entre 60ª Avenida Norte y Boulevard Constitución No. 3549', N'7458-0000', N'lablo@gmail.com', N'Armando lopez')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(3, N'Laboratorios Vermex', N'1ª Calle Poniente entre 59ª Avenida Sur y Boulevard Constitución No. 3000', N'1458-7000', N'labVer@gmail.com', N'Manuel Valle')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(4, N'Laboratorios La salud', N'2ª Calle Poniente entre 30ª Avenida Norte y Boulevard el ejercito No. 1445', N'7402-9999', N'labLaSalud@gmail.com', N'Daniel Lopez')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(5, N'Laboratorios la esperanza', N'10ª Calle Poniente entre 49ª Avenida Sur y Boulevard los proceres No. 1478', N'7411-8742', N'labesperanza@gmail.com', N'Armando lopez')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(6, N'Laboratorios BestandLab', N'Colonia San Francisco, Avenida Las Camelias y Calle Los Abetos No. 22', N'6425-7485', N'bestandLab@gmail.com', N'Yancy Lopez')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(7, N'Laboratorios FarHome', N'Colonia San Juan, Avenida Las Camelias y Calle Los Abetos No. 1245', N'2596-8574', N'FarHome@gmail.com', N'Karen Lopez')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(8, N'Laboratorios San Jose', N'Colonia San Lucas, Avenida Las Camelias y Calle Los Abetos No. 1458', N'4517-9895', N'sanjoselab@gmail.com', N'Karen Lopez')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(9, N'Laboratorios Bayer', N'10ª Avenida Sur y Calle Lara No. 935, Barrio San Jacinto', N'2596-8574', N'bayer@gmail.com', N'Issela Mejia')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(10, N'Laboratorios Moderna', N'10ª Avenida Sur y Calle Lara No. 940, Barrio San Jacinto', N'4589-65100', N'labmoderna@gmail.com', N'Juan Andres')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(11, N'Comcast', N'Biolife Grup, Carlisle  Pass 1017, Amarillo, NZL 2522', N'4-763-703-7012', N'Logan_Oliver6121@deavo.com', N'Logan Oliver')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(12, N'Carrefour', N'Zepter, Blackall   Hill 1157, Fort Lauderdale, JOR 5107', N'2-368-273-0507', N'David_Hunt7101@muall.tech', N'David Hunt')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(13, N'Vodafone', N'Danone, Adams  Grove 1298, Madrid, CIV 1566', N'1-371-272-0331', N'Davina_Clark3172@vetan.org', N'Davina Clark')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(14, N'It Smart Group', N'21st Century Fox, Caroline  Hill 8235, Madison, CCK 7305', N'6-864-350-2578', N'Eden_Graves285@iatim.tech', N'Eden Graves')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(15, N'Carrefour', N'Coca-Cola Company, Garfield Street 1033, Rome, EST 5881', N'8-568-612-5168', N'Alexander_Evans7470@famism.biz', N'Alexander Evans')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(16, N'Vodafone', N'21st Century Fox, Unwin  Route 5464, Rochester, MSR 5727', N'4-150-433-1588', N'Dorothy_Evans9546@joiniaa.com', N'Dorothy Evans')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(17, N'Demaco', N'Team Guard SRL, Byland  Walk 4833, Lincoln, MAF 0325', N'5-641-032-7445', N'Lucas_Todd9614@vetan.org', N'Lucas Todd')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(18, N'Comodo', N'Global Print, Oxford Tunnel 4055, Fort Lauderdale, MAR 5364', N'3-354-616-7317', N'Bree_Evans800@nanoff.biz', N'Bree Evans')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(19, N'Areon Impex', N'Coca-Cola Company, Berry  Pass 8155, Lakewood, PSE 4720', N'1-407-638-8370', N'Erick_Hall6701@twace.org', N'Erick Hall')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(20, N'Global Print', N'Global Print, Andrews  Tunnel 2051, Innsbruck, ARG 6558', N'6-471-641-5332', N'Miley_Allen8354@atink.com', N'Miley Allen')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(21, N'Carrefour', N'Areon Impex, Addison  Hill 537, Pittsburgh, TCD 3130', N'7-822-103-2346', N'Nicholas_Middleton9845@sveldo.biz', N'Nicholas Middleton')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(22, N'ExxonMobil', N'Areon Impex, Addison  Lane 4251, Wien, BTN 0730', N'8-874-823-3501', N'Cecilia_Baker1083@gompie.com', N'Cecilia Baker')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(23, N'21st Century Fox', N'Erickson, Fawn Crossroad 5958, Venice, ETH 7304', N'5-641-470-4250', N'Denis_Rust8861@gompie.com', N'Denis Rust')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(24, N'Telekom', N'Facebook, Aspen Street 7855, San Bernardino, DEU 1715', N'4-808-086-7508', N'Phillip_Middleton89@vetan.org', N'Phillip Middleton')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(25, N'Danone', N'Team Guard SRL, St. Pauls  Way 9803, Lyon, NFK 2147', N'6-633-322-4426', N'Doug_Morgan2609@famism.biz', N'Doug Morgan')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(26, N'ENEL', N'Zepter, Heritage Avenue 1724, Bellevue, SPM 1825', N'5-446-650-0026', N'Adeline_Jarvis1047@irrepsy.com', N'Adeline Jarvis')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(27, N'Comodo', N'ENEL, Epworth  Avenue 3358, Huntsville, VAT 0510', N'5-511-306-5004', N'Nicole_Antcliff8787@liret.org', N'Nicole Antcliff')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(28, N'Facebook', N'Zepter, Elizabeth  Rue 4142, Oakland, HKG 4667', N'2-534-145-3480', N'Callie_Reading6503@irrepsy.com', N'Callie Reading')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(29, N'Carrefour', N'Demaco, Cavendish Crossroad 6493, Salt Lake City, TLS 3234', N'5-845-352-4864', N'Anabel_Addley8417@irrepsy.com', N'Anabel Addley')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(30, N'Carrefour', N'Biolife Grup, Charnwood   Rue 137, Fullerton, KNA 8828', N'1-168-170-8482', N'Chloe_Eddison1875@tonsy.org', N'Chloe Eddison')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(31, N'Telekom', N'Demaco, Vincent  Alley 9877, Paris, CHE 7786', N'4-554-616-1227', N'Parker_Ellison3818@guentu.biz', N'Parker Ellison')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(32, N'ExxonMobil', N'Boeing, Calvin   Rue 5169, Portland, GUY 6351', N'8-877-021-4274', N'Vera_Hogg297@yahoo.com', N'Vera Hogg')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(33, N'Team Guard SRL', N'DynCorp, Linden Crossroad 7285, Salt Lake City, JAM 5072', N'1-618-000-6143', N'Olivia_Asher3260@zorer.org', N'Olivia Asher')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(34, N'Team Guard SRL', N'Global Print, Bel   Hill 6236, Chicago, GNQ 2717', N'3-771-720-8717', N'Domenic_Parsons4006@jiman.org', N'Domenic Parsons')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(35, N'Erickson', N'Mars, Arlington  Boulevard 5005, San Bernardino, KOR 8252', N'5-667-082-5833', N'Teagan_Overson9217@acrit.org', N'Teagan Overson')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(36, N'Metro Cash&Carry', N'Erickson, Monroe Lane 1559, Zurich, RWA 5467', N'2-527-810-3212', N'Mike_Poole2104@sheye.org', N'Mike Poole')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(37, N'Metro Cash&Carry', N'CarMax, Arctic   Rue 4012, Richmond, DZA 1636', N'0-200-231-8055', N'Luke_Mcleod3979@cispeto.com', N'Luke Mcleod')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(38, N'Amazon.com', N'Danone, English   Grove 6960, London, COG 2630', N'3-161-143-8120', N'Chuck_Bradshaw2631@bretoux.com', N'Chuck Bradshaw')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(39, N'Zepter', N'ExxonMobil, Comet House  Rue 2879, New York, CHL 7818', N'0-627-382-6624', N'Rufus_Ballard9982@irrepsy.com', N'Rufus Ballard')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(40, N'ExxonMobil', N'BuzzFeed, Oxford Alley 2008, Madrid, CAF 2416', N'6-407-185-3174', N'Ron_Price1786@corti.com', N'Ron Price')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(41, N'Comcast', N'21st Century Fox, Arthur  Rue 7055, San Antonio, SLV 3070', N'6-508-321-4254', N'Quinn_Eaton2443@vetan.org', N'Quinn Eaton')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(42, N'AECOM', N'Global Print, Parkfields Alley 8936, Reno, CMR 2013', N'0-886-738-8618', N'Marvin_Drew9056@nimogy.biz', N'Marvin Drew')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(43, N'Amazon.com', N'Amazon.com, Wake  Pass 4455, Toledo, UMI 0076', N'1-076-817-1428', N'Rick_Dallas6366@ubusive.com', N'Rick Dallas')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(44, N'It Smart Group', N'Biolife Grup, Queensberry  Walk 1698, Boston, BGD 8303', N'8-838-605-6873', N'Doug_Howard5844@bauros.biz', N'Doug Howard')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(45, N'BuzzFeed', N'CarMax, Zealand Alley 1227, Salt Lake City, ARG 3380', N'5-848-376-7203', N'Lexi_Norton3222@bungar.biz', N'Lexi Norton')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(46, N'Coca-Cola Company', N'Mars, Abourne   Vale 2033, Springfield, GLP 5808', N'2-760-460-0638', N'Kieth_Flack1968@bauros.biz', N'Kieth Flack')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(47, N'Carrefour', N'AECOM, Cave   Pass 7416, Rochester, REU 1566', N'7-187-027-4840', N'Liam_Gaynor5578@bretoux.com', N'Liam Gaynor')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(48, N'Coca-Cola Company', N'Danone, Becklow  Hill 9666, Orlando, SLB 8113', N'2-015-360-1774', N'Leslie_Bayliss2249@deavo.com', N'Leslie Bayliss')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(49, N'Coca-Cola Company', N'Comodo, Cockspur  Tunnel 1599, Springfield, NRU 5072', N'7-328-678-5368', N'Willow_Vass4543@acrit.org', N'Willow Vass')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(50, N'Comcast', N'ENEL, Chestnut Rise Alley 3270, Arlington, WSM 8847', N'1-704-454-2757', N'Erick_Bennett7609@vetan.org', N'Erick Bennett')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(51, N'CarMax', N'Danone, Dunstans  Avenue 8213, San Antonio, GNQ 5177', N'8-452-028-6722', N'Sarah_Taylor6241@liret.org', N'Sarah Taylor')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(52, N'Boeing', N'AECOM, Shepherds  Street 3043, Reno, CRI 6748', N'0-374-367-5612', N'Hayden_James295@yahoo.com', N'Hayden James')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(53, N'CarMax', N'Mars, Battis   Grove 8691, Columbus, BRN 1045', N'4-148-442-8287', N'Noah_Uttridge2382@fuliss.net', N'Noah Uttridge')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(54, N'Erickson', N'Leadertech Consulting, Virginia Alley 1754, Tallahassee, NCL 0800', N'1-406-371-2311', N'Rocco_Stewart3002@sveldo.biz', N'Rocco Stewart')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(55, N'Amazon.com', N'It Smart Group, College  Vale 1923, Philadelphia, VEN 8533', N'3-124-034-1421', N'Lana_Huggins4991@ovock.tech', N'Lana Huggins')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(56, N'Apple Inc.', N'Danone, Buttonwood Boulevard 8090, Fayetteville, VGB 8708', N'7-231-183-6015', N'Shay_Antcliff8991@nanoff.biz', N'Shay Antcliff')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(57, N'ENEL', N'Zepter, Longman   Pass 6362, Jersey City, SYR 6771', N'5-352-584-5701', N'Sabrina_Rixon7390@hourpy.biz', N'Sabrina Rixon')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(58, N'Metro Cash&Carry', N'Zepter, Cingworth  Boulevard 4040, Fremont, POL 1213', N'2-585-227-6237', N'Maggie_Everett9088@bretoux.com', N'Maggie Everett')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(59, N'Demaco', N'Apple Inc., Castlereagh   Street 9, Hayward, COD 7085', N'6-884-045-1874', N'Hayden_Oakley6296@extex.org', N'Hayden Oakley')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(60, N'Metro Cash&Carry', N'Demaco, Collent   Rue 4061, Toledo, ASM 7658', N'3-421-426-1638', N'Harriet_Emerson6131@deavo.com', N'Harriet Emerson')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(61, N'ENEL', N'Carrefour, Andsell    Lane 5935, Lyon, BRN 8222', N'1-561-644-2666', N'Carter_Rosenbloom419@cispeto.com', N'Carter Rosenbloom')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(62, N'Team Guard SRL', N'AECOM, Bethwin  Tunnel 919, Pittsburgh, BEL 7625', N'3-212-720-5402', N'Gwenyth_Thornton9466@acrit.org', N'Gwenyth Thornton')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(63, N'Telekom', N'Zepter, Blean   Lane 8850, Ontario, HUN 1340', N'1-477-347-1843', N'Josh_Ramsey5038@corti.com', N'Josh Ramsey')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(64, N'Danone', N'Areon Impex, Duthie   Grove 3040, Prague, MKD 0153', N'6-240-731-8052', N'Manuel_Walter5676@sheye.org', N'Manuel Walter')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(65, N'UPC', N'Vodafone, Chancellor  Avenue 4176, Valetta, TGO 6100', N'6-367-671-0834', N'Clint_Flanders5522@mafthy.com', N'Clint Flanders')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(66, N'Metro Cash&Carry', N'Boeing, Cavaye  Rue 8592, Rome, GTM 1720', N'8-317-772-3427', N'Harry_Power5737@grannar.com', N'Harry Power')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(67, N'CarMax', N'Coca-Cola Company, Cliffords  Boulevard 9245, Portland, BOL 5703', N'1-205-836-1565', N'Andrea_Heaton1775@nanoff.biz', N'Andrea Heaton')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(68, N'Comodo', N'Biolife Grup, Balfe   Road 801, Nashville, TUV 3110', N'1-135-073-1146', N'Noah_Oldfield3568@supunk.biz', N'Noah Oldfield')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(69, N'Team Guard SRL', N'ENEL, Baynes  Drive 1400, Prague, BEL 8050', N'3-756-362-4020', N'Clint_Tyler3507@famism.biz', N'Clint Tyler')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(70, N'Telekom', N'Erickson, Marina  Road 6720, Pittsburgh, MMR 4871', N'7-333-446-0246', N'Francesca_Redwood9218@hourpy.biz', N'Francesca Redwood')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(71, N'Demaco', N'Danone, Littlebury  Hill 6424, Bakersfield, BFA 0535', N'3-541-745-4068', N'Jazmin_Quinton951@ubusive.com', N'Jazmin Quinton')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(72, N'AECOM', N'Amazon.com, Falconberg   Hill 798, Detroit, MNG 7382', N'4-662-618-2363', N'Bethany_Jones5775@kideod.biz', N'Bethany Jones')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(73, N'Telekom', N'Facebook, Bellenden  Crossroad 4927, Nashville, BRN 1167', N'4-426-772-0633', N'Rihanna_Denton1286@sheye.org', N'Rihanna Denton')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(74, N'Coca-Cola Company', N'Danone, Maple Road 9598, Anaheim, TKL 6171', N'6-144-083-3700', N'Tiffany_Glynn5571@cispeto.com', N'Tiffany Glynn')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(75, N'Apple Inc.', N'Vodafone, Fairfield  Street 7450, Cincinnati, DEU 2016', N'7-735-486-5717', N'Callie_Newton9166@nimogy.biz', N'Callie Newton')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(76, N'Areon Impex', N'Areon Impex, Bolton  Lane 4609, Berna, BHS 7455', N'3-071-471-5533', N'George_Chapman3763@infotech44.tech', N'George Chapman')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(77, N'Leadertech Consulting', N'AECOM, Durweston   Street 2993, Lincoln, BEL 3252', N'2-305-173-3588', N'Karla_Dillon728@ubusive.com', N'Karla Dillon')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(78, N'Biolife Grup', N'AECOM, Charnwood   Crossroad 5368, Milano, PHL 2254', N'2-224-785-8156', N'Joyce_Button2374@yahoo.com', N'Joyce Button')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(79, N'Zepter', N'Leadertech Consulting, Linden Grove 1356, Las Vegas, MNP 1786', N'6-756-343-1024', N'Kendra_Zaoui8477@nanoff.biz', N'Kendra Zaoui')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(80, N'Leadertech Consulting', N'BuzzFeed, Birkbeck  Rue 6179, Atlanta, VEN 0601', N'2-231-581-7057', N'Jacob_Fowler2589@twace.org', N'Jacob Fowler')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(81, N'Carrefour', N'Vodafone, Thorndike   Pass 5731, Fullerton, CMR 3262', N'0-265-823-0751', N'Noah_Patel2968@infotech44.tech', N'Noah Patel')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(82, N'Demaco', N'Zepter, Parkfield  Grove 4374, Milano, FSM 0723', N'5-348-785-0538', N'Ema_Drummond4449@atink.com', N'Ema Drummond')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(83, N'Apple Inc.', N'BuzzFeed, Bloomsbury  Tunnel 4102, Saint Paul, TUN 1662', N'7-566-667-6625', N'Darlene_Grady5380@eirey.tech', N'Darlene Grady')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(84, N'Zepter', N'Biolife Grup, South Route 9829, Escondido, ERI 1140', N'8-042-215-7376', N'John_Tailor2414@brety.org', N'John Tailor')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(85, N'Comodo', N'Zepter, Victorian  Boulevard 7017, Bellevue, IMN 1573', N'2-445-515-7628', N'Erin_Bryson3276@nimogy.biz', N'Erin Bryson')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(86, N'ENEL', N'Coca-Cola Company, Cato   Pass 1500, Arlington, TUN 0341', N'3-763-547-3282', N'David_Lewis4739@acrit.org', N'David Lewis')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(87, N'Team Guard SRL', N'Comodo, Coleman  Grove 9957, Quebec, BMU 7121', N'1-063-108-2088', N'Ada_Ballard3668@bungar.biz', N'Ada Ballard')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(88, N'Boeing', N'Team Guard SRL, Cable    Street 2425, Baltimore, AFG 6000', N'1-348-133-5355', N'Leilani_Verdon1355@atink.com', N'Leilani Verdon')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(89, N'Carrefour', N'21st Century Fox, Spruce Avenue 847, Wien, IRQ 4510', N'7-368-218-6858', N'Julius_Adams5059@naiker.biz', N'Julius Adams')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(90, N'ExxonMobil', N'Vodafone, Berriman  Crossroad 942, Toledo, BGD 1335', N'8-168-302-4155', N'Nicholas_Archer614@supunk.biz', N'Nicholas Archer')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(91, N'Facebook', N'It Smart Group, Hickory   Pass 9862, Garland, BGD 7242', N'8-785-485-0526', N'Kaylee_Atkinson6512@fuliss.net', N'Kaylee Atkinson')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(92, N'Amazon.com', N'Danone, Monroe Street 8088, Oakland, LBR 7075', N'5-658-586-3620', N'Carissa_Stone 3607@famism.biz', N'Carissa Stone ')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(93, N'Amazon.com', N'CarMax, Caroline  Lane 1062, Norfolk, TCD 5632', N'4-270-463-8283', N'Bart_Ross9631@bretoux.com', N'Bart Ross')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(94, N'Apple Inc.', N'BuzzFeed, Kinglake  Hill 8273, Houston, FJI 8738', N'4-580-115-1071', N'Chris_Long9572@gmail.com', N'Chris Long')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(95, N'Boeing', N'Demaco, Blackpool  Drive 9580, Baltimore, CAF 3667', N'4-637-116-8328', N'Chester_Wilcox9345@naiker.biz', N'Chester Wilcox')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(96, N'ENEL', N'Danone, Anns  Hill 5908, Orlando, LBY 0383', N'8-685-243-1368', N'Janelle_Gray6978@yahoo.com', N'Janelle Gray')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(97, N'Comcast', N'CarMax, Union  Alley 633, Laredo, SAU 1231', N'2-863-426-6246', N'Ruth_Stevens4786@deavo.com', N'Ruth Stevens')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(98, N'AECOM', N'UPC, Arlington  Road 8590, San Diego, GUY 5087', N'3-716-382-0263', N'Jamie_Bayliss6954@bungar.biz', N'Jamie Bayliss')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(99, N'AECOM', N'Zepter, Walnut Pass 6367, Minneapolis, HUN 0612', N'2-640-244-2816', N'Sebastian_Shaw3812@supunk.biz', N'Sebastian Shaw')
GO
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(100, N'Facebook', N'Team Guard SRL, Rosewood Grove 3150, Huntsville, PHL 8862', N'1-000-825-0365', N'Aurelia_Asher1677@supunk.biz', N'Aurelia Asher')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(101, N'Telekom', N'ExxonMobil, St. Pauls  Walk 3612, Innsbruck, VIR 1766', N'0-384-152-3280', N'Lily_Uddin9452@gmail.com', N'Lily Uddin')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(102, N'Mars', N'Carrefour, Battersea   Road 2450, Charlotte, HMD 1147', N'7-817-125-5531', N'Leanne_Rixon6870@naiker.biz', N'Leanne Rixon')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(103, N'Coca-Cola Company', N'Biolife Grup, Canon Hill 8543, Hollywood, MSR 0066', N'4-037-366-3400', N'Rocco_Young3087@bretoux.com', N'Rocco Young')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(104, N'Biolife Grup', N'Demaco, Cockspur  Way 3445, Orlando, PAN 8418', N'0-760-745-1415', N'Denis_Benfield7273@jiman.org', N'Denis Benfield')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(105, N'Comodo', N'Areon Impex, Tiptree   Avenue 2405, Tulsa, SEN 5431', N'3-824-217-6478', N'Alan_Penn9336@atink.com', N'Alan Penn')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(106, N'Leadertech Consulting', N'Comodo, Clissold  Lane 8861, Ontario, ERI 6866', N'5-451-532-1126', N'Mackenzie_Groves9159@extex.org', N'Mackenzie Groves')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(107, N'AECOM', N'Comodo, Paris   Route 5785, Toledo, KEN 6464', N'2-274-454-1285', N'Luke_Calderwood989@deavo.com', N'Luke Calderwood')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(108, N'AECOM', N'DynCorp, Apollo  Road 9825, Honolulu, CHE 5623', N'0-568-578-0826', N'Daria_Adler1827@bauros.biz', N'Daria Adler')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(109, N'DynCorp', N'Boeing, Fawn Crossroad 2906, Philadelphia, NOR 2866', N'4-381-712-3558', N'Charlotte_Rossi9229@deons.tech', N'Charlotte Rossi')
INSERT [dbo].[supplier]
	([id], [name], [direction], [telephone], [email], [contact_person])
VALUES
	(110, N'Telekom', N'DynCorp, Sheffield Vale 8704, Albuquerque, ERI 4603', N'0-244-070-3501', N'Cedrick_Nicolas4194@sheye.org', N'Cedrick Nicolas')
SET IDENTITY_INSERT [dbo].[supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[surgery] ON

INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(1, N'heart surgery', N'fix heart problems', 8000, 1)
INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(2, N'brain surgery', N'fix brain problems', 10000, 2)
INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(3, N'Appendix surgery', N'remove the appendix', 2000, 5)
INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(4, N'orthopedic surgery', N'fix damaged bone', 4000, 3)
INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(5, N'General Surgery', N'fix livers, etc', 3000, 4)
INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(6, N'Eye surgery', N'fix eye problems', 5000, 6)
INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(7, N'pediatric surgery', N'fix problems in children', 3500, 7)
INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(8, N'transplants', N'place transplant', 12000, 8)
INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(9, N'amputation', N'remove part of the body', 8000, 9)
INSERT [dbo].[surgery]
	([id], [name], [description], [cost], [id_room])
VALUES
	(10, N'plastic surgery', N'detail, remove, fix body parts', 8000, 10)
SET IDENTITY_INSERT [dbo].[surgery] OFF
GO
SET IDENTITY_INSERT [dbo].[telephone_employee] ON

INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(1, N'7487-8497', 1, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(2, N'7487-8498', 1, 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(3, N'2525-2477', 2, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(4, N'7482-0000', 2, 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(5, N'2257-1452', 3, 3, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(6, N'7071-7372', 3, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(7, N'7885-5842', 1, 3, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(8, N'2541-7458', 3, 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(9, N'7574-8500', 6, 1, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(10, N'7454-8715', 6, 2, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_employee]
	([id], [phone], [employee_id], [telephone_type_id], [creation_date], [update_date])
VALUES
	(11, N'4569-8751', 6, 3, CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[telephone_employee] OFF
GO
SET IDENTITY_INSERT [dbo].[telephone_hospital] ON

INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(1, N'7458-8452', 1)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(2, N'7458-8333', 2)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(3, N'7458-0000', 3)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(4, N'6569-8452', 1)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(5, N'2525-2626', 10)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(6, N'7458-8888', 7)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(7, N'2758-8574', 9)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(8, N'7458-8453', 6)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(9, N'7458-7475', 5)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(10, N'8571-8840', 1)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(11, N'4-557-868-5273', 76)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(12, N'6-637-732-6688', 95)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(13, N'3-757-778-8658', 83)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(14, N'1-316-737-6442', 75)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(15, N'6-182-881-4565', 10)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(16, N'1-164-841-1647', 54)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(17, N'3-474-235-7572', 86)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(18, N'8-617-552-4785', 72)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(19, N'5-468-411-2247', 50)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(20, N'1-533-165-3874', 17)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(21, N'4-351-247-4817', 73)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(22, N'5-544-686-5756', 94)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(23, N'3-831-427-7855', 5)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(24, N'5-887-545-8757', 46)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(25, N'3-168-283-8567', 29)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(26, N'1-716-387-8838', 68)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(27, N'8-884-872-6176', 39)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(28, N'5-868-364-8166', 85)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(29, N'4-857-774-1188', 23)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(30, N'1-787-422-3161', 40)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(31, N'3-763-815-3311', 91)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(32, N'2-383-463-5848', 44)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(33, N'6-548-547-6825', 2)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(34, N'2-218-468-1716', 15)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(35, N'2-874-344-7725', 31)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(36, N'6-568-331-8781', 20)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(37, N'5-423-486-6836', 61)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(38, N'5-344-762-8673', 84)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(39, N'8-174-163-3768', 91)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(40, N'3-138-583-4723', 1)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(41, N'8-521-615-6234', 42)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(42, N'1-252-847-7351', 74)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(43, N'3-246-478-7675', 49)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(44, N'5-256-137-1587', 36)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(45, N'4-244-346-4547', 56)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(46, N'6-723-366-3616', 73)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(47, N'7-161-682-4313', 29)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(48, N'3-542-128-2411', 27)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(49, N'1-578-256-3576', 34)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(50, N'6-665-332-6588', 77)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(51, N'3-435-143-7148', 22)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(52, N'2-227-317-5814', 40)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(53, N'4-482-737-1585', 77)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(54, N'3-221-473-3643', 4)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(55, N'1-435-238-3871', 70)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(56, N'5-216-686-3645', 22)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(57, N'7-611-626-1181', 33)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(58, N'8-282-137-4154', 33)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(59, N'7-557-714-6816', 45)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(60, N'2-756-215-6166', 48)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(61, N'1-423-622-3272', 15)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(62, N'6-821-444-7548', 25)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(63, N'7-128-872-2716', 36)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(64, N'8-117-842-4631', 19)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(65, N'8-526-378-5485', 58)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(66, N'8-234-583-5272', 41)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(67, N'3-581-255-4811', 39)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(68, N'6-488-118-8548', 82)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(69, N'1-776-148-1373', 69)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(70, N'8-848-315-7187', 12)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(71, N'1-352-827-8618', 39)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(72, N'6-735-211-7121', 20)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(73, N'6-864-717-1176', 80)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(74, N'8-712-841-8813', 50)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(75, N'7-168-881-7334', 4)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(76, N'5-415-383-7256', 33)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(77, N'8-886-213-6526', 82)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(78, N'4-722-675-5315', 51)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(79, N'3-461-643-2438', 3)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(80, N'8-362-164-4632', 45)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(81, N'6-224-818-8343', 81)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(82, N'4-311-744-1722', 41)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(83, N'1-356-527-1223', 56)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(84, N'3-723-416-5876', 75)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(85, N'6-353-725-5863', 63)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(86, N'5-332-636-3847', 5)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(87, N'2-257-464-3678', 28)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(88, N'5-428-576-5457', 7)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(89, N'7-576-247-3551', 69)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(90, N'5-712-318-7415', 19)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(91, N'1-662-725-5351', 90)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(92, N'8-612-856-1453', 79)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(93, N'6-534-616-6166', 51)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(94, N'6-554-843-1722', 56)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(95, N'8-677-347-5384', 22)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(96, N'7-283-838-3154', 37)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(97, N'1-318-231-5374', 90)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(98, N'3-745-722-7235', 82)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(99, N'5-125-384-4246', 91)
GO
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(100, N'3-831-888-1611', 12)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(101, N'7-448-462-7733', 20)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(102, N'2-433-316-7152', 94)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(103, N'7-182-442-4816', 89)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(104, N'5-585-281-1518', 41)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(105, N'6-576-421-2241', 30)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(106, N'6-833-273-1736', 70)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(107, N'1-161-414-6255', 83)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(108, N'6-416-846-2468', 22)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(109, N'5-686-776-3715', 31)
INSERT [dbo].[telephone_hospital]
	([id], [phone], [hospital_id])
VALUES
	(110, N'5-871-141-1456', 67)
SET IDENTITY_INSERT [dbo].[telephone_hospital] OFF
GO
SET IDENTITY_INSERT [dbo].[telephone_patient] ON

INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(1, N'7-567-371-4872', 84, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(2, N'8-431-670-5162', 60, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(3, N'6-580-276-5277', 71, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(4, N'3-437-015-5000', 17, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(5, N'3-766-742-3044', 88, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(6, N'4-056-554-8351', 29, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(7, N'0-836-577-5377', 55, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(8, N'2-342-088-4640', 28, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(9, N'4-678-253-1428', 38, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(10, N'5-080-261-4203', 12, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(11, N'2-212-424-1317', 51, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(12, N'2-187-048-1385', 64, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(13, N'2-081-537-7318', 20, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(14, N'5-861-715-5305', 51, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(15, N'8-127-246-1032', 25, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(16, N'3-678-085-2783', 15, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(17, N'3-057-025-5354', 49, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(18, N'4-455-548-2677', 51, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(19, N'6-861-176-1154', 16, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(20, N'8-570-034-1405', 18, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(21, N'8-176-173-0568', 24, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(22, N'5-652-804-2433', 74, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(23, N'4-072-708-7843', 45, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(24, N'6-723-787-5664', 14, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(25, N'4-613-738-3321', 33, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(26, N'8-255-127-4368', 15, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(27, N'4-816-320-5425', 54, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(28, N'8-403-410-7840', 10, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(29, N'2-251-812-2781', 63, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(30, N'7-123-881-3234', 8, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(31, N'7-064-315-7070', 39, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(32, N'4-240-476-4275', 53, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(33, N'0-808-810-6215', 34, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(34, N'0-817-320-5478', 26, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(35, N'5-365-200-7056', 9, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(36, N'7-341-086-8763', 46, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(37, N'3-485-116-0560', 73, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(38, N'4-268-336-3360', 25, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(39, N'0-476-531-6647', 51, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(40, N'5-382-644-1332', 91, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(41, N'8-608-783-3012', 85, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(42, N'6-516-673-7734', 17, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(43, N'5-656-057-2335', 82, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(44, N'8-115-163-6778', 64, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(45, N'3-451-356-6356', 39, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(46, N'6-062-158-8825', 25, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(47, N'7-637-760-3136', 27, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(48, N'0-005-431-1038', 48, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(49, N'3-664-188-2703', 56, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(50, N'0-364-580-1488', 33, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(51, N'2-087-332-1336', 66, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(52, N'7-362-050-7373', 49, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(53, N'8-447-761-3672', 96, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(54, N'0-246-087-3153', 29, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(55, N'3-287-243-5376', 53, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(56, N'0-460-442-3572', 62, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(57, N'4-526-704-8274', 81, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(58, N'6-505-371-4836', 12, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(59, N'8-847-452-3062', 69, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(60, N'6-056-522-8663', 99, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(61, N'4-335-255-5043', 46, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(62, N'7-415-768-2017', 17, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(63, N'3-711-217-0170', 52, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(64, N'5-035-412-1467', 14, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(65, N'5-013-143-4274', 93, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(66, N'2-535-601-3177', 52, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(67, N'5-758-030-4468', 80, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(68, N'4-103-285-1767', 82, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(69, N'6-034-227-4847', 29, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(70, N'0-867-737-0583', 72, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(71, N'8-746-161-0600', 5, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(72, N'6-815-511-4764', 7, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(73, N'3-800-006-5208', 18, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(74, N'0-163-756-2688', 100, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(75, N'1-501-006-2310', 63, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(76, N'0-273-813-2087', 45, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(77, N'7-245-010-5815', 20, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(78, N'8-406-866-7543', 40, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(79, N'6-510-516-1236', 71, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(80, N'7-431-121-8281', 38, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(81, N'1-601-702-0344', 87, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(82, N'3-475-020-7724', 49, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(83, N'1-103-585-6081', 7, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(84, N'6-414-082-5851', 66, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(85, N'7-303-356-4808', 1, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(86, N'4-172-455-4556', 35, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(87, N'5-161-586-7125', 71, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(88, N'4-306-314-1407', 62, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(89, N'4-022-638-1046', 73, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(90, N'0-203-725-8014', 90, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(91, N'4-800-185-3354', 87, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(92, N'1-634-720-8110', 10, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(93, N'4-013-773-5701', 91, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(94, N'7-105-554-3085', 57, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(95, N'1-822-600-8352', 1, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(96, N'5-482-525-4478', 60, 2)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(97, N'3-573-047-5543', 55, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(98, N'0-833-465-7883', 77, 1)
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(99, N'3-876-036-0531', 100, 1)
GO
INSERT [dbo].[telephone_patient]
	([id], [phone], [patient_id], [telephone_type_id])
VALUES
	(100, N'6-118-056-1161', 9, 1)
SET IDENTITY_INSERT [dbo].[telephone_patient] OFF
GO
SET IDENTITY_INSERT [dbo].[telephone_type] ON

INSERT [dbo].[telephone_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(1, N'Movil', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(2, N'Casa', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[telephone_type]
	([id], [type], [creation_date], [update_date])
VALUES
	(3, N'Trabajo', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[telephone_type] OFF
GO
SET IDENTITY_INSERT [dbo].[type_user] ON

INSERT [dbo].[type_user]
	([id], [type], [creation_date], [update_date])
VALUES
	(1, N'Administrado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[type_user]
	([id], [type], [creation_date], [update_date])
VALUES
	(2, N'Empleado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[type_user]
	([id], [type], [creation_date], [update_date])
VALUES
	(3, N'Secretario', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[type_user]
	([id], [type], [creation_date], [update_date])
VALUES
	(4, N'Super Admin', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
SET IDENTITY_INSERT [dbo].[type_user] OFF
GO
SET IDENTITY_INSERT [dbo].[user_pwd] ON

INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(1, 0, N'123456', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(2, 1, N'ABCDEF', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(3, 0, N'lucasxd', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(4, 1, N'pocho123456', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(5, 0, N'20020147525', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(6, 1, N'admin', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(7, 0, N'bono', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(8, 1, N'kakPac', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(9, 0, N'josueayalaxd', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
INSERT [dbo].[user_pwd]
	([id], [is_active], [pwd], [creation_date], [update_date])
VALUES
	(10, 1, N'6543210', CAST(N'2021-07-06T16:30:06.890' AS DateTime), CAST(N'2021-07-06T16:30:06.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[user_pwd] OFF
GO
SET IDENTITY_INSERT [dbo].[user_status] ON

INSERT [dbo].[user_status]
	([id], [status], [creation_date], [update_date])
VALUES
	(1, N'Activo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[user_status]
	([id], [status], [creation_date], [update_date])
VALUES
	(2, N'Inactivo', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[user_status]
	([id], [status], [creation_date], [update_date])
VALUES
	(3, N'Deshabilitado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
INSERT [dbo].[user_status]
	([id], [status], [creation_date], [update_date])
VALUES
	(4, N'Bloqueado', CAST(N'2021-07-06T16:30:06.887' AS DateTime), CAST(N'2021-07-06T16:30:06.887' AS DateTime))
SET IDENTITY_INSERT [dbo].[user_status] OFF
GO
SET IDENTITY_INSERT [dbo].[voucher] ON

INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(1, 1, CAST(N'2021-10-11T16:25:18.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(2, 2, CAST(N'2021-10-07T11:06:50.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(3, 3, CAST(N'2021-10-20T19:53:08.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(4, 4, CAST(N'2021-10-03T10:40:37.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(5, 5, CAST(N'2021-10-15T22:15:10.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(6, 6, CAST(N'2021-10-03T22:37:17.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(7, 7, CAST(N'2021-10-04T12:03:35.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(8, 8, CAST(N'2021-10-08T06:07:34.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(9, 9, CAST(N'2021-10-19T04:26:46.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(10, 10, CAST(N'2021-10-01T11:02:01.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(11, 11, CAST(N'2021-10-19T01:23:05.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(12, 12, CAST(N'2021-10-11T11:15:01.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(13, 13, CAST(N'2021-10-08T20:48:45.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(14, 14, CAST(N'2021-10-09T18:18:01.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(15, 15, CAST(N'2021-10-18T07:05:19.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(16, 16, CAST(N'2021-10-11T12:27:47.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(17, 17, CAST(N'2021-10-14T21:35:58.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(18, 18, CAST(N'2021-10-02T02:57:42.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(19, 19, CAST(N'2021-10-19T00:06:35.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(20, 20, CAST(N'2021-10-21T08:39:51.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(21, 21, CAST(N'2021-10-05T04:00:16.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(22, 22, CAST(N'2021-10-13T00:03:47.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(23, 23, CAST(N'2021-10-21T00:26:45.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(24, 24, CAST(N'2021-10-09T06:49:35.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(25, 25, CAST(N'2021-10-06T19:34:24.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(26, 26, CAST(N'2021-10-18T04:28:21.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(27, 27, CAST(N'2021-10-03T19:34:49.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(28, 28, CAST(N'2021-10-09T21:19:31.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(30, 30, CAST(N'2021-10-18T13:19:13.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(31, 31, CAST(N'2021-10-16T12:03:03.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(32, 32, CAST(N'2021-10-09T14:34:23.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(33, 33, CAST(N'2021-10-09T11:41:30.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(34, 34, CAST(N'2021-10-03T09:36:43.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(35, 35, CAST(N'2021-10-10T21:17:01.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(36, 36, CAST(N'2021-10-05T15:14:46.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(37, 37, CAST(N'2021-10-06T19:15:47.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(38, 38, CAST(N'2021-10-13T18:31:06.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(39, 39, CAST(N'2021-10-17T07:54:53.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(40, 40, CAST(N'2021-10-12T08:37:03.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(41, 41, CAST(N'2021-10-10T22:35:16.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(42, 42, CAST(N'2021-10-17T05:02:17.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(43, 43, CAST(N'2021-10-16T08:47:22.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(44, 44, CAST(N'2021-10-12T05:52:56.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(45, 45, CAST(N'2021-10-07T20:29:07.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(46, 46, CAST(N'2021-10-03T00:22:49.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(47, 47, CAST(N'2021-10-18T00:11:16.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(48, 48, CAST(N'2021-10-06T06:58:42.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(49, 49, CAST(N'2021-10-08T17:14:34.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(50, 50, CAST(N'2021-10-10T12:31:31.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(51, 51, CAST(N'2021-10-07T11:40:21.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(52, 52, CAST(N'2021-10-12T10:27:08.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(53, 53, CAST(N'2021-10-17T19:12:06.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(54, 54, CAST(N'2021-10-16T04:30:46.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(55, 55, CAST(N'2021-10-06T05:09:10.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(56, 56, CAST(N'2021-10-13T14:54:14.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(57, 57, CAST(N'2021-10-13T11:50:09.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(58, 58, CAST(N'2021-10-08T07:48:05.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(59, 59, CAST(N'2021-10-18T18:49:45.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(60, 60, CAST(N'2021-10-11T12:07:52.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(61, 61, CAST(N'2021-10-06T00:44:25.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(62, 62, CAST(N'2021-10-02T07:29:00.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(63, 63, CAST(N'2021-10-20T12:13:26.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(64, 64, CAST(N'2021-10-06T22:02:14.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(65, 65, CAST(N'2021-10-09T08:25:43.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(66, 66, CAST(N'2021-10-10T09:22:10.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(67, 67, CAST(N'2021-10-02T11:01:05.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(68, 68, CAST(N'2021-10-12T16:25:44.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(69, 69, CAST(N'2021-10-01T19:48:29.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(70, 70, CAST(N'2021-10-06T13:23:24.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(71, 71, CAST(N'2021-10-11T11:51:31.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(72, 72, CAST(N'2021-10-20T13:00:09.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(73, 73, CAST(N'2021-10-14T21:19:08.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(74, 74, CAST(N'2021-10-09T11:07:00.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(75, 75, CAST(N'2021-10-12T13:17:27.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(76, 76, CAST(N'2021-10-12T12:54:36.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(77, 77, CAST(N'2021-10-19T00:57:25.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(78, 78, CAST(N'2021-10-13T14:29:18.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(79, 79, CAST(N'2021-10-21T16:16:47.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(80, 80, CAST(N'2021-10-02T11:40:57.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(81, 81, CAST(N'2021-10-16T10:22:36.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(82, 82, CAST(N'2021-10-20T04:24:12.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(83, 83, CAST(N'2021-10-08T15:23:08.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(84, 84, CAST(N'2021-10-14T22:52:45.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(85, 85, CAST(N'2021-10-16T00:48:27.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(86, 86, CAST(N'2021-10-18T06:28:19.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(87, 87, CAST(N'2021-10-01T19:56:53.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(88, 88, CAST(N'2021-10-10T14:20:15.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(89, 89, CAST(N'2021-10-09T05:16:05.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(90, 90, CAST(N'2021-10-07T07:07:43.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(91, 91, CAST(N'2021-10-03T13:53:01.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(92, 92, CAST(N'2021-10-16T14:54:46.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(93, 93, CAST(N'2021-10-14T16:04:57.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(94, 94, CAST(N'2021-10-12T16:28:53.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(95, 95, CAST(N'2021-10-01T14:37:18.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(96, 96, CAST(N'2021-10-12T16:43:18.000' AS DateTime), 2)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(97, 97, CAST(N'2021-10-12T04:43:49.000' AS DateTime), 1)
INSERT [dbo].[voucher]
	([id], [id_patient_record], [transaction_date], [id_payment_type])
VALUES
	(98, 98, CAST(N'2021-10-10T21:55:56.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[voucher] OFF
GO
SET IDENTITY_INSERT [dbo].[voucher_card_payment] ON

INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(1, 1, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(2, 2, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(3, 3, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(4, 4, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(5, 5, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(6, 6, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(7, 7, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(8, 8, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(9, 9, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(10, 10, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(11, 11, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(12, 12, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(13, 13, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(14, 14, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(15, 15, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(16, 16, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(17, 17, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(18, 18, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(19, 19, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(20, 20, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(21, 21, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(22, 22, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(23, 23, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(24, 24, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(25, 25, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(26, 26, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(27, 27, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(28, 28, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(30, 30, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(31, 31, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(32, 32, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(33, 33, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(34, 34, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(35, 35, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(36, 36, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(37, 37, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(38, 38, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(39, 39, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(40, 40, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(41, 41, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(42, 42, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(43, 43, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(44, 44, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(45, 45, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(46, 46, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(47, 47, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(48, 48, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(49, 49, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(50, 50, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(51, 51, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(52, 52, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(53, 53, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(54, 54, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(55, 55, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(56, 56, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(57, 57, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(58, 58, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(59, 59, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(60, 60, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(61, 61, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(62, 62, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(63, 63, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(64, 64, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(65, 65, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(66, 66, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(67, 67, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(68, 68, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(69, 69, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(70, 70, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(71, 71, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(72, 72, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(73, 73, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(74, 74, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(75, 75, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(76, 76, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(77, 77, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(78, 78, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(79, 79, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(80, 80, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(81, 81, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(82, 82, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(83, 83, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(84, 84, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(85, 85, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(86, 86, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(87, 87, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(88, 88, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(89, 89, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(90, 90, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(91, 91, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(92, 92, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(93, 93, 1)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(94, 94, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(95, 95, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(96, 96, 2)
INSERT [dbo].[voucher_card_payment]
	([id], [id_voucher], [id_card_payment])
VALUES
	(97, 97, 1)
SET IDENTITY_INSERT [dbo].[voucher_card_payment] OFF
GO
SET IDENTITY_INSERT [dbo].[voucher_check_payment] ON

INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(1, 1, 1)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(2, 2, 2)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(3, 3, 3)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(4, 4, 4)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(5, 5, 5)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(6, 6, 6)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(7, 7, 7)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(8, 8, 8)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(9, 9, 9)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(10, 10, 10)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(11, 11, 11)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(12, 12, 12)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(13, 13, 13)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(14, 14, 14)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(15, 15, 15)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(16, 16, 16)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(17, 17, 17)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(18, 18, 18)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(19, 19, 19)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(20, 20, 20)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(21, 21, 21)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(22, 22, 22)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(23, 23, 23)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(24, 24, 24)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(25, 25, 25)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(26, 26, 26)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(27, 27, 27)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(28, 28, 28)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(30, 30, 30)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(31, 31, 31)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(32, 32, 32)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(33, 33, 33)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(34, 34, 34)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(35, 35, 35)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(36, 36, 36)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(37, 37, 37)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(38, 38, 38)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(39, 39, 39)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(40, 40, 40)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(41, 41, 41)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(42, 42, 42)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(43, 43, 43)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(44, 44, 44)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(45, 45, 45)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(46, 46, 46)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(47, 47, 47)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(48, 48, 48)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(49, 49, 49)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(50, 50, 50)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(51, 51, 51)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(52, 52, 52)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(53, 53, 53)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(54, 54, 54)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(55, 55, 55)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(56, 56, 56)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(57, 57, 57)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(58, 58, 58)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(59, 59, 59)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(60, 60, 60)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(61, 61, 61)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(62, 62, 62)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(63, 63, 63)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(64, 64, 64)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(65, 65, 65)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(66, 66, 66)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(67, 67, 67)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(68, 68, 68)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(69, 69, 69)
INSERT [dbo].[voucher_check_payment]
	([id], [id_voucher], [id_check_payment])
VALUES
	(70, 70, 70)
SET IDENTITY_INSERT [dbo].[voucher_check_payment] OFF
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
ALTER TABLE [dbo].[medicine]  WITH CHECK ADD FOREIGN KEY([type_medicine])
REFERENCES [dbo].[medicine_type] ([id])
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
