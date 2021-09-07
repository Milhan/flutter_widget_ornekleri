import 'package:flutter/material.dart';

class TogglleKullainimi extends StatefulWidget {
  const TogglleKullainimi({Key? key}) : super(key: key);

  @override
  _TogglleKullainimiState createState() => _TogglleKullainimiState();
}

class _TogglleKullainimiState extends State<TogglleKullainimi> {
  var toggleDurumlari = [false, true, false];
  int secilenToggleDeger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleButtons(
              children: [
                Icon(Icons.looks_one),
                Icon(Icons.looks_two),
                Icon(Icons.looks_3)
              ],
              isSelected: toggleDurumlari,
              fillColor: Colors.amberAccent,
              color: Colors.pink,
              selectedColor: Colors.deepOrange,
              onPressed: (int secilenIndex) {
                secilenToggleDeger = secilenIndex;
                print("${secilenToggleDeger}. toggle seçildi");
                setState(() {
                  toggleDurumlari[secilenIndex] =
                      !toggleDurumlari[secilenIndex];
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
