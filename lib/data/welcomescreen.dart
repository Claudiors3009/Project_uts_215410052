import 'package:flutter/material.dart';
import 'package:project_uts/data/homescreen.dart'; // Mengimpor file home.dart

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold digunakan sebagai kerangka dasar halaman dengan AppBar dan body
    return Scaffold(
      // AppBar berisi judul halaman
      appBar: AppBar(
        title: Text('Ayam Bakar Mobile'),
      ),
      // Body dari halaman, diatur dengan Container untuk tata letak dan dekorasi
      body: Container(
        // Dekorasi kontainer dengan gambar latar belakang
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/welcome.JPEG'), // Gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        // Child dari kontainer, berisi widget Column untuk menata widget secara vertikal
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Widget Text untuk menampilkan teks selamat datang
              Text(
                'Selamat Datang!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna teks putih
                ),
              ),
              SizedBox(height: 20), // Spacer vertikal dengan jarak 20
              // Tombol ElevatedButton untuk masuk ke halaman beranda
              ElevatedButton(
                onPressed: () {
                  // Ketika tombol ditekan, navigator akan memindahkan ke halaman beranda (HomeScreen)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                // Konfigurasi tampilan tombol
                style: ButtonStyle(
                  // Warna tombol saat tidak ditekan
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  // Padding tombol
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 40, vertical: 16)),
                  // Bentuk tombol
                  shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  // Ketebalan bayangan tombol saat ditekan
                  elevation: MaterialStateProperty.all<double>(10),
                  // Warna bayangan tombol saat ditekan
                  shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
                // Teks pada tombol
                child: Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white, // Warna teks "Masuk"
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
