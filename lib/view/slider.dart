import 'package:flutter/material.dart';

class SliderKullanimi extends StatefulWidget {
  const SliderKullanimi({Key? key}) : super(key: key);

  @override
  _SliderKullanimiState createState() => _SliderKullanimiState();
}

class _SliderKullanimiState extends State<SliderKullanimi> {
  bool switchKontrol = false;
  @override
  Widget build(BuildContext context) {
    double ilerleme = 10;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sonuç : ${ilerleme.toInt()}"),
            Slider(
                max: 100,
                min: 0,
                value: ilerleme,
                label: "$ilerleme",
                onChanged: (double? i) {
                  setState(() {
                    ilerleme = i!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
