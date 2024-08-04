# Chocolatey Installer Script

Script ini digunakan untuk menginstall Chocolatey jika belum terpasang, dan kemudian menginstall aplikasi-aplikasi yang tercantum. Script ini akan mengecek apakah aplikasi sudah terpasang sebelumnya sebelum mencoba menginstallnya.

## Prasyarat

- Windows PowerShell
- Koneksi Internet

## Aplikasi yang Akan Diinstall

- Firefox
- Google Chrome
- CrystalDiskMark
- Telegram
- Google Drive
- VirtualBox
- Docker Desktop
- WinRAR
- Netcut
- LINE
- Android Studio
- Steam
- Git
- Flutter
- Dart SDK
- Python 3
- VLC

## Cara Menggunakan

1. Buka PowerShell dengan hak administrator.
2. Salin dan tempel script PowerShell di atas ke dalam jendela PowerShell.
3. Tekan `Enter` untuk menjalankan script.

Script ini akan:

1. Mengecek apakah Chocolatey sudah terpasang. Jika belum, script akan menginstall Chocolatey.
2. Mengecek apakah setiap aplikasi dalam daftar sudah terpasang. Jika belum, script akan menginstall aplikasi tersebut menggunakan Chocolatey.

## Referensi Lain untuk Download Otomatis

Jika Anda tidak bisa menggunakan Chocolatey, berikut adalah beberapa alternatif lain:

1. **Scoop** - Manajer paket untuk Windows yang memungkinkan instalasi aplikasi melalui command line.
    - Instalasi: Buka PowerShell dan jalankan:
      ```powershell
      Set-ExecutionPolicy RemoteSigned -scope CurrentUser
      irm get.scoop.sh | iex
      ```
    - Untuk menginstall aplikasi: `scoop install <nama_aplikasi>`

2. **Ninite** - Situs web yang memungkinkan Anda membuat installer khusus untuk beberapa aplikasi sekaligus.
    - Kunjungi [Ninite](https://ninite.com) dan pilih aplikasi yang ingin diinstall, lalu unduh dan jalankan installer.

3. **Winget** - Windows Package Manager resmi dari Microsoft.
    - Instalasi: Buka Command Prompt atau PowerShell dan jalankan:
      ```powershell
      winget install <nama_aplikasi>
      ```

Pastikan untuk menggunakan manajer paket yang sesuai dengan kebutuhan dan preferensi Anda.
