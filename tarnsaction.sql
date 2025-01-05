



-- eger ilan fiyati  2000 ve 5000  arasinda kabul eldilir ilan

begin transaction 
insert into ilan(i_id,ev_id,el_id,i_evfiyati,i_fiyati,i_tarih)
values(11,1,1,3000,6000,'2025-01-02')

commit transaction 
rollback

select * from ilan;