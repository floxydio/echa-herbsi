import 'package:flutter/material.dart';

class Detail2 extends StatelessWidget {
  const Detail2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Biodata")),
      body: SafeArea(
        child: SingleChildScrollView(
            child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 120,
          child: Card(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              title: const Text.rich(TextSpan(
                  text: "Nim: ", children: [TextSpan(text: "12181002")])),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text.rich(TextSpan(
                        text: "Nama: ", children: [TextSpan(text: "Andi")])),
                    SizedBox(height: 5),
                    Text.rich(TextSpan(
                        text: "Email: ",
                        children: [TextSpan(text: "andi_12181002@bsi.ac.id")])),
                  ],
                ),
              ),
            ),
          )),
        )),
      ),
    );
  }
}
