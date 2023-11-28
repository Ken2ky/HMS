import 'package:deadend/complaint.dart';
import 'package:deadend/navbar.dart';
import 'package:flutter/material.dart';

final List<Widget> issues = [];
final List<Widget> animalissues = [];
final List<Widget> pending = [];
final List<Widget> completed = [];
int current = 0;

final List<List<Widget>> filter = [issues, pending, completed];
final List<String> status=['Open','InService','Closed'];


class Home extends StatefulWidget {
  const Home({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> filters = const ['All', 'Pending', 'Completed'];
  Future<void> _refresh() async {
    // Simulate a network request or other time-consuming operation
    await Future.delayed(const Duration(milliseconds: 500));

    // Update the data or fetch new data
    setState(() {
      // Update your data here
    });
  }
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
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SingleChildScrollView(
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
                  height: h-150,
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Complaint())).then((value){
                setState(() {});
              });
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
  final int issue;
  final String roomNo;
  const Issue({required this.title, required this.description,required this.issue,required this.roomNo, super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final tit = title;
    final desc = description;
    final room=roomNo;
    final iss=issue;
    return Card(
      color: Color.fromRGBO(74, 73, 73, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        SizedBox(
          width: 0.5*w,
          child: Card(
            elevation: 0,
          color: Color.fromRGBO(74, 73, 73, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(tit,
                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(241, 119, 67, 1),),
                    textAlign: TextAlign.left ,
                    softWrap: true,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("\nRoom-$room",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    textAlign: TextAlign.left ,
                    softWrap: true,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("\n$desc",
                    style: TextStyle(fontSize: 15, color: Colors.white,),
                    textAlign: TextAlign.left ,
                    softWrap: true,
                    ),
                  ),
              //     const Align(
              //     alignment: Alignment.centerLeft,
              //     child: Text(
              //       '\nIssue',
              //       style: TextStyle(fontSize: 15, color: Colors.white,),
              //       textAlign: TextAlign.left ,
              //       softWrap: true,
              //       ),
              //  ),
              ],
            ),
          ),
        ),
        ),Padding(
        padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
        child:  ElevatedButton(
          onPressed: (){
            if(iss==2){

            }
          },
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(iss==0?Color.fromRGBO(221, 17, 85, 1):(iss==1)?Color.fromRGBO(151, 71, 255, 1):Color.fromRGBO(154, 227, 134, 1),
) ),
          child: Text(
            status[iss],
            style: TextStyle(fontSize: 15, color: iss!=2?Colors.white:Colors.black),
            textAlign: TextAlign.left ,
            ),
        ),
      )],
      
      ),
    );
  }
}

