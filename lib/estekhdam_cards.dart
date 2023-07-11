import 'package:flutter/material.dart';

class EstekhdamCards extends StatelessWidget {
  final String text;
  final void Function(String?)? onSaved; // Updated type

  const EstekhdamCards({Key? key, required this.text, this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(size.height * 0.02),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: text,
        ),
        onSaved: onSaved, // Pass the updated onSaved callback
      ),
    );
  }
}
