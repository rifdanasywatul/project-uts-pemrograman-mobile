import 'package:fasilkom/dosen.dart';
import 'package:fasilkom/mapres.dart';
import 'package:fasilkom/profil.dart';

class Prodi {
  String title;
  String image;
  String description;
  String websiteUrl;
  String email;
  List<ProfilProdi> listprofil;
  List<Mapres> listmapres;
  List<Dosen> listDosen;
  String pp;

  Prodi(
      {required this.title,
      required this.image,
      required this.description,
      required this.websiteUrl,
      required this.email,
      required this.listDosen,
      required this.pp,
      required this.listmapres,
      required this.listprofil});

  static List<ProfilProdi> ProfilIF = [
    ProfilProdi(
        jurusan: 'S-1 Teknik Informatika',
        visi:
            'VISI :\nBerdasarkan Visi Universitas dan Fakultas, maka Program Studi Informatika UPNVJT merumuskan visinya yakni “MENGEMBANGKAN KEILMUAN INFORMATIKA YANG UNGGUL DALAM BIDANG SISTEM CERDAS TEPAT GUNA BERKARAKTER BELA NEGARA”. Visi ini diharapkan akan dapat dicapai pada tahun 2039. \n\nPada rentang tahun 2020 sampai 2024, arah kebijakan UPNVJT adalah pada penguatan kapabilitas kelembagaan yang berorientasi pendidikan dan riset yang berkarakter bela negara untuk meningkatkan daya saing di tingkat ASEAN, dengan didukung oleh SDM yang memiliki kepakaran dan keunggulan riset. Maka dari itu, Renstra Universitas dan Fakultas Ilmu Komputer sebagai acuan utama dalam merencanakan dan menyelenggarakan program-program kegiatan di Program Studi Informatika. Visi Keilmuan Program Studi Informatika memiliki muatan sesuai dengan Kerangka Kualifikasi Nasional Indonesia (KKNI) tingkat Sarjana (Level 6) sesuai dengan jenjang pendidikan program studi.',
        akreditasi: 'Akreditasi: Baik Sekali')
  ];

  static List<ProfilProdi> ProfilSI = [
    ProfilProdi(
        jurusan: 'S-1 Sistem Informasi',
        visi:
            'VISI :\nVisi Prodi Sistem Informasi adalah menjadi program studi yang unggul berkarakter bela negara. Visi tersebut diwujudkan ke dalam roadmap keilmuan program studi untuk membangun Smart Village (Desa Cerdas) dengan dukungan teknologi/sistem informasi.',
        akreditasi: 'Akreditasi: Baik Sekali')
  ];

  static List<ProfilProdi> ProfilSD = [
    ProfilProdi(
        jurusan: 'S-1 Sains Data',
        visi:
            'VISI: \nMenjadi program studi sains data yang unggul di bidang kecerdasan buatan dan big data untuk industri 4.0 berkarakter bela negara\n\n MISI : \n\1. Menyelenggarakan pendidikan terbaik di bidang kecerdasan buatan dan Big Data bagi para mahasiswa agar mampu menjadi lulusan yang handal, berkarakter Belanegara, dan berwawasan global dan siap menghadapi tantangan di tengah revolusi industri 4.0.\n\2. Menyelenggarakan penelitian dan pengembangan ilmu pengetahuan di bidang kecerdasan buatan dan Big Data yang memberikan dampak pada kemajuan disiplin akademik dan profesional. \n\3. Menyelenggarakan pengabdian kepada masyarakat dengan menerapkan ilmu-ilmu di bidang kecerdasan buatan dan Big Data.',
        akreditasi: 'Akreditasi: Baik')
  ];

  static List<ProfilProdi> ProfilBD = [
    ProfilProdi(
        jurusan: 'S-1 Bisnis Digital',
        visi:
            'VISI: \nMenjadi Program Studi yang Unggul di Bidang Intelligent Business untuk Industri 4.0 dan Society 5.0 Berkarakter Bela Negara\n\nMisi\nMenyelenggarakan pendidikan terbaik di bidang Teknologi Bisnis Digital bagi para mahasiswa agar mereka mampu menjadi Sumber Daya Manusia handal, berdaya saing, unggul, dan berwawasan global dan siap menghadapi tantangan di tengah revolusi industri 4.0 dan society 5.0.',
        akreditasi: 'Akreditasi: Belum Terakreditasi')
  ];

