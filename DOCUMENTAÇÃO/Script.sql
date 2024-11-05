SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes_2](
	[id] [bigint] NOT NULL,
	[data_criacao] [datetime2](6) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[score_engajamento] [float] NULL,
	[segmento_mercado] [varchar](255) NULL,
	[telefone] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clientes_2] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[clientes_2] ADD  CONSTRAINT [UKg7ywax6mp360aqxwe9gmr66ue] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedbacks_2](
	[id] [bigint] NOT NULL,
	[data_criacao] [datetime2](6) NOT NULL,
	[descricao] [varchar](255) NOT NULL,
	[nota] [int] NOT NULL,
	[titulo] [varchar](255) NOT NULL,
	[cliente_2_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[feedbacks_2] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[feedbacks_2]  WITH CHECK ADD  CONSTRAINT [FKl0q77xp26s2d3t5jodwdskhe2] FOREIGN KEY([cliente_2_id])
REFERENCES [dbo].[clientes_2] ([id])
GO
ALTER TABLE [dbo].[feedbacks_2] CHECK CONSTRAINT [FKl0q77xp26s2d3t5jodwdskhe2]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[predictions_2](
	[id] [bigint] NOT NULL,
	[data_geracao] [datetime2](6) NOT NULL,
	[descricao] [varchar](255) NOT NULL,
	[precisao] [float] NULL,
	[titulo] [varchar](255) NOT NULL,
	[cliente_2_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[predictions_2] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[predictions_2]  WITH CHECK ADD  CONSTRAINT [FKfe03n9wdan0q0hh4ounpvw34p] FOREIGN KEY([cliente_2_id])
REFERENCES [dbo].[clientes_2] ([id])
GO
ALTER TABLE [dbo].[predictions_2] CHECK CONSTRAINT [FKfe03n9wdan0q0hh4ounpvw34p]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reports_2](
	[id] [bigint] NOT NULL,
	[data_criacao] [datetime2](6) NOT NULL,
	[descricao] [varchar](255) NOT NULL,
	[periodo_final] [date] NOT NULL,
	[periodo_inicial] [date] NOT NULL,
	[titulo] [varchar](255) NOT NULL,
	[cliente_2_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[reports_2] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[reports_2]  WITH CHECK ADD  CONSTRAINT [FKtay5n61mp4ac766d2dby4yq56] FOREIGN KEY([cliente_2_id])
REFERENCES [dbo].[clientes_2] ([id])
GO
ALTER TABLE [dbo].[reports_2] CHECK CONSTRAINT [FKtay5n61mp4ac766d2dby4yq56]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_strategies_2](
	[id] [bigint] NOT NULL,
	[data_implementacao] [date] NOT NULL,
	[descricao] [varchar](255) NOT NULL,
	[eficacia_prevista] [float] NULL,
	[tipo_estrategia] [varchar](255) NOT NULL,
	[titulo] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sales_strategies_2] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_2](
	[id] [bigint] NOT NULL,
	[ativo] [bit] NOT NULL,
	[email] [varchar](255) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[papel] [varchar](255) NOT NULL,
	[senha] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[usuarios_2] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[usuarios_2] ADD  CONSTRAINT [UK2i054lhs95i8tnuj7d0wbixg6] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO




