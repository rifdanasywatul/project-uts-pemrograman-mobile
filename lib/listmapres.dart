import 'package:flutter/material.dart';
import 'package:fasilkom/prodi.dart';

class ListMapres extends StatelessWidget {
  final Prodi prodi;

  const ListMapres({Key? key, required this.prodi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa Berprestasi - ${prodi.title}'),
      ),
      body: ListView.builder(
        itemCount: prodi.listmapres.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(prodi.listmapres[index].nama),
            subtitle: Text(prodi.listmapres[index].penghargaan),
          );
        },
      ),
    );
  }
}
