import 'package:exam100722/widgets/pharmacie_card.dart';
import 'package:flutter/material.dart';

class Pharmacie extends StatefulWidget {
  //var
  String fetchAllURL = "localhost:9090/api/pharmacies/list";
  // final String _baseImageURL = "http://localhost:9090/img/";

  Pharmacie();

  @override
  State<Pharmacie> createState() => _PharmacieState();
}

class _PharmacieState extends State<Pharmacie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Expanded(
          child: ListView(
        children: [
          PharmacieCard("assets/img/logo.png", "_title", "_adresse"),
        ],
      )),
    );
  }
}
