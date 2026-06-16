# Laporan Praktikum Sistem Operasi - Sesi 5

* **Nama:** Azza Ummu Habibatulloh
* **Prodi:** Sistem Informasi '25

---

## 1. Tugas Persiapan — Transfer File ke Linux Box

### Verifikasi Integritas File
Berdasarkan pengecekan nilai hash SHA256, file `data.csv` terbukti identik dan tidak mengalami korupsi data selama proses transfer dari Windows ke Linux Ubuntu.
* **Checksum di Laptop Host (Windows):** `sha256sum data.csv` menunjukkan file sukses terbaca.
* **Checksum di Linux Box (Ubuntu):** Nilai hash identik dengan di Windows, menandakan transfer aman.

### Kelebihan & Kekurangan SCP vs RSYNC
* **SCP (Secure Copy):**
  * *Kelebihan:* Sangat mudah digunakan untuk transfer file tunggal secara cepat tanpa konfigurasi tambahan karena bawaan dari OpenSSH.
  * *Kekurangan:* Tidak efisien untuk file banyak karena tidak mendukung *delta transfer* (harus mengulang dari awal jika terputus) dan tidak menampilkan progress bar secara informatif secara default.
* **RSYNC (Remote Sync):**
  * *Kelebihan:* Sangat kuat karena hanya mengirim bagian file yang berubah (*delta transfer*), bisa melanjutkan transfer yang terputus (*resume*), dan mendukung kompresi data.
  * *Kekurangan:* Perintahnya sedikit lebih kompleks dan aplikasi rsync harus terinstall di kedua sisi komputer.


## 2. Exercise 1 — CSV Customer Data Analysis

### Perintah Shell yang Digunakan (solution.sh)
Seluruh perintah pemrosesan data menggunakan tool `awk` dan `grep` telah didokumentasikan di dalam file `exercise-1-csv/solution.sh`.


## 3. Refleksi Mandiri

1. **Kesulitan terbesar yang dihadapi dan solusinya:**
   Kesulitan terbesar adalah ketelitian saat mengetik perintah transfer data jarak jauh menggunakan `scp`. Beberapa kali terjadi error karena typo perintah (seperti mengetik `sco`) dan lupa menaruh tanda titik `.` di ujung akhir perintah untuk menandakan folder tujuan di Windows. Solusinya adalah lebih teliti membaca petunjuk worksheet dan memahami arah pengiriman file.

2. **Command atau teknik baru yang dipelajari:**
   Mempelajari utilitas `awk` untuk memotong dan menormalisasi kolom CSV ke huruf kecil (`tolower`), perintah `grep` untuk menyaring pola string tertentu (email gmail), perintah `uniq -c` untuk menjumlahkan data unik, serta melakukan download/upload file server menggunakan protokol `scp` via port non-standar (`-P 2222`).

3. **Skenario nyata di pekerjaan IT menggunakan skill ini:**
   Kemampuan memproses data mentah lewat CLI ini sangat berguna untuk peran **DevOps Engineer** atau **System Administrator** saat menganalisis file log server berukuran besar secara cepat tanpa harus membuka aplikasi GUI yang berat, serta melakukan pembersihan data (*Data Cleaning*) sebelum dimasukkan ke database utama.

4. **Total waktu pengerjaan:**
   * Tugas Persiapan (SSH & SCP setup): ± 30 Menit.
   * Exercise 1 (CSV Processing): ± 45 Menit.
   * Total Waktu: ± 1 Jam 15 Menit.
  
     **dokumentasi:**
     
  Koneksi SSH & transfer
     <img width="1920" height="1020" alt="Screenshot 2026-06-12 112234" src="https://github.com/user-attachments/assets/cd7f0dec-1ad9-4f5f-ab9e-260f41b84fab" />
     <img width="1482" height="762" alt="Screenshot 2026-06-16 165758" src="https://github.com/user-attachments/assets/caba1dd7-2485-46a7-bbd4-31f9b7d3446e" />

  penarikan hasil
     <img width="1482" height="762" alt="Screenshot 2026-06-16 170739" src="https://github.com/user-attachments/assets/90e41619-1e54-4b5e-9f39-c370bbe6308f" />
     
saringan email dan data bersih
     <img width="1482" height="762" alt="Screenshot 2026-06-16 171126" src="https://github.com/user-attachments/assets/a34e6a59-3558-476b-90fa-c0c68fb0604b" />


     

     

