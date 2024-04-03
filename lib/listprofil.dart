import 'package:flutter/material.dart';
import 'package:fasilkom/prodi.dart';

class ListProfil extends StatelessWidget {
  final Prodi prodi;

  const ListProfil({Key? key, required this.prodi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil - ${prodi.title}'),
      ),
      body: ListView.builder(
        itemCount: prodi.listprofil.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(prodi.listprofil[index].akreditasi),
            subtitle: Text(prodi.listprofil[index].visi),
          );
        },
      ),
    );
  }
}
