import 'package:deadend/complaint.dart';
import 'package:deadend/navbar.dart';
import 'package:flutter/material.dart';

final List<Widget> issues = [];
final List<Widget> pending = [Issue(title: "Hi", description: "Hello")];
final List<Widget> completed = [];
final List<List<Widget>> filter = [issues, pending, completed];

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> filters = const ['All', 'Pending', 'Completed'];
  int current = 0;
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
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Text(filters[index])),
                    );
                  },
                ),
              ),
              SizedBox(
                height: h,
                child: ListView.builder(
                  itemCount: filter[current].length,
                  itemBuilder: (context, index) {
                    if (current == 0) {
                      return issues[index];
                    } else if (current == 1) {
                      return pending[index];
                    } else {
                      return completed[index];
                    }
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

class Issue extends StatelessWidget {
  final String title;
  final String description;
  const Issue({required this.title, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    final tit = title;
    final desc = description;
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Text(
            '$tit\n\n $desc',
            style: TextStyle(fontSize: 15, color: Colors.black,),
            textAlign: TextAlign.left ,
          ),
          ElevatedButton(onPressed: () {

          }, 
          child: Text("Resolved"))
        ],
      ),
    );
  }
}
