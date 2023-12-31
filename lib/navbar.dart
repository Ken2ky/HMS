import 'package:deadend/animalissues.dart';
import 'package:deadend/contactus.dart';
import 'package:deadend/home.dart';
import 'package:deadend/login.dart';
import 'package:flutter/material.dart';
int curr=0;
class NavBar extends StatefulWidget {
  const NavBar({super.key});
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
            title: Text("Home",style: TextStyle(color: curr==0?Colors.white:Colors.black)),
            tileColor: curr==0?Color.fromRGBO(51, 51, 51, 1):Colors.white,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Home()));
              setState(() {
                curr=0;
              });
            },
            
          ),
          ListTile(
            title: Text("Animal Issues",style: TextStyle(color: curr==1?Colors.white:Colors.black)),
            tileColor: curr==1?Color.fromRGBO(51, 51, 51, 1):Colors.white,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const AnimalIssues()));
              setState(() {
                curr=1;
              });
            },
          ),
          ListTile(
            title: Text("Contact Us",style: TextStyle(color: curr==2?Colors.white:Colors.black)),
            tileColor: curr==2?Color.fromRGBO(51, 51, 51, 1):Colors.white,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const ContactUs()));
              setState(() {
                curr=2;
              });
            },
          ),
          ListTile(
            title: Text("LogOut",style: TextStyle(color: curr==3?Colors.white:Colors.black)),
            tileColor: curr==3?Color.fromRGBO(51, 51, 51, 1):Colors.white,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Login()));
              setState(() {
                curr=3;
              });
            },
          ),
        ],
      ),
    );
  }
}
