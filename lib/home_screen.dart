import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String jobTitle = "Mobile Developer";
  TextEditingController nameController = TextEditingController();

  void changeJobTitle() {
    setState(() {
      jobTitle = jobTitle == "Mobile Developer"
          ? "Flutter Engineer"
          : "Mobile Developer";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kartu Nama Digital")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(255, 208, 208, 212),
                foregroundColor: Color.fromARGB(255, 34, 5, 199),
                backgroundImage: NetworkImage('https://picsum.photos/200'),
                foregroundImage: NetworkImage('https://picsum.photos/200/300'),
                child: Text(
                  "AZ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 205, 10, 10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Jaya Putra",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                jobTitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 9, 6, 204),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: changeJobTitle,
                child: const Text("Ubah Pekerjaan"),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Masukkan Nama',
                  hintText: 'Nama Lengkap',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  debugPrint('Tombol Ditekan');
                },
                child: Text(
                  'Klik Saya',
                  style: TextStyle(
                    color: Colors.red, // Mengatur warna teks menjadi merah
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
