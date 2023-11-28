import 'package:deadend/details.dart';
import 'package:deadend/home.dart';
import 'package:deadend/sdetails.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({super.key});
  
  @override
  Widget build(BuildContext context){
    final size=MediaQuery.of(context).size;
    final w=size.width;
    final h=size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(51, 51, 51, 0.9),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(w*0.15, h*0.05, w*0.15, 0),
              child: Text('HMS',
              style: (TextStyle(color: Colors.white,fontSize: h*0.05,fontFamily: 'Lato',fontWeight: FontWeight.w500)),
              ),
            ),  
          ),
          Center(
            child: Text('BITS Pilani Hyderabad Campus',
            style: (TextStyle(color: Colors.white,fontSize: h*0.019,fontFamily: 'Lato')),
            ),
          ),
         Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(w*0.1,h*0.2,w*0.1,0),
              child: Text('For Students & Hostel Staff',
              style: (TextStyle(color: Colors.white,fontSize: h*0.028,fontFamily: 'Lato',fontWeight: FontWeight.w500)),
              ),
            ),  
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(w*0.1, h*0.025, w*0.1, 0),
            child: ElevatedButton(
                onPressed: () {
                  who=0;
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const Details()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        const  MaterialStatePropertyAll(Colors.white),
                    minimumSize:
                       MaterialStatePropertyAll(Size(double.infinity, h*0.065)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ))
                    ),
                child: Text(
                  'Sign In using BITS Email',
                  style: TextStyle(color: Colors.black,fontSize: h*0.023),
                  )
                ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(w*0.1, h*0.08, w*0.1, 100),
            child: ElevatedButton(
                onPressed: () {
                  who=1;
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const Servdetails()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        const  MaterialStatePropertyAll(Colors.white),
                    minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, h*0.065)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ))
                    ),
                child: Text(
                  'For Maintenance Staff',
                  style: TextStyle(color: Colors.black,fontSize: h*0.023),
                  )
                ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(w*0.15, h*0.2, w*0.15, 0),
            child: Image.asset('components/deadend1_w.png',alignment: Alignment.bottomCenter,height: h*0.03, width: w*0.6),
          ),
        ]
      ),
    );
  }
}



 
        