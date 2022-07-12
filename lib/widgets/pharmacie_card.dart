import 'package:flutter/material.dart';

class PharmacieCard extends StatelessWidget {
  final String _image;
  final String _title;
  final String _adresse;
  PharmacieCard(this._image, this._title, this._adresse);
  //const PharmacieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // ignore: avoid_print
      onTap: () => {print("Data Taped ! ")},
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              child: Image.asset(
                _image,
                // scale: 0.1,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Titre : ' + _title,
                  textScaleFactor: 2,
                  // style: TextStyle(fontSize: 36),
                )
              ],
            ),
            Row(
              children: [
                Text('Adresse : ' + _adresse),
              ],
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
