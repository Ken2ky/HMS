import 'package:deadend/home.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  
    final TextEditingController name = TextEditingController();
    final TextEditingController num = TextEditingController();
    final TextEditingController hostel =TextEditingController();
    final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    final fullNameField = TextFormField(
      autofocus: false,
      style: TextStyle(color: Colors.white),
      textInputAction: TextInputAction.next,
      onSaved: (value) {
        name.text = value!;
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person, color: Colors.white),
        contentPadding:
            EdgeInsets.fromLTRB(w * 0.01, h * 0.04, w * 0.01, h * 0.004),
        hintText: "Full Name",
        hintStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
    final mobileField = TextFormField(
      autofocus: false,
      style: TextStyle(color: Colors.white),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        prefixIcon:
            const Icon(Icons.phone_android_rounded, color: Colors.white),
        contentPadding:
            EdgeInsets.fromLTRB(w * 0.01, h * 0.04, w * 0.01, h * 0.004),
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
      onSaved: (value) {
        num.text = value!;
      },
    );
    final title = DropdownButtonFormField<String>(
      dropdownColor: const Color.fromRGBO(51, 51, 51, 0.9),
      items: <String>[
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
          child: Text(value,style: TextStyle(color: Colors.white),),
        );
      }).toList(),
      onChanged: (_) {},
      decoration: InputDecoration(
        hintText: "Title",
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
    final submit = ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
          }
        },
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            minimumSize:
                MaterialStatePropertyAll(Size(double.infinity, h * 0.06)),
            side:
                const MaterialStatePropertyAll(BorderSide(color: Colors.white)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ))),
        child: Text(
          'Submit',
          style: TextStyle(color: Colors.white, fontSize: h * 0.03),
        ));
    return Scaffold(
        backgroundColor: const Color.fromRGBO(51, 51, 51, 0.9),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                Container(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.05, w * 0.1, 0),
                  alignment: Alignment.centerLeft,
                  child: Text('Welcome Aboard!',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(color: Colors.white, fontSize: h * 0.033)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(w * 0.1, 0, w * 0.1, 0),
                  alignment: Alignment.centerLeft,
                  child: Text('Please Fill Your Details Below.',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(color: Colors.white, fontSize: h * 0.019)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.07, w * 0.1, 0),
                  child: fullNameField,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.04, w * 0.1, 0),
                  child: mobileField,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.04, w * 0.1, 0),
                  child: title,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.04, w * 0.1, 0),
                  child: submit,
                ),
              ],
            ),
          ),
        ));
  }
}
