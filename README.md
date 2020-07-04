# Kişisel Blog Scripti
8 Renk seçenekli, mobil uyumlu, basit blog scripti.

## Ekran Görüntüleri

Anasayfa -> https://kisaurl.net/n6AY

Yazı İçi -> https://kisaurl.net/hFzk

Yönetim Paneli -> https://kisaurl.net/JtV0

## Veritabanı Ayarları

assets/blog_conf.php dosyasını düzenleyin;
```php
$dbhost = "localhost";
$dbuser = "root"; //Veritabanı Kullanıcı Adı
$dbpass = ""; //Veritabanı Şifresi
$dbdata = "veritabani"; //Veritabanı Adı
```
## Giriş Bilgileri
```
Kullanıcı Adı: admin
Şifre: admin
```
## Kurulum

Veritabanı oluşturup, blog_conf.php dosyasına bilgileri girdikten sonra ana dizinde yer alan " blog.sql " dosyasını phpMyAdmin ile içeri aktarın.

## Uyarı
Kurulum yaptıktan sonra mutlaka yönetici şifrenizi değiştirin. Ayrıca güvenlik için " yonetim " klasörünün ismini değiştirmeyi unutmayın!