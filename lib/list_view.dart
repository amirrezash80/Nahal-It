import 'package:flutter/material.dart';
import 'package:scaled_list/scaled_list.dart';

import 'my_lists.dart';

class MyListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ScaledList(
      itemCount: categories.length,
      itemColor: (index) {
        return kMixedColors[index % kMixedColors.length];
      },
      itemBuilder: (index, selectedIndex) {
        final category = categories[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: selectedIndex == index ? size.height*0.2 : size.height*0.10,
              child: Image.asset(category.image , fit: BoxFit.fill,)
            ),
            SizedBox(height: size.height*.004),
            Text(
              category.name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: selectedIndex == index ? 25 : 20),
            )
          ],
        );
      },
    );

  }
}
