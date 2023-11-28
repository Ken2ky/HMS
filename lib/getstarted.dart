import 'package:deadend/login.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
   const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    final w=size.width;
    final h=size.height;
    debugPrint('$size.width $size.height');
    return Scaffold(
      backgroundColor: const Color.fromRGBO(74, 73, 73, 1),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0.25*w,0.06*h,0.25*w,0),
            child: Image.asset('components/deadend1_w.png',width: w*0.5,height: 0.034*h),
          ),
          Image.asset('components/hostel.jpeg',height: h*0.4, width: w*0.8),
          Padding(
              padding: EdgeInsets.fromLTRB(w*0.1, h*0.125, w*0.1, 0),
              child: Text('Stress Free Hostel Life \nStarts Here.',
              style: (TextStyle(color: Colors.white,fontSize: h*0.0325,fontFamily: 'Lato')),
              ),
            ),
          
          Padding(
            padding: EdgeInsets.fromLTRB(w*0.1, h*0.15, w*0.1, 0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const Login()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Color.fromRGBO(74, 73, 73, 1)),
                    minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, h*0.06)),
                    side:const MaterialStatePropertyAll(BorderSide(color: Colors.white)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ))
                    ),

                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white,fontSize: h*0.03),
                  )
                ),
          ),
        ],
      ),
    );
  }
}