  static List<ProfilProdi> ProfilMTI = [
    ProfilProdi(
        jurusan: 'S-2 Magister Teknologi InformasI',
        visi:
            'VISI: \nMenjadi Program Studi yang Unggul di Bidang Teknologi Informasi berbasis Sistem Cerdas yang Berkarakter Bela Negara\n\n MISI : \n\1. Menyelenggarakan pendidikan Magister Teknologi Informasi yang berkualitas dan berkarakter bela negara untuk menghasilkan lulusan yang bermutu dan berdaya saing di tingkat lokal, nasional, dan internasional.\n\2. Menyelenggarakan penelitian yang berkualitas untuk menghasilkan publikasi tingkat nasional, internasional, serta hak kekayaan atas intelektual, buku ajar, kebijakan dan teknologi yang berhasil guna dan berdaya guna dalam bidang Teknologi Informasi.\n\3. Menyelenggarakan pengabdian kepada masyarakat sebagai pengembangan dan penerapan teknologi informasi dengan mengedepankan sumber daya lokal melalui layanan implementasi, konsultasi, pendampingan, dan pelatihan. \n\4. Menjalin kerjasama dengan berbagai lembaga, baik di dalam maupun diluar negeri',
        akreditasi: 'Akreditasi: Baik')
  ];

  static List<Mapres> MapresIF = [
    Mapres(
      nama: 'Gilang Enggar Saputra',
      prodi: 'S-1 Teknik Informatika',
      penghargaan:
          'Juara 3 Kejuaraan Bola Voli "AIRLANGGA NATIONAL VOLLEYBALL CHAMPIONSHIP 2023"',
    ),
    Mapres(
      nama: 'Ayodya Fade Edfira',
      prodi: 'S-1 Teknik Informatika',
      penghargaan:
          'Juara 3 Kejuaraan Bola Voli "AIRLANGGA NATIONAL VOLLEYBALL CHAMPIONSHIP 2023"',
    ),
    Mapres(
      nama: 'Frederickus Juan Albert Saputra',
      prodi: 'S-1 Teknik Informatika',
      penghargaan:
          'Juara 3 Kejuaraan Bola Voli "AIRLANGGA NATIONAL VOLLEYBALL CHAMPIONSHIP 2023"',
    ),
  ];

  static List<Mapres> MapresSI = [
    Mapres(
      nama: 'Ilham Takbir Al Azhiim',
      prodi: 'S-1 Sistem Informasi',
      penghargaan:
          'Juara 1 Business Plan Competition Tingkat Nasional EBIFEST 2023',
    ),
    Mapres(
      nama: 'Muhammad Firza Pahlevi',
      prodi: 'S-1 Sistem Informasi',
      penghargaan: 'Juara 1 Indonesian Esport Championship',
    ),
    Mapres(
      nama: 'Rifda Nasywatul Affah, dkk',
      prodi: 'S-1 Sistem Informasi',
      penghargaan: 'Juara 1 Lomba UI/UX Technotainment UKM - FT UTM',
    ),
  ];

  static List<Mapres> MapresSADA = [
    Mapres(
      nama: 'Muhammad Jawat Ali AKbar, dkk',
      prodi: 'S-1 Sains Data',
      penghargaan: 'Silver Medal Voice Recognition For Summary',
    ),
    Mapres(
      nama: 'Ach. Arif Setiawan',
      prodi: 'S-1 Sains Data',
      penghargaan: 'Juara 1 Genbi Infographics Competition 2023',
    ),
    Mapres(
      nama: 'M. Ghinan Navsih',
      prodi: 'S-1 Sains Data',
      penghargaan: 'AWARDEE IISMA 2024',
    ),
  ];

  static List<Mapres> MapresBISDI = [
    Mapres(
      nama: 'BELUM ADA PRESTASI',
      prodi: '',
      penghargaan: '',
    ),
  ];

  static List<Mapres> MapresMAGISTER = [
    Mapres(
      nama: 'BELUM ADA PRESTASI',
      prodi: '',
      penghargaan: '',
    ),
  ];

