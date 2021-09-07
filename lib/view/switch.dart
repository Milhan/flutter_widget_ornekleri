import 'package:flutter/material.dart';

class SwitchKullainimi extends StatefulWidget {
  const SwitchKullainimi({Key? key}) : super(key: key);

  @override
  _SwitchKullainimiState createState() => _SwitchKullainimiState();
}

class _SwitchKullainimiState extends State<SwitchKullainimi> {
  bool switchKontrol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: switchKontrol,
              activeTrackColor: Colors.lightGreen,
              activeColor: Colors.green,
              inactiveTrackColor: Colors.amber,
              inactiveThumbColor: Colors.red,
              onChanged: (veri) {
                setState(() {
                  switchKontrol = veri;
                });
                print("Swithch: ${veri}");
              },
            )
          ],
        ),
      ),
    );
  }
}
