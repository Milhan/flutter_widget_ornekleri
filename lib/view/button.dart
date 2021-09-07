import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  Button({Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Elevated Buttoon");
              },
              child: Text(
                "Elevated Button",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            TextButton(onPressed: () {}, child: Text("Text Button"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Floatingn",
        child: Icon(Icons.adb),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.amber,
      ),

      /* floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Başlık"),
        icon: Icon(Icons.adb),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.amber,
      ),*/
    );
  }
}