  static List<Dosen> ListOfDosenForTIF = [
    Dosen(
      nama: 'Fetty Tri Anggraeny, S.Kom. M.Kom',
      jbtn: 'Koordinator Program Studi Informatika',
      image: 'img/fetty.png',
    ),
    Dosen(
      nama: 'Dr. Basuki Rahmat, S.Si. MT.',
      jbtn: 'Wakil Dekan III, Fakultas Ilmu Komputer',
      image: 'img/basuki.png',
    ),
    Dosen(
      nama: 'Intan Yuniar Purbasari, S.Kom. MSc.',
      jbtn: 'Dosen',
      image: 'img/intan.png',
    ),
    Dosen(
      nama: 'Budi Nugroho, S.Kom. M.Kom.',
      jbtn: 'Dosen',
      image: 'img/budi.png',
    ),
    Dosen(
      nama: 'Chrystia Aji Putra, S.Kom, M.T',
      jbtn: 'Dosen',
      image: 'img/aji.png',
    ),
    Dosen(
      nama: 'Eva Yulia Puspaningrum, S.Kom., M.Kom',
      jbtn: 'Dosen',
      image: 'img/eva.png',
    ),
    Dosen(
      nama: 'Faisal Muttaqin, S.Kom, M.T',
      jbtn: 'Dosen',
      image: 'img/faisal.jpg',
    ),
    Dosen(
      nama: 'Firza Prima Aditiawan, S.Kom., MTI',
      jbtn: 'Dosen',
      image: 'img/firza.png',
    ),
    Dosen(
      nama: 'Henni Endah Wahanani, ST. M.Kom.',
      jbtn: 'Dosen',
      image: 'img/henni.png',
    ),
    Dosen(
      nama: 'Mohammad Idhom, SP., S.Kom., MT.',
      jbtn: 'Wakil Dekan III, Fakultas Kedokteran',
      image: 'img/idhomif.png',
    ),
    Dosen(
      nama: 'Rizky Parlika, S.Kom, M.Kom.',
      jbtn: 'Dosen',
      image: 'img/rizky.jpg',
    ),
    Dosen(
      nama: 'Sugiarto, S.Kom., M.Kom',
      jbtn: 'Koorprodi Program Studi Bisnis Digital',
      image: 'img/sugiartoo.jpg',
    ),
    Dosen(
      nama: 'Wahyu Syaifullah JS., S.Kom. M.Kom.',
      jbtn: 'Dosen',
      image: 'img/wahyu.png',
    ),
    Dosen(
      nama: 'Achmad Junaidi, S.Kom, M.Kom',
      jbtn: 'Dosen',
      image: 'img/junaidi.png',
    ),
    Dosen(
      nama: 'Pratama Wirya Atmaja, S.Kom., M.Kom',
      jbtn: 'Dosen',
      image: 'img/pratama.png',
    ),
    Dosen(
      nama: 'Yisti Vita Via, S.ST. M.Kom.',
      jbtn: 'Dosen',
      image: 'img/yisti.png',
    ),
    Dosen(
      nama: 'Made Hanindia Prami Swari, S.Kom, M.Cs',
      jbtn: 'Wakil Dekan II, Fakultas Ilmu Komputer',
      image: 'img/made.png',
    ),
    Dosen(
      nama: 'Fawwaz Ali Akbar, S.Kom, M.Kom',
      jbtn: 'Dosen',
      image: 'img/fawwaz.png',
    ),
    Dosen(
      nama: 'Eka Prakarsa Mandyartha, S.T., M.Kom',
      jbtn: 'Dosen',
      image: 'img/eka.png',
    ),
    Dosen(
      nama: 'Dr. I Gede Susrama Mas Diyasa, ST., MT.',
      jbtn: 'Wakil Dekan I, Fakultas Ilmu Komputer',
      image: 'img/gede.png',
    ),
    Dosen(
      nama: 'Dr. Ir. Kartini, S.Kom. MT.',
      jbtn: 'Dosen',
      image: 'img/kartini.png',
    ),
    Dosen(
      nama: 'Retno Mumpuni, S.Kom., M.Sc',
      jbtn: 'Dosen',
      image: 'img/retno.png',
    ),
    Dosen(
      nama: 'Afina Lina Nurlaili, S.Kom., M.Kom.',
      jbtn: 'Dosen',
      image: 'img/afina.png',
    ),
    Dosen(
      nama: 'Hendra Maulana, S.Kom., M.Kom.',
      jbtn: 'Dosen',
      image: 'img/hendra.png',
    ),
    Dosen(
      nama: 'Agung Mustika Rizki, S.Kom., M.Kom.',
      jbtn: 'Dosen',
      image: 'img/agung.png',
    ),
    Dosen(
      nama: 'Andreas Nugroho Sihananto, S.Kom., M.Kom.',
      jbtn: 'Dosen',
      image: 'img/andreas.png',
    ),
    Dosen(
      nama: 'Dr. Eng. Ir. Anggraini Puspita Sari, ST., MT.',
      jbtn: 'Dosen',
      image: 'img/anggraini.png',
    ),
    Dosen(
      nama: 'M. Muharrom Al Haromainy, S.Kom., M.Kom',
      jbtn: 'Dosen',
      image: 'img/muharrom.png',
    ),
  ];

