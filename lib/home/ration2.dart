import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/home/ration1.dart';
import 'package:stockit/home/ration3.dart';
import 'package:stockit/home/ration4.dart';
import 'package:stockit/home/rationstockpink.dart';
import 'package:stockit/home/rationstocksblue.dart';
import 'package:stockit/home/rationstoks.dart';

class ration2 extends StatefulWidget {
  const ration2({super.key});

  @override
  State<ration2> createState() => _ration2State();
}

class _ration2State extends State<ration2> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final __nameController = TextEditingController();
  final _cardnumberController = TextEditingController();
  final _memberController = TextEditingController();
  // String? card;
  int _selectedValue = 1;
  void _handleRadioValueChanged(int value) {
    setState(() {
      _selectedValue = value;
    });
  }

  void _navigateToPage(BuildContext context) {
    switch (_selectedValue) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rationstocks()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rationstockblue()),
        );
        break;
        case 3:
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rationstockpink()),
        );
        break;
         case 4:
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rationstockpink()),
        );
        break;


    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_sharp)),
        title: Text(
          'Ration Store',
          style: GoogleFonts.inknutAntiqua(fontSize: 25),
        ),
        backgroundColor: Color.fromARGB(136, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/image 5.png'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 100, left: 10, right: 10, bottom: 30),
                child: Container(
                  color: Color.fromARGB(135, 255, 255, 255),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Text(
                          'Your Details',
                          style: GoogleFonts.abrilFatface(
                              fontSize: 40, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: SizedBox(
                            height: 65,
                            width: 340,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: __nameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter value';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  fillColor: Color.fromARGB(177, 255, 255, 255),
                                  filled: true,
                                  hintText: ('Enter your Name')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            height: 65,
                            width: 340,
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _cardnumberController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter card number';
                                }
                                return null;
                              },
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  fillColor: Color.fromARGB(177, 255, 255, 255),
                                  filled: true,
                                  hintText: ('Ration card Number')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(179, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(177, 255, 255, 255),
                            ),
                            //color: Color.fromARGB(177, 255, 255, 255),
                            height: 250,
                            width: 340,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 70, top: 10),
                                  child: Text(
                                    "Select Card color:",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Radio<int>(
                                          value: 1,
                                          groupValue: _selectedValue,
                                          onChanged: (value) =>
                                              _handleRadioValueChanged(value!),
                                        ),
                                        Text('White'),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                 // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Radio<int>(
                                      value: 2,
                                      groupValue: _selectedValue,
                                      onChanged: (value) =>
                                          _handleRadioValueChanged(value!),
                                    ),
                                    Text('Blue'),
                                  ],
                                ),
                                 Row(
                                 // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Radio<int>(
                                      value: 3,
                                      groupValue: _selectedValue,
                                      onChanged: (value) =>
                                          _handleRadioValueChanged(value!),
                                    ),
                                    Text('Pink'),
                                  ],
                                ),
                                Row(
                                 // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Radio<int>(
                                      value: 4,
                                      groupValue: _selectedValue,
                                      onChanged: (value) =>
                                          _handleRadioValueChanged(value!),
                                    ),
                                    Text('Yello'),
                                  ],
                                ),
                                // ElevatedButton(
                                //   onPressed: () => _navigateToPage(context),
                                //   child: Text('Submit'),
                                // ),

                                // ListTile(
                                //   title: Text('White'),
                                //   leading: Radio(
                                //       value: 'white',
                                //       groupValue: card,
                                //       onChanged: (value) {
                                //         setState(() {
                                //           card = value;
                                //         });
                                //       }),
                                // ),
                                // ListTile(
                                //   title: Text('Blue'),
                                //   leading: Radio(
                                //       value: 'Blue',
                                //       groupValue: card,
                                //       onChanged: (value) {
                                //         setState(() {
                                //           card = value;
                                //         });
                                //       }),
                                // ),
                                // ListTile(
                                //   title: Text('Pink'),
                                //   leading: Radio(
                                //       value: 'Pink',
                                //       groupValue: card,
                                //       onChanged: (value) {
                                //         setState(() {
                                //           card = value;
                                //         });
                                //       }),
                                // ),
                                // ListTile(
                                //   title: Text('Yellow'),
                                //   leading: Radio(
                                //       value: 'Yellow',
                                //       groupValue: card,
                                //       onChanged: (value) {
                                //         setState(() {
                                //           card = value;
                                //         });
                                //       }),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 95),
                          child: SizedBox(
                            height: 65,
                            width: 240,
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _memberController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter value';
                                }

                                return null;
                              },
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(2),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  fillColor: Color.fromARGB(177, 255, 255, 255),
                                  filled: true,
                                  hintText: ('Number of members')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                            height: 50,
                            width: 150,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.black),
                                    foregroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                                        onPressed: () => _navigateToPage(context),
                                // onPressed: () {
                                //   if (_formkey.currentState!.validate()) {
                                //     Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) => rationstocks()),
                                //     );
                                //   }
                                // },
                                child: Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
