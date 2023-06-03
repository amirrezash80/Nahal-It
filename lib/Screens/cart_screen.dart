import 'package:flutter/material.dart';

class Cart_Screen extends StatelessWidget {

  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  final List<int> colorCodes = <int>[600 , 400 , 300 , 100];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.shopping_cart , color: Color(0xff2e5c66),),
            Text("سبد خرید"),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
    return Container(
    width: size.width*0.3,
    height: size.height*0.2,
    color: Colors.lightGreen[colorCodes[index]],
    child: Center(child: Text('Entry ${entries[index]}')),
    );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

