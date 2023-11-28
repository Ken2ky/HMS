import 'package:deadend/home.dart';
import 'package:deadend/snavbar.dart';
import 'package:flutter/material.dart';

class ServAnimalIssues extends StatefulWidget {
  const ServAnimalIssues({super.key});

  @override
  State<ServAnimalIssues> createState() => _ServAnimalIssuesState();
}

class _ServAnimalIssuesState extends State<ServAnimalIssues> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    return Scaffold(
      drawer: ServNavBar(),
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
                height: h-100,
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
    );
  }
}