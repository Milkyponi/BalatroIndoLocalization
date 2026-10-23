<p align="center">
  <img src="assets/banner.jpg" alt="Balatro Indonesian Localization Banner" width="100%">
</p>

<p align="center">
  <a href="https://github.com/Milkyponi/BalatroIndoLocalization/releases/latest"><img src="https://img.shields.io/badge/Release-v1.0-blue?style=for-the-badge" alt="Release"></a>
  <img src="https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%28Steam%20Deck%29-23496d?style=for-the-badge" alt="Platform">
  <img src="https://img.shields.io/badge/Balatro-Compatible-red?style=for-the-badge" alt="Game Version">
</p>

# Balatro Indonesian Localization Mod

Modifikasi lokalisasi Bahasa Indonesia untuk game **Balatro** (PC / Steam / Steam Deck). 

Proyek ini memfokuskan penerjemahan pada deskripsi seluruh kartu Joker, mekanisme item toko (Shop), dan tombol navigasi antarmuka, disesuaikan dengan bahasa sehari-hari yang komunikatif untuk pemain lokal tanpa merusak akurasi mekanik kartu.

---

## Ringkasan Cakupan Lokalisasi

| Komponen | Jumlah Entri | Detail Perubahan |
| :--- | :--- | :--- |
| **Kartu Joker** | 150 Joker | Nama kartu tetap dalam Bahasa Inggris original (*Blueprint, Cavendish, Baron, dll.*). Deskripsi efek, penskalaan angka, dan syarat unlock diterjemahkan ke Bahasa Indonesia santai dan akurat. |
| **Voucher Toko** | 32 Voucher | Seluruh deskripsi voucher pasif di toko (*Clearance Sale, Overstock, Antimatter, Telescope, Grabber, dll.*). |
| **Booster Packs & Modifiers** | 54 Entri | Penjelasan Booster Packs (Arcana, Celestial, Buffoon, Spectral, Standard) varian Normal/Jumbo/Mega, serta stiker (*Eternal*, *Perishable*, *Rental*). |
| **Tombol Navigasi & UI** | 296 String | Tombol aksi toko (Beli, Jual, Acak Ulang, Klaim Hadiah), aksi gameplay (Mainkan Kartu, Buang Kartu, Lewati Blind), dan menu navigasi utama. |
| **Kartu Pendukung** | 102 Entri | Standardisasi terminologi kartu Tarot, Planet, Spectral, Enhanced Cards, Blinds, Decks, dan Stakes agar konsisten di seluruh game. |

---

## Karakteristik Teknis

1. **Native LÖVE2D Save Directory Override**:
   - Mod memanfaatkan mekanisme prioritas pembacaan file direktori penyimpanan LÖVE2D (`%AppData%/Balatro/localization/`).
   - Tidak memerlukan injeksi DLL pihak ketiga, mod loader, atau modifikasi file biner `Balatro.exe`.
   - Tidak terpengaruh atau terhapus saat Steam melakukan pembaruan game atau verifikasi integritas file.
2. **Dukungan Font Asli**:
   - Berjalan langsung menggunakan font piksel retro bawaan game (`m6x11plus.ttf` / Font Index 1). Karakter Latin standar Bahasa Indonesia (ASCII) didukung penuh tanpa glitch visual atau missing glyphs.
3. **Integritas Token & Format Parser**:
   - Seluruh tag pemformatan teks internal `{C:...}`, perbesaran font `{s:...}`, dan placeholder variabel dinamis (`#1#`, `#2#`) terjaga secara presisi sesuai spesifikasi parser game (`loc_parse_string`).

---

## Panduan Pemasangan

### Windows
1. Jalankan skrip `scripts/PASANG_OTOMATIS_WINDOWS.bat`, atau:
2. Pemasangan Manual:
   - Tekan `Win + R`, ketik `%AppData%\Balatro` lalu tekan `Enter`.
   - *(Catatan: Di Windows, variabel `%AppData%` otomatis langsung membuka folder `AppData\Roaming`. Jika membuka manual dari drive C, jalurnya adalah `C:\Users\<Username>\AppData\Roaming\Balatro`)*.
3. Salin folder `localization` ke dalam direktori tersebut.
4. Buka Balatro melalui Steam.
5. Pada Menu Utama, klik tombol bahasa di pojok kanan bawah, pilih **Bahasa Indonesia**, lalu konfirmasi.

### Linux / Steam Deck
1. Jalankan skrip `scripts/PASANG_OTOMATIS_LINUX.sh`, atau:
2. Salin folder `localization` ke direktori compatdata Proton:
   ```bash
   mkdir -p ~/.steam/steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/localization/
   cp localization/* ~/.steam/steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/localization/
   ```
3. Buka game di Steam dan pilih **Bahasa Indonesia** pada menu pengaturan bahasa.

---

## Struktur Berkas Repositori

```
BalatroIndoLocalization/
├── localization/
│   ├── id.lua          # Berkas lokalisasi utama Bahasa Indonesia
│   └── en-us.lua       # Salinan fallback untuk penggantian langsung slot default
├── scripts/
│   ├── PASANG_OTOMATIS_WINDOWS.bat
│   └── PASANG_OTOMATIS_LINUX.sh
├── PANDUAN_PEMASANGAN.txt
├── .gitignore
└── README.md
```

---

## Lisensi & Atribusi

- Mod ini dikembangkan untuk kebutuhan komunitas dan klien.
- Aset asli dan kekayaan intelektual game Balatro dimiliki sepenuhnya oleh **LocalThunk** dan **Playstack**.
