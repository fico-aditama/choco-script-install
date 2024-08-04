# Chocolatey Installer Script

Script ini menginstall Chocolatey jika belum terpasang, dan kemudian menginstall aplikasi-aplikasi yang tercantum. Script ini juga akan mengecek apakah aplikasi sudah terpasang sebelum mencoba menginstallnya.

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
2. Jalankan perintah berikut untuk mendownload dan menjalankan script:
    ```powershell
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/fico-aditama/choco-script-install/main/install.ps1'))
    ```
3. Script akan menginstall Chocolatey (jika belum terpasang) dan kemudian menginstall aplikasi-aplikasi yang tercantum.

## Referensi Lain untuk Download Otomatis

Jika Anda tidak bisa menggunakan Chocolatey, berikut adalah beberapa alternatif lain:

1. **Scoop** - Manajer paket untuk Windows.
    - Instalasi: Buka PowerShell dan jalankan:
      ```powershell
      Set-ExecutionPolicy RemoteSigned -scope CurrentUser; irm get.scoop.sh | iex
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
