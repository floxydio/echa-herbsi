import 'package:flutter/material.dart';
import 'package:uher_nim/tipe_a/screen/form_biodata.dart';

class Detail extends StatelessWidget {
  final String? nim;
  final String? nama;
  final String? email;
  const Detail({Key? key, this.nim, this.nama, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Biodata")),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  title: Text.rich(TextSpan(text: "Nim: ", children: [
                    TextSpan(text: nim!.isNotEmpty ? nim! : "Tidak di isi")
                  ])),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(TextSpan(text: "Nama: ", children: [
                          TextSpan(
                              text: nama!.isNotEmpty ? nama! : "Tidak di isi")
                        ])),
                        const SizedBox(height: 5),
                        Text.rich(TextSpan(text: "Email: ", children: [
                          TextSpan(
                              text: email!.isNotEmpty ? email! : "Tidak di isi")
                        ])),
                      ],
                    ),
                  ),
                ),
              )),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Biodata()));
                },
                child: const Text("Kembali"))
          ],
        )),
      ),
    );
  }
}
