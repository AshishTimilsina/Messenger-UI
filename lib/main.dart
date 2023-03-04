import 'package:flutter/material.dart';
import 'package:messengerui/screens/main_screen.dart';

void main() {
  runApp(const Homeapp());
}

class Homeapp extends StatelessWidget {
  const Homeapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lightBlue,
      ),
      home: const MainScreen(),
    );
  }
}
