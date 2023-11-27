import 'package:deadend/complaint.dart';
import 'package:deadend/home.dart';
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
          child:  Column(
            children: [
              SizedBox(
                height: h,
                child: ListView.builder(
                  itemCount: animalissues.length,
                  itemBuilder: (context, index) {
                    return animalissues[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Complaint()));
        },
        backgroundColor: const Color.fromRGBO(221, 17, 85, 1),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AnimalIssue extends StatefulWidget {
  final String title;
  final String description;
  const AnimalIssue({required this.title, required this.description, super.key});

  @override
    State<AnimalIssue> createState() => _AnimalIssueState();
}
class _AnimalIssueState extends State<AnimalIssue> {
  @override
  Widget build(BuildContext context) {
    final tit = widget.title;
    final desc = widget.description;
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Issue\n$tit\n\n $desc',
            style: TextStyle(fontSize: 15, color: Colors.black,),
            textAlign: TextAlign.left ,
          ),
        ],
      ),
    );
  }
}