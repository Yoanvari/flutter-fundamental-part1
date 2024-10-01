import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key, required this.labelText}); // Tambahkan parameter labelText

  final String labelText; // Definisikan variabel labelText

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText, // Gunakan labelText yang diterima
        ),
      ),
    );
  }
}
