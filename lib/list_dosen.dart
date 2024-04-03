import 'package:flutter/material.dart';
import 'package:fasilkom/prodi.dart';

class ListDosenPage extends StatelessWidget {
  final Prodi prodi;

  const ListDosenPage({Key? key, required this.prodi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Dosen - ${prodi.title}'),
      ),
      body: ListView.builder(
        itemCount: prodi.listDosen.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(prodi.listDosen[index].image),
            ),
            title: Text(prodi.listDosen[index].nama),
            subtitle: Text(prodi.listDosen[index].jbtn),
          );
        },
      ),
    );
  }
}
