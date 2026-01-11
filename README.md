# Linux Mint 22.2 Debloat & KDE Switcher

![Linux Mint](https://img.shields.io/badge/Base-Linux%20Mint%2022.2-green?style=flat-square)
![KDE Plasma](https://img.shields.io/badge/Desktop-KDE%20Plasma-blue?style=flat-square)
![Status](https://img.shields.io/badge/Status-Tested-success?style=flat-square)

**[Bahasa Indonesia](#-panduan-bahasa-indonesia) | [English Documentation](#-english-documentation)**

Dokumen ini berisi panduan untuk mengubah **Linux Mint Cinnamon 22.2** menjadi sistem berbasis **KDE Plasma** yang ringan (debloated) dengan tampilan ala Kubuntu, menggunakan **SDDM** sebagai display manager.

---

> ⚠️ **PERINGATAN PENTING**
>
> 1. Script ini melakukan **penghapusan agresif** (menghapus Cinnamon, GNOME core, dan aplikasi default Mint).
> 2. **Backup data WAJIB** sebelum melanjutkan.
> 3. **Jangan jalankan script ini dari sesi desktop grafis**. Gunakan **TTY** (`Ctrl` + `Alt` + `F2`).
> 4. Penulis **tidak bertanggung jawab atas kehilangan data** akibat kelalaian pengguna.

---

## 🇮🇩 Panduan Bahasa Indonesia

### Tujuan
- Menghapus *bloatware* Cinnamon & Linux Mint.
- Migrasi penuh ke **KDE Plasma** + **SDDM**.
- Meningkatkan performa sistem agar lebih ringan.

### Langkah Instalasi

#### 1. Persiapan Script
Pastikan file `debloat-resume.sh` sudah ada di folder `~/Downloads` (atau folder pilihanmu).

#### 2. Masuk ke Mode TTY
Logout dari desktop atau tekan:
```

Ctrl + Alt + F2

````
Login dengan user dan password kamu.

#### 3. Eksekusi Script
Masuk ke folder script dan jalankan:

```bash
cd ~/Downloads
chmod +x debloat-resume.sh
sudo ./debloat-resume.sh
````

⏳ Tunggu hingga selesai. Script akan menghapus Cinnamon, LibreOffice, Firefox, dll, serta membersihkan sisa paket.

#### 4. Update & Install KDE

Setelah script selesai, jalankan perintah berikut:

```bash
# Update repository & upgrade sistem
sudo apt update && sudo apt upgrade -y

# Install KDE Plasma Standard & SDDM
sudo apt install -y kde-standard sddm
```

> **PENTING:** Saat muncul layar konfigurasi Display Manager, pilih **sddm**.

#### 5. Reboot & Login

Restart komputer:

```bash
sudo reboot
```

Setelah menyala, login ke sesi Plasma. Selamat menikmati Linux Mint rasa Kubuntu!

#### 6. Pembersihan Lanjutan (Opsional)

Hapus aplikasi bawaan KDE yang tidak perlu:

```bash
sudo apt purge kmail korganizer kaddressbook konversation
sudo apt autoremove
```

---

## 🇬🇧 English Documentation

### Project Goals

* **Deep Debloating:** Remove Cinnamon desktop and pre-installed Mint applications.
* **Complete Migration:** Switch fully to KDE Plasma with SDDM.
* **Optimization:** Achieve a lightweight, high-performance system with Kubuntu-like aesthetics.

### Installation Guide

#### 1. Script Preparation

Ensure the `debloat-resume.sh` file is downloaded in your `~/Downloads` directory (or preferred location).

#### 2. Access TTY Interface

Switch to a virtual terminal (TTY) by pressing:

```
Ctrl + Alt + F2
```

Log in with your system username and password.

#### 3. Execute the Debloat Script

Navigate to the directory and run:

```bash
cd ~/Downloads
chmod +x debloat-resume.sh
sudo ./debloat-resume.sh
```

⏳ Wait for completion. This will purge Cinnamon, LibreOffice, Firefox, and residual configs.

#### 4. System Update & KDE Installation

Once finished, run:

```bash
# Update repositories & upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install KDE Plasma Standard & SDDM
sudo apt install -y kde-standard sddm
```

> **IMPORTANT:** Select **sddm** when prompted for Display Manager.

#### 5. Reboot & Login

Restart your system:

```bash
sudo reboot
```

Log in to the Plasma session via SDDM.

#### 6. Optional: Minimalist KDE Setup

Remove unused KDE PIM suite apps:

```bash
sudo apt purge kmail korganizer kaddressbook konversation
sudo apt autoremove
```

---

## 👤 Author & Credits

* Script & Tutorial by: **AntoMay**
* Connect: Facebook - Epoy Saputra
* Feel free to **fork, star, and contribute** to this project!
