# Toup Up

## Profile

- **Nama**    : Dicky Bayu Sadewo
- **NPM**     : 2306275784
- **Kelas**   : PBP E  

# Tugas 7
## Pertanyaan dan Jawaban
1. **Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.**

    Stateless widget adalah widget yang tidak memiliki state internal yang bisa berubah. Artinya, tampilan dan data yang ditampilkan oleh stateless widget bersifat statis dan tidak berubah setelah widget dibuat. Contoh penggunaannya adalah label teks, ikon statis, tombol dengan aksi tetap, atau tampilan lain yang tidak berubah berdasarkan interaksi pengguna.

    Stateful widget adalah widget yang memiliki state internal yang dapat berubah seiring waktu. Artinya, tampilan dan data yang ditampilkan oleh stateful widget bersifat dinamis dan dapat berubah setelah widget dibuat. Contoh penggunaanya adalah tombol yang bisa mengubah warna saat ditekan, counter atau penghitung angka, atau tampilan yang berubah berdasarkan interaksi.

    Perbedaan utama antara stateless widget dan stateful widget adalah kemampuan untuk menyimpan dan memperbarui state. Stateless widget tidak memiliki state yang bisa berubah, sehingga tampilannya bersifat tetap (immutable) setelah widget dibangun. Di sisi lain, stateful widget memiliki kemampuan untuk menyimpan dan memperbarui state menggunakan metode `setState()`. Ini memungkinkan widget untuk menyesuaikan tampilannya secara dinamis berdasarkan perubahan data atau interaksi pengguna tanpa membangun ulang dari luar.

2. **Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**

    - Scaffold
    Berfungsi untuk menampilkan struktur layar utama yang berisi AppBar di bagian atas dan body yang berisi informasi serta daftar menu.
    - AppBar
    Berfungsi untuk menampilkan judul aplikasi "Toup Up" di bagian atas dengan teks berwarna putih dan background warna dari primary yang telah didefinisikan di tema.
    - Padding
    Berfungsi untuk memberikan ruang di sekitar widget anaknya untuk menciptakan jarak antara elemen dengan tepi atau elemen lain.
    - Column
    Berfungsi untuk menyusun beberapa elemen, seperti informasi pengguna dan daftar item menu, dalam susunan vertikal.
    - Row
    Berfungsi untuk menampilkan beberapa InfoCard (NPM, Name, dan Class) dalam satu baris horizontal.
    - SizedBox
    Berfungsi untuk memberikan jarak antara bagian informasi pengguna dan bagian daftar menu.
    - GridView.count
    Berfungsi untuk menampilkan ItemCard dalam bentuk grid dengan tiga kolom. 
    - InfoCard
    Berfungsi untuk menampilkan data pengguna dalam bentuk card yang rapi dan terstukrur.
    - Card
    Berfungsi untuk menampilkan informasi pengguna dengan gaya visual yang lebih menonjol dan memiliki bayangan.
    - ItemCard
    Berfungsi untuk menampilkan setiap item menu dengan tampilan yang dapat ditekan dan memberikan feedback visual.
    - InkWell
    Berfungsi untuk menambahkan efek ripple saat item menu ditekan.
    - SnackBar
    Berfungsi untuk menampilkan pesan saat pengguna menekan salah satu ItemCard.

3. **Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**

    Fungsi `setState()` digunakan di dalam stateful widget untuk memperbarui atau merender ulang tampilan widget saat ada perubahan pada data atau variabel yang mempengaruhi UI. Ketika `setState()` dipanggil, Flutter akan menjalankan ulang metode `build()` pada widget tersebut, sehingga widget dapat menampilkan data terbaru. Variabel yang terdampak dari fungsi tersebut adalah variabel yang dideklarasikan sebagai state di dalam stateful widget yang terpengaruh oleh `setState()`.

