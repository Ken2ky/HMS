import 'package:deadend/complaint.dart';
import 'package:deadend/navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> filters= const['Completed','All','Recent','Pending'];
  final List<Widget> issues=[];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(4, 139, 168, 0.8),
      ),
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(w * 0.05),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: filters.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Chip(label: Text(filters[index]));
                  },   
                ),
              ),
              SizedBox(
                height:200,
                child: ListView.builder(
                  itemCount: issues.length,
                  itemBuilder: (context,index){
                    return issues[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>const Complaint()));
        },
        backgroundColor: const Color.fromRGBO(221, 17, 85, 1),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Issue extends StatelessWidget {
  final String title;
  final String description;
  const Issue({required this.title,required this.description,super.key});

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
