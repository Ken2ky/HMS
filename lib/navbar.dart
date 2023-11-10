import 'package:deadend/animalissues.dart';
import 'package:deadend/contactus.dart';
import 'package:deadend/home.dart';
import 'package:deadend/login.dart';
import 'package:deadend/settings.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              accountName: Text("Account Name"),
              accountEmail: Text("+91 9876543210 ")),
          ListTile(
            title: const Text("Home"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Home()));
            },
          ),
          ListTile(
            title: const Text("Animal Issues"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const AnimalIssues()));
            },
          ),
          ListTile(
            title: const Text("Settings"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Settings()));
            },
          ),
          ListTile(
            title: const Text("Contact Us"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const ContactUs()));
            },
          ),
          ListTile(
            title: const Text("LogOut"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Login()));
            },
          ),
        ],
      ),
    );
  }
}
