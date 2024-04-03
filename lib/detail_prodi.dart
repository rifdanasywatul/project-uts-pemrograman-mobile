import 'package:fasilkom/listprofil.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fasilkom/list_dosen.dart';
import 'package:fasilkom/prodi.dart';
import 'package:fasilkom/listmapres.dart';

class ProdiDetailPage extends StatelessWidget {
  final Prodi prodi;

  const ProdiDetailPage({Key? key, required this.prodi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'img/logoupn.png',
                height: 45,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  prodi.title,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'UPN "Veteran" Jawa Timur',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                prodi.pp,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              prodi.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            padding: EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(5, (index) {
              return Card(
                elevation: 3,
                margin: EdgeInsets.zero,
                child: GestureDetector(
                  onTap: () {
                    _handleMenuTap(context, index);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _getMenuIcon(index),
                      SizedBox(height: 8),
                      Text(
                        _getMenuTitle(index),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  String _getMenuTitle(int index) {
    switch (index) {
      case 0:
        return 'Profil';
      case 1:
        return 'Dosen';
      case 2:
        return 'Link Website';
      case 3:
        return 'Link Email';
      case 4:
        return 'Mahasiswa Berprestasi';
      default:
        return '';
    }
  }

  void _handleMenuTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListProfil(prodi: prodi),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListDosenPage(prodi: prodi),
          ),
        );
        break;
      case 2:
        _launchURL(prodi.websiteUrl);
        break;
      case 3:
        _launchEmail(prodi.email);
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListMapres(prodi: prodi),
          ),
        );
        break;
    }
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchEmail(String email) async {
    final Uri _emailLaunchUri = Uri(scheme: 'mailto', path: email);
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  Widget _getMenuIcon(int index) {
    switch (index) {
      case 0:
        return Icon(Icons.info, size: 48);
      case 1:
        return Icon(Icons.person, size: 48);
      case 2:
        return Icon(Icons.link, size: 48);
      case 3:
        return Icon(Icons.link, size: 48);
      case 4:
        return Icon(Icons.star, size: 48);
      default:
        return Icon(Icons.error, size: 48);
    }
  }
}