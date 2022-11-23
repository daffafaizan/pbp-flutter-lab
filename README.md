# TUGAS 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Secara simpel, widget yang dapat berubah saat user berinteraksi dengannya disebut stateful. Sedangkan, widget yang tidak berubah saat user berinteraksi dengannya disebut stateless.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Widget yang saya pakai adalah appBar, Scaffold, Icon, Column, Row, Floating Action Button, dan Text.

AppBar merupakan komponen paling atas aplikasi yang fungsinya adalah mengandung tombol-tombol action paling umum. Scaffold berfungsi sebagai class yang mengandung widget-widget yang ditampilkan pada tampilan akhir. Icon merupakan image yang digunakan untuk melambangkan sesuatu. Column dan Row merupakan widget yang berfungsi sebagai layout untuk memosisikan children secara horizontal ataupun vertikal. Floating Action Button merupakan widget yang mengapung di atas layar di atas widget-widget lainnya. Fungsi FAB adalah men-trigger suatu primary action pada app. Terakhir adalah text yang merupakan widget yang berfungsi untuk menampilkan text menggunakan style-style yang berbeda

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi setState() merupakan proses rebuild yang memberitahu framework bahwa ada sesuai yang berubah dari kode yang bisa saja mengubah tampilan user interface. Variabel yang terdampak fungsi tersebut merupakan widget yang dapat berubah secara dinamis.

## Jelaskan perbedaan antara const dengan final.

Final berarti value-nya ditetapkan pada variabel dan tidak dapat diubah lagi kedepannya. Const bersifat sama seperti final, namun const membuat variablenya konstan/tidak dapat diubah pada saat compile-time saja.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Langkah awal adalah membuat aplikasi flutter menggunakan command flutter create lalu nama appnya, yaitu counter_7. Logika pertama yang akan kita tambahkan adalah tombol + dan - untuk menambahkan dan mengurangi angka sebanyak satu satuan. Implementasi ini dilakukan dengan cara menambahkan Floating Action Button (FAB) baru. 

Masing-masing Floating Action Button akan memiliki atribut berupa onPressed untuk menjalankan suatu fungsi saat ditekan, tooltip untuk memunculkan label saat cursor hover di atas button, dan child berisi iconnya. Oleh karena itu, dibutuhkan method baru untuk decrement angka karena increment sudah ada. Pembuatan method ini cukup simpel, hanya dengan menggantikan _counter++ menjadi _counter--. Lalu, onPressed untuk FAB increment berisi _incrementCounter() dan pada decrement berisi _decrementCounter(). Setelah langkah-langkah tersebut dilakukan, logika utama untuk mengubah nilai telah selesai diterapkan.

Logika selanjutnya adalah menjadikan di atas angka bertuliskan GANJIL dengan warna biru apabila angka ganjil dan bertuliskan GENAP dengan warna merah apabila angka genap. Nilai 0 bertuliskan genap juga dan tidak dapat di-increment. Logika ini dapat diterapkan dengan menggunakan if-else conditional pada Text. Setelah conditional diterapkan, logika utama untuk menampilkan teks ganjil dan genap telah selesai dilakukan.

Logika terakhir adalan styling dari programnya. Styling yang saya maksud adalah pemosisian FAB, warna untuk teks, dan perubahan warna saat hover di atas FAB. Pemosisian FAB pada ujung kanan bawah dan ujung kanan atas dilakukan dengan floatingActionButtonLocation dan padding pada floatingActionButton. Warna untuk teks menggunakan TextStyle. Perubahan warna saat hover di atas FAB menggunakan hoverColor. Setelah langkah-langkah di atas dilakukan, styling dan program telah selesai dibuat.

# TUGAS 8

## Jelaskan Perbedaan Navigator.push dan Navigator.pushReplacement

Secara singkat, Navigator.push hanya menambahkan route ke dalam stack sedangkan Navigator.pushReplacement tak hanya menambahkan route ke dalam stack, namun route sebelumnya juga dihapus.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!

1. Drawer
= Layar samping yan dapat digeser dan mengandung link penting pada aplikasi.
2. Navigator
= Widget yang membantu user menavigasi ke rute-rute lain.
3. ListTile
= Widget yang mengisi ListView. Menampilkan informasi berupa title, subtitle, leading icon, dan trailing icon.
4. DropdownButton
= Widget yang memiliki pilihan item yang bisa dipilih user.
5. TextFormField
= TextField yang digunakan dalam form.
6. TextButton
= Class yang digunakan untuk menampilkan text label pada elevasi 0.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)

1. onPressed
2. onChanged
3. onTap
4. onHover

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter!

Navigator bekerja dengan stack dari objek-objek route. Untuk menavigasi antara halaman, navigator menggunakan metode push untuk menuju halaman baru dan pop untuk menuju halaman sebelumnya.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!

- Buat dua page baru bernama form_data dan form_tambah
- Buat ListTitle baru pada drawer untuk merujuk pada kedua page yang baru
- Buat page models yang berisi data untuk ditampilkan
- Buat form judul dan nominal serta dropdown jenis penggunaan budget pada page form_tambah
- Buat tombol submit yang menyimpan data pada ListBudget bernama budget
- Aksesbudget pada page form_data
- Tampilkan data yang terdapat pada budget ke card untuk merepresentasikan budget

# TUGAS 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa, namun struktur dari data yang kita ambil bisa tidak sesuai. Oleh karena itu, lebih baik dibuat model agar data dapat diakses dengan lebih muduh dan lebih terstruktur.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!

(1) Center
(2) Row

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter!

(1) Menambahkan dependency http ke proyek
(2) Membuat model yang sesuai dengan json
(3) Membuat http request ke web dengan menggunakan dependency http
(4) Objek yang diambil dari web service dikonversikan ke model yang telah dibuat
(5) Data yang telah dikonversi ditampilkan dengan FutureBuilder

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!

(1) Menambahkan mywatchlist pada drawer
(2) 