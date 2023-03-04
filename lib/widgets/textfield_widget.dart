import 'package:flutter/material.dart';

class Textfields extends StatelessWidget {
  const Textfields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black12,
        labelText: 'Search',
        prefixIcon: const Icon(
          Icons.search,
          size: 30,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
