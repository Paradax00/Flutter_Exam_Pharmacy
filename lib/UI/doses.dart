import 'package:flutter/material.dart';

class Dose extends StatefulWidget {
  const Dose({Key? key}) : super(key: key);

  @override
  State<Dose> createState() => _DoseState();
}

class _DoseState extends State<Dose> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Doses Fragment'));
  }
}