import 'package:flutter/material.dart';
import 'package:patientapp/pages/home.dart';

void main()
{
  runApp(login());
}
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Menupg(),
    );
  }
}
