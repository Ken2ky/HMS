import 'package:deadend/complaint.dart';
import 'package:deadend/contactus.dart';
import 'package:flutter/material.dart';

class Feedbacks extends StatefulWidget {
  const Feedbacks({super.key});

  @override
  State<Feedbacks> createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(51, 51, 51, 0.9),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding:
                        EdgeInsets.fromLTRB(w * 0.15, h * 0.05, w * 0.15, 0),
                    child: Text(
                      'HMS',
                      style: (TextStyle(
                          color: Colors.white,
                          fontSize: h * 0.05,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'BITS Pilani Hyderabad Campus',
                    style: (TextStyle(
                        color: Colors.white,
                        fontSize: h * 0.019,
                        fontFamily: 'Lato')),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, w*0.05, 0, h*0.1),
                  child: Center(
                    child: Text('Feedback',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(color: Colors.white, fontSize: h * 0.033)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.07, w * 0.1, 0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Complaint()));
                  }, child:const Text("Incase the problem persists, Click this to issue complaint again",style: TextStyle(color: Colors.black)),
                    style: ButtonStyle(minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, h*0.06)),
                        backgroundColor: MaterialStatePropertyAll(const Color.fromRGBO(4, 139, 168, 0.8)),
                        ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.04, w * 0.1, 0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactUs()));
                  }, child:const Text("Any Other Issue?",style: TextStyle(color: Colors.black)),
                    style: ButtonStyle(minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, h*0.06)),
                        backgroundColor: MaterialStatePropertyAll(const Color.fromRGBO(4, 139, 168, 0.8)),
                        ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.04, w * 0.1, 0),
                 
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.04, w * 0.1, 0),
                  
                ),
              ],
            ),
          ),
        ));
  }
}