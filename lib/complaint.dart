import 'package:deadend/home.dart';
import 'package:flutter/material.dart';

class Complaint extends StatefulWidget {
  const Complaint({super.key});

  @override
  State<Complaint> createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  final TextEditingController tit = TextEditingController();
  final TextEditingController bod = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    final title = DropdownButtonFormField<String>(
      items: <String>['Electric', 'Plumbing', 'Carpentry', 'Animal Issues']
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
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
        tit.text = value!;
      },
    );
    final body = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.multiline,
      onSaved: (value) {
        bod.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person, color: Colors.white),
        contentPadding:
            EdgeInsets.fromLTRB(w * 0.01, h * 0.04, w * 0.01, h * 0.004),
        hintText: "body",
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
    final submit = ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            print('Title: ${tit.text}');
            print('Body: ${bod.text}');
            _formKey.currentState!.reset();
          }

          issues.add(Issue(title: tit.text.toString(), description: bod.text));

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
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
                  child: Text('Please State Your Issue',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(color: Colors.white, fontSize: h * 0.033)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.07, w * 0.1, 0),
                  child: title,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(w * 0.1, h * 0.04, w * 0.1, 0),
                  child: body,
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
