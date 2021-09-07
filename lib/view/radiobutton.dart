import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RadioButton extends StatefulWidget {
  RadioButton({Key? key}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int radioDeger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
                title: Text("Galatasaray"),
                value: 1,
                activeColor: Colors.green,
                groupValue: radioDeger,
                onChanged: (int? veri) {
                  setState(() {
                    radioDeger = veri!;
                  });
                  print("Galatasaray Seçildi");
                }),
            RadioListTile(
                title: Text("Fenerbahçe"),
                value: 2,
                activeColor: Colors.green,
                groupValue: radioDeger,
                onChanged: (int? veri) {
                  setState(() {
                    radioDeger = veri!;
                  });
                  print("Fenerbahçe Seçildi");
                }),
          ],
        ),
      ),
    );
  }
}
