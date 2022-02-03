import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? label;
  const Input({Key? key, this.controller, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      child: TextFormField(
        controller: controller,
        decoration:
            InputDecoration(label: label, border: const OutlineInputBorder()),
      ),
    );
  }
}
