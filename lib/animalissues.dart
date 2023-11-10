import 'package:deadend/navbar.dart';
import 'package:flutter/material.dart';

class AnimalIssues extends StatefulWidget {
  const AnimalIssues({super.key});

  @override
  State<AnimalIssues> createState() => _AnimalIssuesState();
}

class _AnimalIssuesState extends State<AnimalIssues> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('Animal Issues'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(4, 139, 168, 0.8),
      ),
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(w * 0.05),
          child: const Column(
            children: [
              Issue(),
              Issue(),
              Issue(),
              Issue(),
              Issue(),
              Issue(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(221, 17, 85, 1),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Issue extends StatelessWidget {
  const Issue({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white,
      child: Text(
        'Category \n\n Lorem ipsum dolor sit amet. Sit galisum exercitationem et facilis rerum ea quam ipsam ut saepe autem ex voluptates dolor. Sit nesciunt dolores qui vero dolor aut cumque ipsum qui atque architecto',
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}