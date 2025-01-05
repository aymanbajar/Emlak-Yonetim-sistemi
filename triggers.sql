create table evler_Islemler(
	change_id int identity primary key,
	ev_id int ,
	k_id int,
	ev_durumu  bit ,
	ev_fiyati decimal(18,2),
	Guncelleme_tarihi datetime ,
	islem char(15),
	check (islem = 'guncelleme')
)




create trigger EvlerUzerindeGuncelleme
on evler
after update 
as
begin
insert into evler_Islemler(	ev_id,	k_id ,ev_durumu,ev_fiyati,Guncelleme_tarihi,islem)
select i.ev_id,i.k_id,i.ev_durumu,i.ev_fiyati,getDate()	,'Guncelleme' from inserted as i 
end




update evler
set ev_durumu = 1 
where ev_id =7;


select* from evler

select* from  evler_Islemler




 create table islemeleman(
 change_id int identity primary key,
 el_id int,
 p_id int,
 p_tc varchar(65),
 p_adi varchar(10),
 p_sayadi varchar(10),
 el_durumu int,
 tarih datetime,
 islem varchar(15) check (islem ='terfi')
 )


 create trigger elemanChange
 on eleman
 after update 
 as 
 begin 
 insert into islemeleman (el_id,p_id ,el_durumu,tarih,islem)
 select i.el_id,i.p_id ,i.el_durumu,getdate(),'terfi' from inserted as i;
UPDATE islemeleman
SET p_tc = person.p_tc,p_adi =person.p_adi,p_sayadi =person.p_sayadi
FROM islemeleman
JOIN person ON islemeleman.p_id = person.p_id;
end


 select* from eleman

 update eleman
 set el_durumu = 0
 where el_id =3

 select* from islemeleman;
 
 
CREATE TABLE sozlesmedurumu (
    change_id INT IDENTITY PRIMARY KEY,
    s_id INT,
    sozlesmeDurumu VARCHAR(25) CHECK (sozlesmeDurumu = 'bitti' OR sozlesmeDurumu = 'bitmedi')
);



CREATE TRIGGER sozlesmeTrigger
ON sozlesme
AFTER UPDATE
AS
BEGIN
    -- Insert updated records into sozlesmedurumu table
    INSERT INTO sozlesmedurumu (s_id, sozlesmeDurumu)
    SELECT i.s_id,
           CASE 
               WHEN CAST(GETDATE() AS DATE) >= i.s_baslangic and CAST(GETDATE() AS DATE)<= i.s_bitis  THEN 'bitmedi'
               ELSE 'bitti'
           END
    FROM inserted AS i;
END;

select* from sozlesme
select* from sozlesmedurumu
update sozlesme
set s_bitis ='2023-07-16'
where  s_id =4;
