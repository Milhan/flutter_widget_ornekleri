import 'package:flutter/material.dart';
import 'package:flutter_widget_ornekleri/view/button.dart';
import 'package:flutter_widget_ornekleri/view/checkboxkullanimi.dart';
import 'package:flutter_widget_ornekleri/view/progreesbarkullanimi.dart';
import 'package:flutter_widget_ornekleri/view/radiobutton.dart';
import 'package:flutter_widget_ornekleri/view/slider.dart';
import 'package:flutter_widget_ornekleri/view/switch.dart';
import 'package:flutter_widget_ornekleri/view/text_textfield_button.dart';
import 'package:flutter_widget_ornekleri/view/tooglebutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgetlar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Widgetlar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TextTextFliedButton()));
                },
                icon: Icon(Icons.bus_alert),
                label: Text("Text- Texfiled-Button Kullanımı")),
            SizedBox(height: 10),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Button()));
                },
                icon: Icon(Icons.ac_unit),
                label: Text("Elevated Button Kulanımı")),
            SizedBox(height: 10),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SwitchKullainimi()));
                },
                icon: Icon(Icons.access_alarm),
                label: Text("Switch  Kulanımı")),
            SizedBox(height: 10),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TogglleKullainimi()));
                },
                icon: Icon(Icons.smart_button),
                label: Text("Toogle  Kulanımı")),
            SizedBox(height: 10),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckBoxKullanimi()));
                },
                icon: Icon(Icons.smart_button),
                label: Text("CheckBoxList Kulanımı")),
            SizedBox(height: 10),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RadioButton()));
                },
                icon: Icon(Icons.adb),
                label: Text("Radio Button Kulanımı")),
            SizedBox(height: 10),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProgreesBarKullanimi()));
                },
                icon: Icon(Icons.portable_wifi_off_sharp),
                label: Text("Progrees Bar Kulanımı")),
            SizedBox(height: 10),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SliderKullanimi()));
                },
                icon: Icon(Icons.slideshow_rounded),
                label: Text("Slider  Kulanımı")),
          ],
        ),
      ),
    );
  }
}
