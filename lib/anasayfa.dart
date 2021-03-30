import 'package:colorboxes/colorBoxes.dart';
import 'package:colorboxes/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.popUntil(
              context, (r) => r.settings.name == Routes.secondPage);
          Navigator.pushNamed(context, Routes.secondPage);
        },
      ),
      body: Container(),
    );
  }
}
