
## Proje Ekibindeki Kişiler:
- AHMET ALRUSTUM (210260612)
- EYMEN BACAR (220260604)
- ESRA ASLANBOĞA (220260048)
  
# Emlak Yönetim Sistemi

## Proje Tanımı
Emlak Yönetim Sistemi, küçük emlak şirketlerinin müşteri, emlak ve finans yönetimini kolaylaştırmak için tasarlanmış bir yazılımdır. Sistem, çalışanlar, müşteriler, ev sahipleri ve kiralanacak emlak bilgilerini içerir. Amaç, ev ilanlarını uygun müşterilere ulaştırmak ve kiralanan evlerin sözleşme, ödeme ve fatura işlemlerini muhasebeci tarafından kontrol etmektir. Kullanıcı dostu arayüzüyle emlak danışmanları ve müşterilerin ihtiyaçlarına yönelik işlevler sunar.


### İlan Yönetimi
- İlan ekleme, güncelleme ve silme.
- İlanları kategori ve alt kategorilere ayırarak aramayı kolaylaştırma.
- İlanlarda iletişim bilgileri paylaşarak kullanıcıyla bağlantı kurma.
- İlanlarda emlak özelliklerini belirtme (oda sayısı vb.).

### Şirket Harcamaları
- Aylık gelir ve giderlerin takibi.
- Çalışan maaşlarının düzenli ödenmesi.
- Ay sonunda finansal rapor hazırlanarak kârlılık analizi yapılması.
- Harcamaları kontrol altında tutarak mali durumu izleme.

### Şirketin Finansal İşlemleri
- Müşteri ve ev sahibi arasındaki sözleşme ile güvence sağlanır.
- Kira ödemeleri düzenli yapılır.
- Depozito ve komisyon detayları sözleşmede belirtilir.
- Belgelerle finansal süreçler şeffaf ve düzenli yürütülür.

### Hizmet Ekibi
- Müşterilerin ihtiyaçlarını anlayarak uygun çözümler sunar.
- İstenilen özellikte evleri bulup rehberlik sağlar.
- Emlak gösterimleri düzenleyerek süreci kolaylaştırır.
- Sorulara hızlı ve net yanıt verir, müşteri memnuniyetini ön planda tutar.

## Tablolar

1. **Person**: `p-id`, `p-tc`, `p-adı`, `p-soyadi`, `p-cins`, `p-dtarih`, `p-tel`.
2. **Muhasip**: `m-id`, `p-id`, `el-id`.
3. **Fatura**: `f-id`, `f-toplam-maas`, `f-toplam-komisyonlar`, `f-ilanlar-tarihi`, `m-id`.
4. **Müşteri**: `M-id`, `p-id`, `M-tercihi`, `M-bütçe`.
5. **Ödeme**: `ö-id`, `ö-tarihi`, `m-id`, `el-id`, `ö-evFiyat`, `ö-tipi`, `s-id`.
6. **Sözleşme**: `s-id`, `s-başlangıç`, `s-bitiş`, `s-komisyon`, `s-depozit`, `ev-id`, `m-id`.
7. **Evler**: `ev-id`, `ev-durumu`, `ev-konumu`, `ev-fiyat`, `k-id`, `e-id`.
8. **İlan**: `i-id`, `i-fiyat`, `el-id`, `i-ev-fiyat`, `ev-id`.
9. **Kategori**: `k-id`, `ev-bahçeli`, `ev-balkonlu`, `k-oda sayısı`, `ev-hacmi`, `ev-durumu`, `ev-ısıtma-sistemi`, `ev-asansörlü`, `ev-bulunduğu-kat`.
10. **Emlak Sahibi**: `e-id`, `p-id`, `e-ev-sayisi`.
11. **Eleman**: `el-id`, `p-id`, `el-maas`, `el-durumu`.

## İlişkiler
1. **Person - Emlak sahibi**: 1 - 0..1 ilişkisi (Bir kişi bir emlak sahibi olabilir ya da olmayabilir.)
2. **Person - Müşteri**: 1 - 0..1 ilişkisi (Bir kişi bir müşteri olabilir ya da olmayabilir.)
3. **Person - Eleman**: 1 - 0..1 ilişkisi (Bir kişi bir eleman olabilir ya da olmayabilir.)
4. **Person - Muhasip**: 1 - 0..1 ilişkisi (Bir kişi bir muhasip olabilir ya da olmayabilir.)
5. **Evler - Emlak sahibi**: 1 - Milişkisi (Bir emlak sahibinin birden fazla evi olabilir, ancak bir evin sadece bir sahibi vardır.)
6. **Evler - Kategori**: 1 - M ilişkisi (Bir ev bir kategoriye ait olabilir, fakat bir kategori de birden fazla ev olabilir.)
7. **Evler - İlan**: 0..1 - 0..M ilişkisi (Bir evin sıfır veya birden fazla ilanı olabilir. Bir ilan sıfır veya bir eve ait olabilir.)
8. **Müşteri - Ödeme**: 1 - 0..M ilişkisi (Bir müşterinin sıfır veya daha fazla ödemesi olabilir.)
9. **Muhasip - Fatura**: 1 - 1 ilişkisi (Şirkette tek Muhasip vardır.)
10. **Müşteri - Sözleşme**: 1 - 0..M ilişkisi (Bir müşterinin sıfır veya daha fazla sözleşmesi olabilir.)
11. **Evler - Sözleşme**: 1 - 0..M ilişkisi (Bir evin sıfır veya birden fazla sözleşmesi olabilir.)

## E-R Diyagramı
![image](https://github.com/user-attachments/assets/772cdb20-4f71-4d8d-a9b6-a8b2616ee09f)
