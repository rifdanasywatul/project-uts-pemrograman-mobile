import 'package:fasilkom/profil_kelompok.dart';
import 'package:flutter/material.dart';
import 'package:fasilkom/prodi.dart';
import 'package:fasilkom/detail_prodi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fakultas Ilmu Komputer',
      home: const MyHomePage(title: ''),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}

class MenuItem {
  final String title;
  final String image;

  MenuItem({required this.title, required this.image});
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String coverImage = 'img/sampul.png';

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fakultas Ilmu Komputer',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 248, 214, 164),
                Colors.orange,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(149, 195, 119, 78),
                      Color.fromARGB(0, 233, 197, 178),
                    ],
                  ),
                ),
              ),
              Image.asset(
                coverImage,
                fit: BoxFit.cover,
                height: 200,
              ),
              Container(
                height: 200,
                color: Colors.black.withOpacity(0.3),
                child: const Center(
                  child: Text(
                    'Fakultas Ilmu Komputer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Fakultas Ilmu Komputer (FIK) adalah Fakultas yang ketujuh yang dibentuk oleh UPN “Veteran” Jawa Timur yang diawali dengan pelantikan Dekan pertama pada bulan Agustus 2016 berdasarkan Keputusan Rektor No. 153/UN63/KP/2016 tanggal 18 Agustus 2016.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (index == menuItems.length - 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilPage(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProdiDetailPage(prodi: Prodi.samples[index]),
                      ),
                    );
                  }
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.white,
                          Color.fromARGB(255, 220, 213, 207)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          menuItems[index].image,
                          width: 65,
                          height: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        menuItems[index].title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black, // Warna teks hitam
                        ),
                      ),
                      subtitle: const Text(
                        'Klik untuk melihat informasi',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios,
                          color: Colors.black),
                    ),
                  ),
                ),
              );
            },
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 248, 214, 164),
                  Colors.orange,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Text(
              'Presented by Kelompok 13',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



final List<MenuItem> menuItems = [
  MenuItem(title: "S-1 Teknik Informatika", image: 'img/tifa.png'),
  MenuItem(title: "S-1 Sistem Informasi", image: 'img/sifo.png'),
  MenuItem(title: "S-1 Sains Data", image: 'img/sada.png'),
  MenuItem(title: "S-1 Bisnis Digital", image: 'img/bisdig.png'),
  MenuItem(
      title: "S-2 Komputer (Magister Teknologi Informasi)",
      image: 'img/magister.png'),
  MenuItem(title: "Profil Kelompok", image: 'img/profil.jpg'),
];

