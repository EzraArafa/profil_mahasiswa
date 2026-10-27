# Profil Mahasiswa - Praktikum Pemrograman Mobile (Modul 2)

Aplikasi antarmuka profil mahasiswa berbasis Flutter yang dibangun dengan menerapkan prinsip **Separation of Concerns (SoC)**, tata letak responsif (`Expanded`, `Flexible`, `Stack`), dan komponen UI modular.

## 📄 Fitur Aplikasi
- **Profil Utama (`ProfileScreen`)**: Menampilkan foto profil, data mahasiswa (Nama, NIM, Program Studi, Email, Lokasi), dan deretan media sosial.
- **Media Sosial Interaktif (`SocialMediaRow`)**: Menampilkan SnackBar interaktif saat ikon media sosial diklik (Instagram, LinkedIn, GitHub).
- **Halaman Tentang (`AboutScreen`)**: Menampilkan latar belakang gradasi menggunakan `Stack` dan navigasi kembali.
- **Komponen Modular**:
  - `ProfileHeader`: Menggabungkan foto profil, nama, dan NIM.
  - `ProfileInfo`: Menampilkan daftar detail studi dan kontak.
  - `ActionButtons`: Menampung tombol navigasi dan aksi interaktif.

## 🛠️ Teknologi yang Digunakan
- **Framework**: Flutter (Material 3)
- **Bahasa**: Dart
- **IDE**: Visual Studio Code / Android Studio
