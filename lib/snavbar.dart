import 'package:deadend/contactus.dart';
import 'package:deadend/login.dart';
import 'package:deadend/sanimalissues.dart';
import 'package:deadend/shome.dart';
import 'package:flutter/material.dart';
int currn=0;
class ServNavBar extends StatefulWidget {
  const ServNavBar({super.key});
  @override
  State<ServNavBar> createState() => _ServNavBarState();
}

class _ServNavBarState extends State<ServNavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,size: 35))),
          const UserAccountsDrawerHeader(
              accountName: Text("Hello, \nAccount Name",style: TextStyle(color:Color.fromRGBO(51, 51, 51, 1),fontSize: 20)),
              accountEmail: Text("+91 9876543210 ",style: TextStyle(color:Color.fromRGBO(51, 51, 51, 1))),
              decoration: BoxDecoration(color: Colors.white),
              ),
              
          ListTile(
            title: Text("Home",style: TextStyle(color: currn==0?Colors.white:Colors.black)),
            tileColor: currn==0?Color.fromRGBO(51, 51, 51, 1):Colors.white,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const ServHome()));
              setState(() {
                currn=0;
              });
            },
            
          ),
          ListTile(
            title: Text("Animal Issues",style: TextStyle(color: currn==1?Colors.white:Colors.black)),
            tileColor: currn==1?Color.fromRGBO(51, 51, 51, 1):Colors.white,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const ServAnimalIssues()));
              setState(() {
                currn=1;
              });
            },
          ),
          ListTile(
            title: Text("Contact Us",style: TextStyle(color: currn==2?Colors.white:Colors.black)),
            tileColor: currn==2?Color.fromRGBO(51, 51, 51, 1):Colors.white,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const ContactUs()));
              setState(() {
                currn=2;
              });
            },
          ),
          ListTile(
            title: Text("LogOut",style: TextStyle(color: currn==3?Colors.white:Colors.black)),
            tileColor: currn==3?Color.fromRGBO(51, 51, 51, 1):Colors.white,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Login()));
              setState(() {
                currn=3;
              });
            },
          ),
        ],
      ),
    );
  }
}
