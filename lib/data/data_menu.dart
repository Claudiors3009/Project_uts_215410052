import 'package:flutter/material.dart';
import 'package:project_uts/data/menu.dart';

class DetailScreen extends StatelessWidget {
  final menu menus;

  const DetailScreen({Key? key, required this.menus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menus.nama), // Judul AppBar menggunakan nama menu
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background2.jpg'), // Gambar latar belakang
            fit: BoxFit.cover, // Menyesuaikan gambar dengan ukuran container
          ),
        ),
        child: ListView( // ListView untuk memuat widget secara vertikal
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  menus.image, // Menampilkan gambar menu
                  width: 400,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 16, // Menggunakan SizedBox untuk memberi jarak vertikal
            ),
            Center( // Widget Center untuk menengahkan child widget
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Menengahkan child widget secara horizontal
                children: [
                  Text(
                    menus.nama, // Menampilkan nama menu
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white, // Warna teks putih
                    ),
                  ),
                  SizedBox(height: 8), // Memberi jarak vertikal antara widget
                  Text(
                    'Price: ${menus.harga}', // Menampilkan harga menu
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow, // Warna teks kuning
                    ),
                  ),
                  SizedBox(height: 8), // Memberi jarak vertikal antara widget
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Deskripsi : ' + menus.rasa, // Menampilkan deskripsi menu
                      maxLines: 15, // Membatasi jumlah baris maksimum
                      textAlign: TextAlign.justify, // Membuat teks rata kanan-kiri
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Warna teks putih
                      ),
                    ),
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
