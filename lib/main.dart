import 'package:flutter/material.dart';
import 'package:project_uts/data/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget MaterialApp digunakan untuk mengatur konfigurasi aplikasi
    return MaterialApp(
      // Judul aplikasi yang akan ditampilkan di bilah atas perangkat
      title: 'Daftar Menu Warung Makan P.Widodo',

      // Konfigurasi tema aplikasi, seperti warna utama dan warna latar belakang bilah atas
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 227, 212, 5),
        ),
      ),

      // Halaman awal aplikasi yang akan ditampilkan saat aplikasi dimulai
      home: const WelcomeScreen(),
    );
  }
}
