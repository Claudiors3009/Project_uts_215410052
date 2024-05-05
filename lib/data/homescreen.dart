import 'package:flutter/material.dart';
import 'package:project_uts/data/data_menu.dart';
import 'package:project_uts/data/menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold digunakan sebagai kerangka dasar halaman dengan AppBar dan body
    return Scaffold(
      // AppBar berisi judul halaman
      appBar: AppBar(
        title: Text('Daftar Menu Warung Makan P. Widodo'),
      ),
      // Body dari halaman, diatur dengan Container untuk tata letak dan dekorasi
      body: Container(
        // Dekorasi kontainer dengan gambar latar belakang
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background3.jpg'), // Gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        // Child dari kontainer, berisi ListView.builder untuk menampilkan daftar menu
        child: ListView.builder(
          itemCount: dataMenu.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Ketika item daftar menu ditekan, navigator akan memindahkan ke halaman detail menu (DetailScreen)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      menus: dataMenu[index],
                    ),
                  ),
                );
              },
              // Card untuk menampilkan setiap item daftar menu
              child: Card(
                elevation: 0, // Menghilangkan bayangan pada card
                color: Colors.white.withOpacity(0.7), // Menambahkan transparansi pada card
                margin: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                // Row untuk menampilkan gambar dan detail menu secara horizontal
                child: Row(
                  children: [
                    // Widget ClipRRect untuk mengatur gambar menu
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          dataMenu[index].image,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Expanded digunakan untuk mengisi sisa ruang secara proporsional
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Teks untuk menampilkan nama menu
                            Text(
                              dataMenu[index].nama,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            SizedBox(height: 8), // Spacer vertikal dengan jarak 8
                            // Teks untuk menampilkan harga menu
                            Text(
                              'Harga: ${dataMenu[index].harga}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 79, 31, 1),
                              ),
                            ),
                            SizedBox(height: 8), // Spacer vertikal dengan jarak 8
                            // Row untuk menampilkan ikon favorit dan jumlah suka
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 24,
                                ),
                                SizedBox(width: 8), // Spacer horizontal dengan jarak 8
                                // Teks untuk menampilkan jumlah suka
                                Text(
                                  '120 suka',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
