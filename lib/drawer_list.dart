import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:nahal_it/Screens/Contact_us.dart';
import 'package:nahal_it/Screens/about_us.dart';
import 'package:nahal_it/Screens/login_screen.dart';

import 'Screens/profile_screen.dart';
class Drawer_list extends StatefulWidget {

  final IconData icon;
  final String text;
  final bool subset ;
  final Widget page;

  const Drawer_list({ required this.icon, required this.text , required this.subset, required this.page});

  @override
  State<Drawer_list> createState() => _Drawer_listState();
}



class _Drawer_listState extends State<Drawer_list> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        ListTile(
          visualDensity: VisualDensity(vertical: 4),
          onTap: (){
      setState(() {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => widget.page
        ),
        );
      },
      );
          },
          leading: Icon(
            widget.icon,
            color: Color(0xff2e5c66),
            size: size.width*0.08,
          ),
          title:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: TextStyle(
                    fontSize: size.width*0.05
                ),
              ),
               if(widget.subset) Icon(Icons.arrow_forward_ios_outlined ,color: Colors.black54,) ,
            ],
          ),

        ),
        Container(
          color: Colors.green.shade100,
          width: size.width,
          height: 0.75,
        )
      ],
    );

  }
}
class ExpansionList extends StatelessWidget {

final String title;
final IconData icon;

  const ExpansionList({ required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        ExpansionTile(
          title: Text(title , style: TextStyle(
              fontSize: size.width*0.05
          ),),
          leading: Icon(icon ,
            color: Color(0xff2e5c66),
            size: size.width*0.08,
          ), //add icon
          childrenPadding: EdgeInsets.only(right:size.width*0.03),
         //children padding
          children: [
            ListTile(
              title: Text("تماس با ما"),
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Contact_us()
                ),
                );
                //action on press
              },
            ),
            ListTile(
              title: Text("درباره ما"),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About_Us()
                ),
                ); //action on press
              },
            ),
            ListTile(
              title: Text("معرفی نهال"),
              onTap: (){
                //action on press
              },
            ),
            //more child menu
          ],
        ),
        Container(
          color: Colors.green.shade100,
          width: size.width,
          height: 0.75,
        )
      ],
    );
  }
}

