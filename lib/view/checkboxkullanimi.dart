import 'package:flutter/material.dart';

class CheckBoxKullanimi extends StatefulWidget {
  const CheckBoxKullanimi({Key? key}) : super(key: key);

  @override
  _CheckBoxKullanimiState createState() => _CheckBoxKullanimiState();
}

class _CheckBoxKullanimiState extends State<CheckBoxKullanimi> {
  bool kotlinDurum = false;
  bool dartDurum = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: Text("Kotlin"),
              value: kotlinDurum,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? veri) {
                setState(() {
                  kotlinDurum = veri!;
                });
              },
            ),
            CheckboxListTile(
              activeColor: Colors.green,
              autofocus: true,
              title: Text("Dart"),
              value: dartDurum,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? veri) {
                setState(() {
                  dartDurum = veri!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
