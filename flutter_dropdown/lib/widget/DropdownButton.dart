import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Menambahkan Dropdown Widget
class DropdownButton extends StatelessWidget {
  const DropdownButton({
    Key key,
    @required this.myController,
  }) : super(key: key);

  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      keyboardType: TextInputType.number,
      decoration:
          InputDecoration(hintText: 'Masukkan Suhu Dalam Celcius'),
    );
  }
}