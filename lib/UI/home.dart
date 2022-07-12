import 'package:exam100722/UI/certificat.dart';
import 'package:exam100722/UI/doses.dart';
import 'package:exam100722/UI/drawer.dart';
import 'package:exam100722/UI/pharmacie.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Evax'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.health_and_safety),
                  text: "Mes Doses",
                ),
                Tab(
                  icon: Icon(Icons.local_pharmacy),
                  text: "Pharmacies",
                ),
                Tab(
                  icon: Icon(Icons.qr_code),
                  text: "Certificats",
                ),
              ],
            ),
          ),
          drawer: const CustomDrawer(),
          body: TabBarView(
            children: [const Dose(), Pharmacie(), const Certificat()],
          ),
        ));
  }
}
