import 'package:deadend/navbar.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(4, 139, 168, 0.8),
      ),
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Card(
                color: Color.fromRGBO(74, 73, 73, 1) ,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: const TextSpan(
                    style: TextStyle(fontSize: 18),
                    children:  <TextSpan>[
                      TextSpan(
                        text: 'We want to hear from  ',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: 'You.\n',
                        style: TextStyle(color: Color.fromRGBO(161, 239, 139, 1)),
                      ),
                      TextSpan(
                        text: 'Drop your feedback ',
                        style: TextStyle(color: Color.fromRGBO(161, 239, 139, 1)),
                      ),
                      TextSpan(
                        text: 'below  ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ]
                  )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Card(
                color: Color.fromRGBO(74, 73, 73, 1) ,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: const TextSpan(
                    style: TextStyle(fontSize: 18),
                    children:  <TextSpan>[
                      TextSpan(
                          text: '** ',
                          style: TextStyle(color: Colors.white),
                        ),
                      TextSpan(
                        text: 'I HAVE AN ISSUE WITH THE APP',
                        style: TextStyle(color: Color.fromRGBO(4, 139, 168, 1)),
                      ),
                      TextSpan(
                          text: ' ** \n\n',
                          style: TextStyle(color: Colors.white),
                        ),
                      TextSpan(
                        text: 'Community feedback will only make us stronger.\n\n',
                        style: TextStyle(color: Color.fromRGBO(161, 239, 139, 1)),
                      ),
                      TextSpan(
                        text: 'Click ',
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: 'the email below and our team member will get in touch with you within 24 hours  ',
                        style: TextStyle(color: Color.fromRGBO(161, 239, 139, 1)),
                      ),
                    ]
                  )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Card(
                color: Color.fromRGBO(161, 239, 139, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: RichText(text: const TextSpan(
                      style: TextStyle(fontSize: 20),
                      children:  <TextSpan>[
                        TextSpan(
                          text: 'feedback@deadend@gmail.com',
                          style: TextStyle(color: Colors.black),
                        ),
                        
                      ]
                    )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Card(
                color: Color.fromRGBO(74, 73, 73, 1) ,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: RichText(text: const TextSpan(
                      style: TextStyle(fontSize: 18),
                      children:  <TextSpan>[
                        TextSpan(
                          text: '** ',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: 'Helpline Number',
                          style: TextStyle(color: Color.fromRGBO(4, 139, 168, 1)),
                        ),
                        TextSpan(
                          text: ' **\n\n',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: '+91 9876543210',
                          style: TextStyle(color: Colors.white,fontSize: 22),
                        ),
                        
                      ]
                    )),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}