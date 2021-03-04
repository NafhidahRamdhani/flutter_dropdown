import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

// Mengeset Parameter value pada DropdownButton
class _MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  final myController = TextEditingController();
  String _newValue = "Kelvin";
  double _result = 0;
  _konvert() {
    setState(() {
      _inputUser = double.parse(myController.text);
      if (_newValue == "Kelvin")
        _result = _inputUser + 273;
      else
        _result = (4 / 5) * _inputUser;
    });
  }

  List<String> listViewItem = List<String>();

// Menggunakan Map pada DropDownButton
  var listItem = ["Kelvin", "Reamur"];

  void dispose() {
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konverter Suhu'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hasil',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      _result.toStringAsFixed(1),
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: _konvert,
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('Konversi Suhu'),
                ),
              ),
              Container(
                child: Text(''),
              ),
              Expanded(
                child: ListView(
                  children: 
                    listViewItem.map((String value) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                        value,
                        style: TextStyle(fontSize: 15),
                      ));
                    }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

