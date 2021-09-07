import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProgreesBarKullanimi extends StatefulWidget {
  ProgreesBarKullanimi({Key? key}) : super(key: key);

  @override
  _ProgreesBarKullanimiState createState() => _ProgreesBarKullanimiState();
}

class _ProgreesBarKullanimiState extends State<ProgreesBarKullanimi> {
  bool progressBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: progressBar,
              child: CircularProgressIndicator(
                backgroundColor: Colors.amber,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    progressBar = true;
                  });
                },
                child: Text("Başla")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    progressBar = false;
                  });
                },
                child: Text("Durdur")),
          ],
        ),
      ),
    );
  }
}
