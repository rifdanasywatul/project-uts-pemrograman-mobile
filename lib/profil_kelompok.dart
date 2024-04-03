import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Kelompok'),
      ),
      body: ListView(
        children: const [
          AnggotaKelompok(
            nama: 'Rifda Nasywatul Affah',
            tempatTanggalLahir: 'Tuban, 27 Agustus 2004',
            alamat:
                'Dsn. Simokerto Ds. Simongagrok Kec. Dawarblandong Kab. Mojokerto',
            nomorHP: '085748713615',
            email: '22082010009@student.upnjatim.ac.id',
            urlGithub: 'https://github.com/rifdanasywatul',
            riwayatPendidikan: [
              RiwayatPendidikan(
                jenjang: 'SMA',
                institusi: 'SMAN 1 DAWARBLANDONG ',
                jurusan: 'MIPA',
                tahunMasuk: '2019',
                tahunKeluar: '2022',
              ),
              RiwayatPendidikan(
                jenjang: 'S1',
                institusi: 'UPN Veteran Jawa Timur',
                jurusan: 'Sistem Informasi',
                tahunMasuk: '2022',
                tahunKeluar: 'Sekarang',
              ),
            ],
            penghargaan: [
              'Juara I UI/UX Tecnotainment UKM-FT ITC UTM',
            ],
            foto: 'img/rifda.jpg', // Ganti dengan URL foto
          ),
          SizedBox(height: 10),
          AnggotaKelompok(
            nama: 'Adelia Putri Pratiwi',
            tempatTanggalLahir: 'Nganjuk, 18 Juli 2004',
            alamat: 'Jl. Cempaka, Ds. Jatirejo, Kec. Loceret, Kab. Nganjuk',
            nomorHP: '085708809957',
            email: '22082010034@student.upnjatim.ac.id',
            urlGithub: 'https://github.com/adelialiae',
            riwayatPendidikan: [
              RiwayatPendidikan(
                jenjang: 'SMA',
                institusi: 'SMAN 1 LOCERET',
                jurusan: 'MIPA',
                tahunMasuk: '2019',
                tahunKeluar: '2022',
              ),
              RiwayatPendidikan(
                jenjang: 'S1',
                institusi: 'UPN Veteran Jawa Timur',
                jurusan: 'Sistem Informasi',
                tahunMasuk: '2022',
                tahunKeluar: 'Sekarang',
              ),
            ],
            penghargaan: [
              'Semoga Segera Mendapatkan Penghargaan',
            ],
            foto: 'img/adelia.jpg', // Ganti dengan URL foto
          ),
        ],
      ),
    );
  }
}

class AnggotaKelompok extends StatelessWidget {
  final String nama;
  final String tempatTanggalLahir;
  final String alamat;
  final String nomorHP;
  final String email;
  final String urlGithub;
  final List<RiwayatPendidikan> riwayatPendidikan;
  final List<String> penghargaan;
  final String foto;

  const AnggotaKelompok({
    required this.nama,
    required this.tempatTanggalLahir,
    required this.alamat,
    required this.nomorHP,
    required this.email,
    required this.urlGithub,
    required this.riwayatPendidikan,
    required this.penghargaan,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: ListTile(
        onTap: () {},
        title: Text(
          nama,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRect(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  foto,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            _buildClickableText('Tempat, Tanggal Lahir: $tempatTanggalLahir'),
            _buildClickableText('Alamat: $alamat'),
            _buildClickableText('Nomor HP: $nomorHP'),
            _buildClickableText('Email: $email', onTap: () => _launchEmail()),
            _buildClickableText('URL Github: $urlGithub',
                onTap: () => _launchURL(urlGithub)),
            const SizedBox(height: 8),
            const Text('Riwayat Pendidikan:'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: riwayatPendidikan
                  .map(
                    (riwayat) => Text(
                      '- ${riwayat.jenjang} di ${riwayat.institusi}, ${riwayat.jurusan}, ${riwayat.tahunMasuk}-${riwayat.tahunKeluar}',
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 8),
            const Text('Penghargaan:'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: penghargaan
                  .map(
                    (penghargaan) => Text('- $penghargaan'),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClickableText(String text, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: onTap != null ? const TextStyle(color: Colors.blue) : null,
      ),
    );
  }

  // Fungsi untuk membuka email
  void _launchEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  // Fungsi untuk membuka URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class RiwayatPendidikan {
  final String jenjang;
  final String institusi;
  final String jurusan;
  final String tahunMasuk;
  final String tahunKeluar;

  const RiwayatPendidikan({
    required this.jenjang,
    required this.institusi,
    required this.jurusan,
    required this.tahunMasuk,
    required this.tahunKeluar,
  });
}