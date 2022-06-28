# updaterule

Script untuk membantu update rules khusus [https://github.com/malikshi/open_clash](https://github.com/malikshi/open_clash). Dengan menggunakan script updaterule ini akan memudahkan pengguna [config offline](https://github.com/malikshi/open_clash#pemilihan-config) openclash untuk melakukan update atau sinkronisasi rule terbaru. Karena repo [open_clash](https://github.com/malikshi/open_clash/tree/main/rule_provider) akan selalu update setiap jam 03.00 WIB dan 15.00 WIB.

## Instalasi Script updaterule

```sh
wget https://raw.githubusercontent.com/malikshi/updaterule/main/u-rule.sh -O /usr/bin/u-rule && chmod +x /usr/bin/u-rule
```

## Penggunaan

Ada dua cara penggunaan scriptnya yakni manual dan melalui cronjob.

### Manual

Update rule secara manual jika ada update rule terbaru pada upstream repo kami, dengan menjalankan command pada terminal.

```sh
u-rule
```

### Cronjob

Update rule secara otomatis dengan memanfaatkan fitur cronjob atau scheduler. Kita akan menjalankan script secara otomatis pada pukul 03.30 WIB dan 15.30 WIB, langkah-langkah pemasangan crontab pada LuCi.

* Login Dashboard LuCi
* Klik Menu System
* Klik Scheduled Task
* Isi Crontab dan save

Ini isi crontab yang akan dicopy & pastekan pada field/kolom crontab.

```sh
30 3,15 * * * /usr/bin/u-rule
```

## Support Kami

Support kami dengan join dan membeli VVIP IPTUNNELS

* [Buy VVIP IPTUNNELS](https://linktr.ee/iptunnelscom)
* [Join Telegram](https://t.me/joinchat/RihiceTtK1QhBMm7)
* [Open Issues](https://github.com/malikshi/updater/issues/new/choose)