4. **Jelaskan perbedaan antara `const` dengan `final`.**

    Dalam Dart, `const` dan `final` digunakan untuk mendeklarasikan variabel yang tidak dapat diubah nilainya. Namun, ada perbedaan di antara keduanya. Variabel `const` harus memiliki nilai yang sudah pasti pada waktu kompilasi, sehingga hanya bisa digunakan untuk data yang benar-benar tetap, seperti konstanta matematika atau data statis yang tidak akan berubah sama sekali. 

    Sebaliknya, `final` memungkinkan nilai untuk ditentukan pada waktu runtime, sehingga lebih fleksibel. `final` sering digunakan untuk data yang tidak akan diubah setelah inisialisasi, tetapi nilainya mungkin baru diketahui saat aplikasi berjalan, seperti waktu sekarang atau input dari pengguna.

5. **Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.**

    1. Membuat proyek Flutter baru dengan command `flutter create toup_up`

    2. Membuat `main.dart` sebagai file utama dan entry point untuk aplikasi Flutter. File ini berisi kode yang memulai aplikasi, mendefinisikan widget utama, dan mengatur konfigurasi awal aplikasi.
    ```dart
    void main() {
    runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey,).copyWith(primary: Colors.grey[800], secondary: Colors.grey[700]),
            useMaterial3: true,
        ),
        home: MyHomePage(),
        );
    }
    }
    ```

    3. Membuat class `Myhomepage` yang berisi konten-konten yang akan ditampilkan dalam home page ketika program dijalankan.
    ```dart
    class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});
    final String npm = '2306275784';
    final String name = 'Dicky Bayu Sadewo';
    final String className = 'PBP E';

    final List<ItemHomepage> items = [
        ItemHomepage("Lihat Daftar Produk", Icons.shopping_bag, Colors.blue),
        ItemHomepage("Tambah Produk", Icons.add, Colors.green),
        ItemHomepage("Logout", Icons.logout, Colors.red),
        ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text(
            'Toup Up',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
            ),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    InfoCard(title: 'NPM', content: npm),
                    InfoCard(title: 'Name', content: name),
                    InfoCard(title: 'Class', content: className),
                ],
                ),
                const SizedBox(height: 16.0),
                Center(
                child: Column(
                    children: [
                    const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                        'Welcome to Toup Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                        ),
                        ),
                    ),
                    GridView.count(
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                        }).toList(),
                    ),
                    ],
                ),
                ),
            ],
            ),
        ),
        );
    }
    }
    ```

    4. Membuat class `ItemHomepage` yang berfungsi sebagai model data untuk menyimpan informasi dari setiap item menu (button).
    ```dart
    class ItemHomepage {
        final String name;
        final IconData icon;
        final Color color;

        ItemHomepage(this.name, this.icon, this.color);
    }
    ```

    5. Membuat class `ItemCard` untuk menampung class `ItemHomepage` dan terdapat fungsi `onTap()` untuk menampilkan snackbar dengan fungsi built-in.
    ```dart
    class ItemCard extends StatelessWidget {
    final ItemHomepage item; 
    const ItemCard(this.item, {super.key}); 
    @override
    Widget build(BuildContext context) {
        return Material(
        color: item.color,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
            onTap: () {
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
                );
            },
            child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    ),
                ],
                ),
            ),
            ),
        ),
        );
    }
    
    }
    ```      

# Tugas 8
## Pertanyaan dan Jawaban
1. **Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?**

    kegunaan `const` di Flutter yaitu digunakan untuk membuat nilai atau widget menjadi konstan dan immutabel pada waktu kompilasi, yang berarti tidak bisa diubah setelah didefinisikan. Dengan `const`, kita dapat mengoptimalkan performa aplikasi karena Flutter hanya akan membuat objek tersebut satu kali di memori sehingga penggunaan memori lebih efisien dan waktu kompilasi lebih cepat. Menggunakan `const` juga mempermudah proses debugging. ketika kita menggunakan `const`, kita tahu bahwa nilai atau widget tersebut tidak akan dipengaruhi oleh perubahan state atau variabel lain.

    `const` cocok untuk digunakan untuk widget atau nilai yang tidak pernah berubah, seperti teks statis, padding tetap, atau warna yang konsisten di seluruh aplikasi. Namun, `const` tidak cocok untuk widget atau nilai yang bergantung pada data dinamis, misalnya teks yang diperoleh dari API atau widget yang bergantung pada input pengguna. Oleh karena itu, `const` sangat cocok untuk komponen statis dan konstan, tetapi tidak digunakan pada widget yang perlu berinteraksi dengan state atau data yang dinamis. 

