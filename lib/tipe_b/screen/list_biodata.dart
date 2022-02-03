import 'package:flutter/material.dart';
import 'package:uher_nim/tipe_b/detail/detail_1.dart';
import 'package:uher_nim/tipe_b/detail/detail_2.dart';
import 'package:uher_nim/tipe_b/detail/detail_3.dart';

class ListBiodata extends StatelessWidget {
  const ListBiodata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Mahasiswa")),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(children: [
            Card(
              child: ListTile(
                  title: const Text("12181001"),
                  subtitle: const Text("Jhony"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Detail1()));
                  }),
            ),
            Card(
              child: ListTile(
                  title: const Text("12181002"),
                  subtitle: const Text("Andi"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Detail2()));
                  }),
            ),
            Card(
              child: ListTile(
                  title: const Text("12181003"),
                  subtitle: const Text("Santi"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Detail3()));
                  }),
            ),
          ]),
        )),
      ),
    );
  }
}