  static List<Dosen> ListOfDosenForSI = [
    Dosen(
      nama: 'AGUNG BRASTAMA PUTRA, S.Kom, M.Kom',
      jbtn: 'Koordinator Program Studi Sistem Informasi',
      image: 'img/agungsi.jpeg',
    ),
    Dosen(
      nama: 'NUR CAHYO WIBOWO, S.Kom, M.Kom',
      jbtn: 'Dosen',
      image: 'img/cahyo.jpg',
    ),
    Dosen(
      nama: 'PRISA MARGA KUSUMANTARA, S.Kom, M.Cs',
      jbtn: 'Dosen',
      image: 'img/prisa.jpg',
    ),
    Dosen(
      nama: 'MOHAMAD IRWAN AFANDI, ST, M.Sc.',
      jbtn: 'Dosen',
      image: 'img/irwan.jpg',
    ),
    Dosen(
      nama: 'DODDY RIDWANDONO, S.Kom. M.Kom',
      jbtn: 'Dosen',
      image: 'img/doddy.png',
    ),
    Dosen(
      nama: 'SITI MUKAROMAH, S.Kom, M.Kom',
      jbtn: ' Dosen',
      image: 'img/siti.jpg',
    ),
    Dosen(
      nama: 'RIZKA HADIWIYANTI, S.Kom, M.Kom, MBA',
      jbtn: ' Dosen',
      image: 'img/rizka.jpeg',
    ),
    Dosen(
      nama: 'EKA DYAR WAHYUNI, S.Kom, M.Kom',
      jbtn: ' Dosen',
      image: 'img/ekasi.jpg',
    ),
    Dosen(
      nama: 'AMALIA ANJANI ARIFIYANTI, S.Kom., M.Kom.',
      jbtn: ' Dosen',
      image: 'img/amalia.jpeg',
    ),
    Dosen(
      nama: 'TRI LATHIF MARDI SURYANTO, S.Kom, MT',
      jbtn: ' Dosen',
      image: 'img/lathif.jpg',
    ),
    Dosen(
      nama: 'ASIF FAROQI, S.Kom, M.Kom.',
      jbtn: ' Dosen',
      image: 'img/asif.jpg',
    ),
    Dosen(
      nama: 'ARISTA PRATAMA, S.Kom, M.Kom.',
      jbtn: ' Dosen',
      image: 'img/arista.jpg',
    ),
    Dosen(
      nama: 'Dr. Eng. AGUSSALIM, M.T.',
      jbtn: ' Dosen',
      image: 'img/agussalim.jpg',
    ),
    Dosen(
      nama: 'ERISTYA MAYA SAFITRI, S.Kom, M.Kom.',
      jbtn: ' Dosen',
      image: 'img/maya.jpg',
    ),
    Dosen(
      nama: 'ANITA WULANSARI, S.Kom, M.Kom.',
      jbtn: ' Dosen',
      image: 'img/anita.jpeg',
    ),
    Dosen(
      nama: 'DHIAN SATRIA YUDHA KARTIKA, S.Kom, M.Kom',
      jbtn: ' Dosen',
      image: 'img/dhian.jpg',
    ),
    Dosen(
      nama: 'SEFTIN FITRI ANA WATI, S.Kom, M.Kom',
      jbtn: ' Dosen',
      image: 'img/seftin.jpeg',
    ),
    Dosen(
      nama: 'ANINDO SAKA FITRI, S.Kom, M.Kom',
      jbtn: ' Dosen',
      image: 'img/anindo.jpg',
    ),
    Dosen(
      nama: 'ABDUL REZHA EFRAT NAJAF, S.Kom, M.Kom.',
      jbtn: ' Dosen',
      image: 'img/efrat.jpg',
    ),
    Dosen(
      nama: 'REISA PERMATASARI, S.T, M.Kom.',
      jbtn: ' Dosen',
      image: 'img/reisa.jpeg',
    ),
  ];

