import 'package:deadend/home.dart';
import 'package:deadend/snavbar.dart';
import 'package:flutter/material.dart';


int numb=0;
class ServHome extends StatefulWidget {
  const ServHome({super.key});
  @override
  _ServHomeState createState() => _ServHomeState();
}

class _ServHomeState extends State<ServHome> {
  final List<String> filters = const [
    'All',
    'Budh',
    'Gandhi',
    'Ganga',
    'Gautam',
    'Krishna',
    'Malviya',
    'Meera',
    'Ram',
    'Shankar',
    'Viswakarma',
    'Valmiki',
    'Vyas'
  ];
  Future<void> _refresh() async {
    // Simulate a network request or other time-consuming operation
    await Future.delayed(const Duration(milliseconds: 500));

    // Update the data or fetch new data
    setState(() {
      // Update your data here
    });
  }
   final TextEditingController hostel =TextEditingController();
   final List<String> filt = const ['All', 'Pending', 'Completed'];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    final hos=DropdownButtonFormField<String>(
                    dropdownColor: const Color.fromRGBO(51, 51, 51, 0.9),
                    items: <String>[
                      'All',
                      'Budh',
                      'Gandhi',
                      'Ganga',
                      'Gautam',
                      'Krishna',
                      'Malviya',
                      'Meera',
                      'Ram',
                      'Shankar',
                      'Viswakarma',
                      'Valmiki',
                      'Vyas'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    decoration: InputDecoration(
                      hintText: "Hostel",
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                    onSaved: (value) {
                     hostel.text = value!;
                    },
                  );
    return Scaffold(
      drawer: ServNavBar(),
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
            padding: EdgeInsets.fromLTRB(w*0.05, h*0.02, w*0.05,0),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8),
                child:hos
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: filt.length,
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
                            child: Text(filt[index])),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: h*0.7,
                  child: ListView.builder(
                    itemCount: filter[numb].length,
                    itemBuilder: (context, index) {
                      if (numb == 0) {
                        return issues[index];
                      } else if (numb == 1) {
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
    );
  }
}

