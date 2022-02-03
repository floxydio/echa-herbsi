import 'package:flutter/material.dart';
import 'package:uher_nim/tipe_a/screen/detail_biodata.dart';
import 'package:uher_nim/tipe_a/widget/custom_textfield.dart';

class Biodata extends StatelessWidget {
  const Biodata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nim = TextEditingController();
    TextEditingController nama = TextEditingController();
    TextEditingController email = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text("FORM BIODATA")),
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
                child: Column(children: [
          const Text("BIODATA",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Input(
            controller: nim,
            label: const Text("NIM"),
          ),
          Input(
            controller: nama,
            label: const Text("Nama"),
          ),
          Input(
            controller: email,
            label: const Text("Email"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Detail(
                              nim: nim.text,
                              nama: nama.text,
                              email: email.text,
                            )));
              },
              child: const Text("Simpan"))
        ]))),
      ),
    );
  }
}
