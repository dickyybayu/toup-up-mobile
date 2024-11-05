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