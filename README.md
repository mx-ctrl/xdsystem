Berikut README.md untuk ENZOX:

```markdown
# ENZOX

## Instalasi

Jalankan perintah berikut di Termux:

```bash
git clone https://github.com/mx-ctrl/xdsystem.git && cd xdsystem && chmod +x enzox && ./enzox
```

Atau jika sudah memiliki file installer:

```bash
bash install.sh
```

Cara Penggunaan

Setelah instalasi, ENZOX akan langsung berjalan. Jika ingin menjalankan lagi:

```bash
cd ~/xdsystem && ./enzox
```

Persyaratan

· Termux (minimal versi terbaru)
· Git (akan terinstall otomatis jika belum ada)
· Koneksi internet

Fitur

· Auto clone repository
· Auto kasih izin run
· Langsung jalankan ENZOX

Struktur Folder

```
~/xdsystem/
├── enzox       # Binary utama
├── install.sh  # Script installer
└── README.md   # Dokumentasi
```

Troubleshooting

Jika perintah git tidak ditemukan:

```bash
pkg install git
```

Jika file enzox tidak ada:

```bash
cd ~/xdsystem
ls -la
```

Lisensi

MIT License

```

**Cara pakai README:**
1. Simpan sebagai `README.md`
2. Upload ke repo GitHub

**Pengguna tinggal copy satu baris:**
```bash
git clone https://github.com/mx-ctrl/xdsystem.git && cd xdsystem && chmod +x enzox && ./enzox
```

Selesai! 🚀
