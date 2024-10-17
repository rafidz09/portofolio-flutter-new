import 'package:flutter/material.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController sekolahController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "images/background1.jpg"), // Ganti dengan path gambar Anda
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                // Input Username
                TextField(
                  controller: namaController,
                  decoration: const InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person), // Tambahkan ikon
                  ),
                ),
                const SizedBox(height: 16),
                // Input Password
                TextField(
                  controller: sekolahController,
                  decoration: const InputDecoration(
                    labelText: 'Sekolah',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.school_outlined), // Tambahkan ikon
                  ),
                ),
                const SizedBox(height: 16),

                TextField(
                  controller: roleController,
                  decoration: const InputDecoration(
                    labelText: 'Role',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.man), // Tambahkan ikon
                  ),
                ),
                const SizedBox(height: 16),

                TextField(
                  controller: deskripsiController,
                  decoration: const InputDecoration(
                    labelText: 'Deskripi',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.description), // Tambahkan ikon
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman profil
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(
                        nama: namaController.text,
                        sekolah: sekolahController.text,
                        role: roleController.text,
                        deskripsi: deskripsiController.text,
                      )),
                    );
                  },
                  child: const Text('Masuk'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40), // Full width
                  ),
                ),
                const SizedBox(height: 8),
                // Teks "Lupa Password?"
                TextButton(
                  onPressed: () {
                    // Logika untuk lupa password bisa ditambahkan di sini
                  },
                  child: const Text(
                    'Lupa password?',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