  static List<Dosen> ListOfDosenForSD = [
    Dosen(
      nama: 'Dr.Eng.Ir.Dwi Arman Prasetya.,ST.,MT.,IPU.',
      jbtn: 'Koordinator Program Studi Sains Data',
      image: 'img/arman.png',
    ),
    Dosen(
      nama: 'Dr. Ir. Mohammad Idhom, S.P., S.Kom., M.T.',
      jbtn: 'Dosen',
      image: 'img/idhomsd.jpg',
    ),
    Dosen(
      nama: 'Wahyu Syaifullah J. S., S.Kom., M.Kom',
      jbtn: 'Dosen',
      image: 'img/wahyusd.jpg',
    ),
    Dosen(
      nama: 'Tresna Maulana Fahrudin, S.ST., M.T.',
      jbtn: 'Dosen',
      image: 'img/tresna.jpg',
    ),
    Dosen(
      nama: 'Prismahardi Aji Riyantoko., S.Si, M.Si',
      jbtn: 'Dosen',
      image: 'img/prisma.jpg',
    ),
    Dosen(
      nama: 'Amri Muhaimin, S.Stat., M.Stat., M.S',
      jbtn: 'Dosen',
      image: 'img/amri.jpg',
    ),
    Dosen(
      nama: 'Trimono, S.Si., M.Si',
      jbtn: 'Dosen',
      image: 'img/trimono.jpg',
    ),
    Dosen(
      nama: 'Kartika Maulida H., S.Kom, M.Kom',
      jbtn: 'Dosen',
      image: 'img/kartika.jpg',
    ),
    Dosen(
      nama: 'Aviolla Terza Damaliana, S.Si, M.Stat',
      jbtn: 'Dosen',
      image: 'img/aviolla.jpg',
    ),
  ];

  static List<Dosen> ListOfDosenForBD = [
    Dosen(
      nama: 'Sugiarto, S.Kom., M.Kom',
      jbtn: 'Koordinator Program Studi Bisnis Digital',
      image: 'img/sugiartoo.jpg',
    ),
    Dosen(
      nama: 'Hendra Maulana, S.Kom, M.Kom',
      jbtn: 'Dosen',
      image: 'img/hendrabd.jpg',
    ),
    Dosen(
      nama: 'Dhian Satria Yudha Kartika, S.Kom, M.Kom',
      jbtn: 'Dosen',
      image: 'img/dhian.jpg',
    ),
    Dosen(
      nama: 'Pratama Wirya Atmaja, S.Kom, M.Kom',
      jbtn: 'Dosen',
      image: 'img/pratama.png',
    ),
    Dosen(
      nama: 'Letda KC Taufikurrahman, S.Pd., M.Pd',
      jbtn: 'Dosen',
      image: 'img/taufik.jpg',
    ),
  ];

  static List<Dosen> ListOfDosenForMTI = [
    Dosen(
      nama: 'Dr. Eng. Agussalim, MT.',
      jbtn: 'Koordinator Program Studi Magister Teknologi Informasi',
      image: 'img/agussalim.jpg',
    ),
    Dosen(
      nama: 'Dr. Basuki Rahmat, S.Si., MT',
      jbtn: 'Dosen',
      image: 'img/basuki.png',
    ),
    Dosen(
      nama: 'Dr. I Gede Susrama Mas Diyasa, ST., MT., IPU',
      jbtn: 'Dosen',
      image: 'img/gede.png',
    ),
    Dosen(
      nama: 'Dr. Rr. Ani Dijah Rahajoe, ST, M.Cs.',
      jbtn: 'Dosen',
      image: 'img/ani.png',
    ),
    Dosen(
      nama: 'Dr. Eng. Ir. Dwi Arman Prasetya, S.T., M.T., IPU',
      jbtn: 'Dosen',
      image: 'img/arman.png',
    ),
    Dosen(
      nama: 'Dr. Mohammad Idhom, S.Kom., M.Kom',
      jbtn: 'Dosen',
      image: 'img/idhommti.jpeg',
    ),
    Dosen(
      nama: 'Dr. Eng. Anggraini Puspita Sari, ST., MT',
      jbtn: 'Dosen',
      image: 'img/anggraini.png',
    ),
  ];

