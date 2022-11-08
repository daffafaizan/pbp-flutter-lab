## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.



## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Widget yang saya pakai adalah appBar, Scaffold, Icon, Column, Row, dan Text.

AppBar berfungsi untuk...

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.



## Jelaskan perbedaan antara const dengan final.



## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Langkah awal adalah membuat aplikasi flutter menggunakan command flutter create lalu nama appnya, yaitu counter_7. Logika pertama yang akan kita tambahkan adalah tombol + dan - untuk menambahkan dan mengurangi angka sebanyak satu satuan. Implementasi ini dilakukan dengan cara menambahkan Floating Action Button (FAB) baru. 

Masing-masing Floating Action Button akan memiliki atribut berupa onPressed untuk menjalankan suatu fungsi saat ditekan, tooltip untuk memunculkan label saat cursor hover di atas button, dan child berisi iconnya. Oleh karena itu, dibutuhkan method baru untuk decrement angka karena increment sudah ada. Pembuatan method ini cukup simpel, hanya dengan menggantikan _counter++ menjadi _counter--. Lalu, onPressed untuk FAB increment berisi _incrementCounter() dan pada decrement berisi _decrementCounter(). Setelah langkah-langkah tersebut dilakukan, logika utama untuk mengubah nilai telah selesai diterapkan.

Logika selanjutnya adalah menjadikan di atas angka bertuliskan GANJIL dengan warna biru apabila angka ganjil dan bertuliskan GENAP dengan warna merah apabila angka genap. Nilai 0 bertuliskan genap juga dan tidak dapat di-increment. Logika ini dapat diterapkan dengan menggunakan if-else conditional pada Text. Setelah conditional diterapkan, logika utama untuk menampilkan teks ganjil dan genap telah selesai dilakukan.

Logika terakhir adalan styling dari programnya. Styling yang saya maksud adalah pemosisian FAB, warna untuk teks, dan perubahan warna saat hover di atas FAB. Pemosisian FAB pada ujung kanan bawah dan ujung kanan atas dilakukan dengan floatingActionButtonLocation dan padding pada floatingActionButton. Warna untuk teks menggunakan TextStyle. Perubahan warna saat hover di atas FAB menggunakan hoverColor. Setelah langkah-langkah di atas dilakukan, styling dan program telah selesai dibuat.