2. **Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**

    Column:
    - `Column` digunakan untuk menempatkan widget secara vertikal, seperti daftar item yang tertata dari atas ke bawah.
    - Setiap widget yang berada di dalam `Column` akan ditempatkan sebagai satu baris di bawah widget sebelumnya.
    - `Column` menggunakan properti `mainAxisAlignment` dan `crossAxisAlignment` untuk mengatur tata letak widget pada sumbu utama (vertikal) dan sumbu silang (horizontal).

    Row:
    - `Row` digunakan untuk menempatkan widget secara horizontal, seperti daftar item yang tertera dari kiri ke kanan.
    - Setiap widget yang berada di dalam `Row` akan ditempatkan sebagai kolom di samping widget sebelumnya.
    - `Row` juga memiliki properti `mainAxisAlignment` dan `crossAxisAlignment` untuk mengatur posisi widget pada sumbu utama (horizontal) dan sumbu silang (vertikal).

    Contoh implementasi `Column`:
    ```dart
    Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
    ```

    Contoh implementasi `Row`:
    ```dart
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            InfoCard(title: 'NPM', content: npm),
            InfoCard(title: 'Name', content: name),
            InfoCard(title: 'Class', content: className),
        ],
    ),
    ```

3. **Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**

    Elemen input yang saya gunakan pada halaman form:
    - TextFormField: Elemen ini saya gunakan untuk menerima masukan teks dan angka, seperti nama produk, amount, kuantitas produk, dan deskripsi produk. `TextFormField` juga mendukung validasi input, memastikan bahwa data yang dimasukkan sesuai dengan aturan yang ditentukan, misalnya tidak boleh kosong atau harus berupa angka positif.
    - CheckboxListTile: Elemen ini saya gunakan untuk menampilkan checkbox dengan label yang menjelaskan apakah produk tersedia atau tidak. Pengguna dapat mencentang checkbox untuk menandai bahwa produk tersebut tersedia. Elemen ini memmbantu menangani input boolean secara sederhana (ya/tidak).

    Elemen input yang tidak saya gunakan pada halaman form:
    - SwitchListTile: Elemen ini digunakan untuk mengaktifkan atau menonaktifkan suatu fitur.
    - DropdownButton: Elemen ini digunakan untuk membuat pilihan yang dapat dipilih dari daftar yang ditampilkan saat tombol ditekan.
    - Slider: Elemen ini digunakan untuk memilih nilai dalam suatu rentang dengan menggeser slider.
    - Radio: Elemen ini digunakan untuk membuat pilihan dalam kelompok di mana hanya satu opsi yang dapat dipilih pada satu waktu.
    - DatePicker: Elemen ini digunakan untuk memilih tanggal atau waktu.

4. **Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**

    Ya, saya mengimplementasikan tema dalam aplikasi yang saya buat dengan mendefinisikan warna utama dan sekunder menggunakan `ThemeData` di parameter `theme` pada `MaterialApp` di file `main.dart`. Warna utama dan sekunder diatur melalui `ColorScheme`. sebagai contoh, pada kode ini, `primarySwatch` diatur ke `Colors.grey`, dan warna sekunder disesuaikan dengan abu-abu yang lebih terang `Colors.grey[700]`. Dengan cara ini, setiap widget dan elemen UI di seluruh aplikasi akan memiliki gaya yang konsisten.

5. **Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**

    Dalam aplikasi Flutter yang saya buat, saya menangani navigasi anatar halaman menggunakan metode dasar push, pop, dan pushReplacement pada Navigator.

    Untuk menavigasi dari satu halaman ke halaman lain, saya menggunakan `Navigator.push`. Metode ini menambahkan halaman baru ke dalam stack navigasi, memungkinkan pengguna berpindah ke halaman baru sementara halaman sebelumnya tetap tersimpan di stack. Jika pengguna ingin kembali ke halaman sebelumnya, saya menggunakan `Navigator.pop`, yang mengeluarkan halaman saat ini dari stack dan membawa pengguna kembali ke halaman sebelumnya. Selain itu, saya juga menggunakan `Navigator.pushReplacement` untuk mengganti halaman saat ini dengan halaman baru tanpa menyimpan halaman lama di stack. 
