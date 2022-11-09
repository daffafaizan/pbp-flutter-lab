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