  static List<Prodi> samples = [
    Prodi(
      title: "S-1 Teknik Informatika",
      image: 'img/tifa.png',
      description:
          "Selamat datang di Program Studi Informatika UPN Veteran Jawa Timur! Kami, di bawah koordinasi saya, Fetty Tri Anggraeny, S.Kom., M.Kom., dengan antusiasme menjembatani pendidikan dan teknologi informasi. Kami berkomitmen untuk memberikan pendidikan berkualitas tinggi dan menciptakan lingkungan penelitian yang inspiratif. Terima kasih telah mengunjungi situs web kami, dan kami berharap Anda akan menemukan segala informasi yang Anda butuhkan untuk menjelajahi peluang pendidikan dan penelitian yang kami tawarkan.",
      websiteUrl: "https://if.upnjatim.ac.id/",
      email: 'informatika@upnjatim.ac.id',
      listDosen: ListOfDosenForTIF,
      pp: 'img/fetty.png',
      listmapres: MapresIF,
      listprofil: ProfilIF,
    ),
    Prodi(
      title: "S-1 Sistem Informasi",
      image: 'img/sifo.png',
      description:
          "Selamat belajar dan berlatih kepada seluruh mahasiswa sistem informasi. Dahulukan akhlak mulia sebelum ilmu, supaya keberkahan senantiasa menyertaimu. Ingatlah selalu bahwa Allah SWT, atas kehendak-Nya telah memberikan kesempatan utk bisa belajar di kampus dan program studi tercinta ini. Dan ingatlah pula, kedua orang tua yg telah mengorbankan dan memberikan apa yg beliau berdua punya untuk membiayai kuliah kalian. Torehkan karya dan prestasi yang akan membuat mereka tersenyum bangga. Semoga kalian akan dapatkan apa yg dicita-citakan nanti. Amin ya Robbal alamin.",
      websiteUrl: "https://sisfo.upnjatim.ac.id/",
      email: 'piasifo@upnjatim.ac.id',
      listDosen: ListOfDosenForSI,
      pp: 'img/agungsi.jpeg',
      listmapres: MapresSI,
      listprofil: ProfilSI,
    ),
    Prodi(
      title: "S-1 Sains Data",
      image: 'img/sada.png',
      description:
          "Sains Data merupakan ilmu terapan yang secara khusus mempelajari dan menganalisis data. Fungsi ilmu Sains Data dalam era digital dan big data saat ini cukup penting karena begitu melimpahnya data yang tersedia. Data menyediakan informasi yang dapat menentukan keputusan penting dalam berbagai sektor industri. Sains Data adalah ilmu multidisipliner yang dapat diterapkan di berbagai bidang. Sains Data dapat diterapkan di bidang kesehatan, pemerintahan, bisnis, perbankan, keuangan, manufaktur, pemasaran, dan lain-lain.",
      websiteUrl: "https://sada.upnjatim.ac.id/",
      email: 'ds@upnjatim.ac.id',
      listDosen: ListOfDosenForSD,
      pp: 'img/arman.png',
      listmapres: MapresSADA,
      listprofil: ProfilSD,
    ),
    Prodi(
      title: "S-1 Bisnis Digital",
      image: 'img/bisdig.png',
      description:
          "Teknologi Bisnis Digital merupakan ilmu terapan yang secara khusus mempelajari dan menganalisis bisnis melalui teknologi Informasi sebagai dasar dalam pengembangan dan menemukan bisnis secara digital. Fungsi ilmu Teknologi Bisnis Digital dalam era digital dan big data saat ini cukup penting karena begitu melimpahnya data yang tersedia. Data menyediakan informasi yang dapat menentukan keputusan penting dalam berbagai sektor industri.",
      websiteUrl: "https://bisdi.upnjatim.ac.id/",
      email: 'bisdi@upnjatim.ac.id',
      listDosen: ListOfDosenForBD,
      pp: 'img/sugiartoo.jpg',
      listmapres: MapresBISDI,
      listprofil: ProfilBD,
    ),
    Prodi(
      title: "S-2 Magister Teknologi Informasi",
      image: 'img/magister.png',
      description:
          "Magister Teknologi Informasi merupakan satu-satunya jenjang S-2 yang berada di Fakultas Ilmu Komputer. Dengan 3 peminatan yaitu Intelligent Sistem, Cybersecurity & Networking, dan IT Strategic & Insfrastructure Management",
      websiteUrl: "https://mti.upnjatim.ac.id/",
      email: 'mti@upnjatim.ac.id',
      listDosen: ListOfDosenForMTI,
      pp: 'img/agussalim.jpg',
      listmapres: MapresMAGISTER,
      listprofil: ProfilMTI,
    ),
  ];
}