import 'package:flutter/material.dart';

class TextTextFliedButton extends StatefulWidget {
  const TextTextFliedButton({Key? key}) : super(key: key);

  @override
  _TextTextFliedButtonState createState() => _TextTextFliedButtonState();
}

class _TextTextFliedButtonState extends State<TextTextFliedButton> {
  var tfcontroller = TextEditingController();
  String? alinanVeri;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tfcontroller,
              cursorColor: Colors.red,
              maxLength: 11,
              keyboardType: TextInputType.number,
              // şifre alanı için
              obscureText: true,
              textAlign: TextAlign.center,

              style: TextStyle(
                color: Colors.deepOrange,
              ),
              decoration: InputDecoration(
                  hintText: "Yazın Lütfen",
                  labelText: "Kimlik Numurası",
                  icon: Icon(Icons.add),
                  prefixIcon: Icon(Icons.ac_unit_outlined)),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  alinanVeri = tfcontroller.text;
                });
              },
              child: Text("Yazıyı Al")),
          Text("Gelen Yazı: $alinanVeri"),
        ],
      )),
    );
  }
}
