USE [odevEmlak]
GO
/****** Object:  Table [dbo].[eleman]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eleman](
	[el_id] [int] NOT NULL,
	[p_id] [int] NULL,
	[el_durumu] [int] NULL,
	[el_maasi] [numeric](9, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[el_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emlaksahibi]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emlaksahibi](
	[e_id] [int] NOT NULL,
	[p_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evler]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evler](
	[ev_id] [int] NOT NULL,
	[e_id] [int] NULL,
	[k_id] [int] NULL,
	[ev_durumu] [bit] NULL,
	[ev_fiyati] [decimal](18, 2) NULL,
	[cadde] [nvarchar](100) NULL,
	[sokak_no] [int] NULL,
	[ev_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ev_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evler_Islemler]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evler_Islemler](
	[change_id] [int] IDENTITY(1,1) NOT NULL,
	[ev_id] [int] NULL,
	[k_id] [int] NULL,
	[ev_durumu] [bit] NULL,
	[ev_fiyati] [decimal](18, 2) NULL,
	[Guncelleme_tarihi] [datetime] NULL,
	[islem] [char](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[change_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fatura]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fatura](
	[f_id] [int] NOT NULL,
	[mu_id] [int] NULL,
	[f_toplammaas] [numeric](15, 2) NULL,
	[f_ilanfiyatlar] [numeric](10, 2) NULL,
	[f_topkomisyonlar] [numeric](10, 2) NULL,
	[f_baslangic] [date] NULL,
	[f_bitis] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[f_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilan]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilan](
	[i_id] [int] NOT NULL,
	[ev_id] [int] NULL,
	[el_id] [int] NULL,
	[i_evfiyati] [numeric](10, 2) NULL,
	[i_fiyati] [numeric](7, 2) NULL,
	[i_tarih] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[i_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[islemeleman]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[islemeleman](
	[change_id] [int] IDENTITY(1,1) NOT NULL,
	[el_id] [int] NULL,
	[p_id] [int] NULL,
	[p_tc] [varchar](65) NULL,
	[p_adi] [varchar](10) NULL,
	[p_sayadi] [varchar](10) NULL,
	[el_durumu] [int] NULL,
	[tarih] [datetime] NULL,
	[islem] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[change_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori](
	[k_id] [int] NOT NULL,
	[k_odasayisi] [int] NULL,
	[k_evdurumu] [bit] NULL,
	[k_evasansor] [bit] NULL,
	[k_evbulundugukat] [int] NULL,
	[k_evisitmasistemi] [bit] NULL,
	[k_evbahcesi] [bit] NULL,
	[k_evhacmi] [float] NULL,
	[k_evbalkonlu] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[k_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[muhasibci]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[muhasibci](
	[mu_id] [int] NOT NULL,
	[el_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteri]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteri](
	[m_id] [int] NOT NULL,
	[p_id] [int] NULL,
	[m_tarcihi] [varchar](50) NULL,
	[m_butce] [numeric](7, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[m_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[odeme]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[odeme](
	[o_id] [int] NOT NULL,
	[m_id] [int] NULL,
	[el_id] [int] NULL,
	[s_id] [int] NULL,
	[o_tarihi] [date] NULL,
	[o_tipi] [varchar](6) NULL,
	[o_evfiyati] [numeric](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[o_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[person]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person](
	[p_id] [int] NOT NULL,
	[p_tc] [varchar](65) NULL,
	[p_adi] [varchar](10) NULL,
	[p_sayadi] [varchar](10) NULL,
	[p_tel] [varchar](65) NULL,
	[p_dtarihi] [date] NULL,
	[p_cinis] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sozlesme]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sozlesme](
	[s_id] [int] NOT NULL,
	[m_id] [int] NULL,
	[e_id] [int] NULL,
	[s_baslangic] [date] NULL,
	[s_bitis] [date] NULL,
	[s_depozit] [bit] NULL,
	[s_komisyon] [numeric](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sozlesmedurumu]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sozlesmedurumu](
	[change_id] [int] IDENTITY(1,1) NOT NULL,
	[s_id] [int] NULL,
	[sozlesmeDurumu] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[change_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[eleman]  WITH CHECK ADD  CONSTRAINT [fk_elman] FOREIGN KEY([p_id])
REFERENCES [dbo].[person] ([p_id])
GO
ALTER TABLE [dbo].[eleman] CHECK CONSTRAINT [fk_elman]
GO
ALTER TABLE [dbo].[emlaksahibi]  WITH CHECK ADD  CONSTRAINT [fk_emlaksahibi] FOREIGN KEY([p_id])
REFERENCES [dbo].[person] ([p_id])
GO
ALTER TABLE [dbo].[emlaksahibi] CHECK CONSTRAINT [fk_emlaksahibi]
GO
ALTER TABLE [dbo].[evler]  WITH CHECK ADD  CONSTRAINT [fk_evler_emlaksanibi] FOREIGN KEY([e_id])
REFERENCES [dbo].[emlaksahibi] ([e_id])
GO
ALTER TABLE [dbo].[evler] CHECK CONSTRAINT [fk_evler_emlaksanibi]
GO
ALTER TABLE [dbo].[evler]  WITH CHECK ADD  CONSTRAINT [fk_evler_kategori] FOREIGN KEY([k_id])
REFERENCES [dbo].[kategori] ([k_id])
GO
ALTER TABLE [dbo].[evler] CHECK CONSTRAINT [fk_evler_kategori]
GO
ALTER TABLE [dbo].[fatura]  WITH CHECK ADD  CONSTRAINT [fk_fatura] FOREIGN KEY([mu_id])
REFERENCES [dbo].[muhasibci] ([mu_id])
GO
ALTER TABLE [dbo].[fatura] CHECK CONSTRAINT [fk_fatura]
GO
ALTER TABLE [dbo].[ilan]  WITH CHECK ADD  CONSTRAINT [fk_ilan_elman] FOREIGN KEY([el_id])
REFERENCES [dbo].[eleman] ([el_id])
GO
ALTER TABLE [dbo].[ilan] CHECK CONSTRAINT [fk_ilan_elman]
GO
ALTER TABLE [dbo].[ilan]  WITH CHECK ADD  CONSTRAINT [fk_ilan_ev] FOREIGN KEY([ev_id])
REFERENCES [dbo].[evler] ([ev_id])
GO
ALTER TABLE [dbo].[ilan] CHECK CONSTRAINT [fk_ilan_ev]
GO
ALTER TABLE [dbo].[muhasibci]  WITH CHECK ADD  CONSTRAINT [fk_muhasibci2] FOREIGN KEY([el_id])
REFERENCES [dbo].[eleman] ([el_id])
GO
ALTER TABLE [dbo].[muhasibci] CHECK CONSTRAINT [fk_muhasibci2]
GO
ALTER TABLE [dbo].[musteri]  WITH CHECK ADD  CONSTRAINT [fk_musteri] FOREIGN KEY([p_id])
REFERENCES [dbo].[person] ([p_id])
GO
ALTER TABLE [dbo].[musteri] CHECK CONSTRAINT [fk_musteri]
GO
ALTER TABLE [dbo].[odeme]  WITH CHECK ADD  CONSTRAINT [fk_odeme_eleman] FOREIGN KEY([el_id])
REFERENCES [dbo].[eleman] ([el_id])
GO
ALTER TABLE [dbo].[odeme] CHECK CONSTRAINT [fk_odeme_eleman]
GO
ALTER TABLE [dbo].[odeme]  WITH CHECK ADD  CONSTRAINT [fk_odeme_musteri] FOREIGN KEY([m_id])
REFERENCES [dbo].[musteri] ([m_id])
GO
ALTER TABLE [dbo].[odeme] CHECK CONSTRAINT [fk_odeme_musteri]
GO
ALTER TABLE [dbo].[odeme]  WITH CHECK ADD  CONSTRAINT [fk_odeme_sozlesme] FOREIGN KEY([s_id])
REFERENCES [dbo].[sozlesme] ([s_id])
GO
ALTER TABLE [dbo].[odeme] CHECK CONSTRAINT [fk_odeme_sozlesme]
GO
ALTER TABLE [dbo].[sozlesme]  WITH CHECK ADD  CONSTRAINT [fk_soz_elmaksahibi] FOREIGN KEY([e_id])
REFERENCES [dbo].[emlaksahibi] ([e_id])
GO
ALTER TABLE [dbo].[sozlesme] CHECK CONSTRAINT [fk_soz_elmaksahibi]
GO
ALTER TABLE [dbo].[sozlesme]  WITH CHECK ADD  CONSTRAINT [fk_soz_musteri] FOREIGN KEY([m_id])
REFERENCES [dbo].[musteri] ([m_id])
GO
ALTER TABLE [dbo].[sozlesme] CHECK CONSTRAINT [fk_soz_musteri]
GO
ALTER TABLE [dbo].[eleman]  WITH CHECK ADD  CONSTRAINT [chk_el_durumu] CHECK  (([el_durumu]=(3) OR [el_durumu]=(2) OR [el_durumu]=(1) OR [el_durumu]=(0)))
GO
ALTER TABLE [dbo].[eleman] CHECK CONSTRAINT [chk_el_durumu]
GO
ALTER TABLE [dbo].[eleman]  WITH CHECK ADD CHECK  (([el_maasi]>=(17000)))
GO
ALTER TABLE [dbo].[evler_Islemler]  WITH CHECK ADD CHECK  (([islem]='guncelleme'))
GO
ALTER TABLE [dbo].[ilan]  WITH CHECK ADD  CONSTRAINT [check_fiyat] CHECK  (([i_fiyati]>=(2000) AND [i_fiyati]<=(5000)))
GO
ALTER TABLE [dbo].[ilan] CHECK CONSTRAINT [check_fiyat]
GO
ALTER TABLE [dbo].[islemeleman]  WITH CHECK ADD CHECK  (([islem]='terfi'))
GO
ALTER TABLE [dbo].[sozlesmedurumu]  WITH CHECK ADD CHECK  (([sozlesmeDurumu]='bitti' OR [sozlesmeDurumu]='bitmedi'))
GO
/****** Object:  StoredProcedure [dbo].[AylikIlanRaporu]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AylikIlanRaporu] (@baslangic DATE, @bitis DATE)
AS
BEGIN
    SELECT 
        i.i_id AS IlanID,
        i.ev_id AS EvID,
        i.el_id AS ElemanID,
        i.i_evfiyati AS EvFiyati,
        i.i_fiyati AS IlanFiyati,
        i.i_tarih AS Tarih
    FROM ilan i
    WHERE i.i_tarih BETWEEN @baslangic AND @bitis;

END;
GO
/****** Object:  StoredProcedure [dbo].[DepozitliOlanEvler]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DepozitliOlanEvler]
as 
begin 
select count(*) as depozitliEvler from sozlesme 
where s_depozit =1;
end
GO
/****** Object:  StoredProcedure [dbo].[DepozitliOlmayanEvler]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DepozitliOlmayanEvler]
as 
begin 
select count(*) as DepozitsizEvler from sozlesme 
where s_depozit =0;
end
GO
/****** Object:  StoredProcedure [dbo].[Elamanlar_Toplam_Maas]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Elamanlar_Toplam_Maas]
as 
begin

select sum(el_maasi) as Elaman_ToplamMaas from eleman;
end
GO
/****** Object:  StoredProcedure [dbo].[eleman_bilgileri]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eleman_bilgileri] 
    @elemandurumu INT
AS
BEGIN
    SELECT p_adi, p_sayadi, p_tel, el_maasi, el_durumu
    FROM person per
    JOIN eleman el ON per.p_id = el.p_id
    WHERE el_durumu = @elemandurumu;
END;
GO
/****** Object:  StoredProcedure [dbo].[Eleman_Sayisi]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eleman_Sayisi]
    @el_durumu INT
AS
BEGIN
    SELECT COUNT(*) AS ElemanSayisi
    FROM eleman
    WHERE el_durumu = @el_durumu;
END;
GO
/****** Object:  StoredProcedure [dbo].[elemanlarin_Maaslari]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[elemanlarin_Maaslari]
AS
BEGIN
    SELECT 
        p_adi, 
        p_sayadi, 
        p_tel, 
       el_maasi AS Maas  
    FROM person per
    JOIN eleman el ON per.p_id = el.p_id
   
END
GO
/****** Object:  StoredProcedure [dbo].[En_Dusuk_Alan_Maas]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[En_Dusuk_Alan_Maas]
AS
BEGIN
    SELECT p_adi, p_sayadi, p_tel, el_maasi
    FROM person per
    JOIN eleman el ON per.p_id = el.p_id
    WHERE el_maasi = (SELECT MIN(el_maasi) FROM eleman);
END;
GO
/****** Object:  StoredProcedure [dbo].[En_Yuksek_Alan_Maas]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[En_Yuksek_Alan_Maas]
AS
BEGIN
    SELECT p_adi, p_sayadi, p_tel, el_maasi
    FROM person per
    JOIN eleman el ON per.p_id = el.p_id
    GROUP BY p_adi, p_sayadi, p_tel, el_maasi
    HAVING el_maasi = (SELECT MAX(el_maasi) FROM eleman);
END;
GO
/****** Object:  StoredProcedure [dbo].[Ev_Hakkinda]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ev_Hakkinda] (@ev_id AS INT)
AS
BEGIN
    SELECT per.p_adi, per.p_sayadi, per.p_tel, evl.ev_durumu, evl.ev_fiyati, evl.cadde, evl.sokak_no, evl.ev_no
    FROM person per
    JOIN emlaksahibi eml ON per.p_id = eml.p_id
    JOIN evler evl ON eml.e_id = evl.e_id
    WHERE evl.ev_id = @ev_id;
END
GO
/****** Object:  StoredProcedure [dbo].[istenilen_Person_Hakkinda]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[istenilen_Person_Hakkinda] (@isim as varchar(30) ,@soyadi as varchar(30))
as 
begin 
select* from person
where p_adi =@isim and p_sayadi =@soyadi
end
GO
/****** Object:  StoredProcedure [dbo].[kredi_Odeyen]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[kredi_Odeyen]
AS
BEGIN
    SELECT p_tc, p_adi, p_sayadi, p_tel, p_dtarihi, p_cinis, o_tipi
    FROM person per
    JOIN eleman el ON per.p_id = el.p_id
    JOIN odeme o ON el.el_id = o.el_id
    WHERE o.o_tipi = 'kredi';
END;
GO
/****** Object:  StoredProcedure [dbo].[Nakit_Odeyen]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Nakit_Odeyen]
AS
BEGIN
    SELECT p_tc, p_adi, p_sayadi, p_tel, p_dtarihi, p_cinis, o_tipi
    FROM person per
    JOIN eleman el ON per.p_id = el.p_id
    JOIN odeme o ON el.el_id = o.el_id
    WHERE o.o_tipi = 'Nakit';
END;
GO
/****** Object:  StoredProcedure [dbo].[ortalama_Maaslar]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 -- ortalama maaslari
create procedure [dbo].[ortalama_Maaslar]
as 
begin
select avg(el_maasi) ortalama from eleman;
end
GO
/****** Object:  StoredProcedure [dbo].[Ortalamada_Yuksek_Alan]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ortalamada_Yuksek_Alan]
AS
BEGIN
    SELECT p_adi, p_sayadi, p_tel, el_maasi
    FROM person per 
    JOIN eleman el ON per.p_id = el.p_id
    GROUP BY p_adi, p_sayadi, p_tel, el_maasi
    HAVING el_maasi > (SELECT AVG(el_maasi) FROM eleman);
END;
GO
/****** Object:  StoredProcedure [dbo].[Person_Erkek_Olan]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Person_Erkek_Olan]
as 
begin 
select p_tc,p_adi,p_sayadi,p_tel,p_dtarihi from person
where p_cinis =0
end
GO
/****** Object:  StoredProcedure [dbo].[Person_genel_Bilgiler]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[Person_genel_Bilgiler]
as 
begin 

SELECT * 
FROM person;
end
GO
/****** Object:  StoredProcedure [dbo].[Person_kiz_Olan]    Script Date: 1/4/2025 6:40:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Person_kiz_Olan]
as 
begin 
select p_tc,p_adi,p_sayadi,p_tel,p_dtarihi from person
where p_cinis =1
end
GO
