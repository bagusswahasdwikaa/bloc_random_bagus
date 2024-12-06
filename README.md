# **BLoC Pattern**

## Nama : Sukma Bagus Wahasdwika

## NIM  : 2241720223

## **Praktikum 7 - BLoC Pattern**

### **Soal 13:**
* Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?
    **Jawab:**

    Praktikum ini bertujuan untuk memahami pola arsitektur BLoC dengan memisahkan logika bisnis dari antarmuka pengguna (UI). Aplikasi menghasilkan angka acak yang diperbarui secara otomatis di layar menggunakan stream saat tombol ditekan.

    *Letak Konsep BLoC*
    
    Pemisahan Logika dan UI:
    - Logika bisnis: Di random_bloc.dart, menghasilkan angka acak menggunakan stream.
    - UI: Di random_screen.dart, hanya mendengarkan data dari stream dan mengirim perintah melalui sink.
    
    Komunikasi melalui Stream dan Sink:
    - Stream (Output): Mengirim angka acak dari BLoC ke UI.
    - Sink (Input): Menerima event dari UI untuk memproses angka acak.
    
    - StreamBuilder:
    Menghubungkan UI dengan stream untuk memperbarui tampilan secara otomatis.

    - Pembuangan Data (Dispose):
    Stream Controller ditutup di dispose() agar tidak terjadi kebocoran memori.

    Pola ini menjamin aplikasi terstruktur, mudah di-maintain, dan efisien.
    
* Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

    ![alt text](gif/blocPatternHasil.gif)