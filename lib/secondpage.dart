import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("second page"),
      ),
      body: const Center(
        child: Text("Sry Ammu",
        style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.black),),
      ),
    );
  }
}