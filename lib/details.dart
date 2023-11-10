import 'package:flutter/material.dart';


class Details extends StatefulWidget{
  const Details({super.key});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details>{
  @override
  Widget build(BuildContext context){
    final size=MediaQuery.of(context).size;
    final w=size.width;
    final h=size.height;

    final fullNameField= TextFormField(
      autofocus: false,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person,color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(w*0.01, h*0.04, w*0.01, h*0.004),
        hintText: "Full Name",
        hintStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder:  OutlineInputBorder( 
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
    final mobileField= TextFormField(
      autofocus: false,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.phone_android_rounded,color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(w*0.01, h*0.04, w*0.01, h*0.004),
        hintText: "Mobile Number",
        hintStyle: const TextStyle(color: Colors.white),
        focusedBorder: OutlineInputBorder( 
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
    return Scaffold(
      backgroundColor:  const Color.fromRGBO(51, 51, 51, 0.9),
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              padding: EdgeInsets.fromLTRB(w*0.1, h*0.05, w*0.1, 0),
              alignment: Alignment.centerLeft,
              child: Text('Welcome Aboard!',textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: h*0.033)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(w*0.1,0, w*0.1, 0),
              alignment: Alignment.centerLeft,
              child: Text('Please Fill Your Details Below.',textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: h*0.019)),
            ),
      
            Padding(
              padding: EdgeInsets.fromLTRB(w*0.1,h*0.07, w*0.1, 0),
              child: fullNameField,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(w*0.1,h*0.04, w*0.1, 0),
              child: mobileField,
            ),
          ],
        ),
      )
    );
  }
}