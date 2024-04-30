import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class bookingdetls extends StatefulWidget {
  const bookingdetls({super.key});

  @override
  State<bookingdetls> createState() => _bookingdetlsState();
}

class _bookingdetlsState extends State<bookingdetls> {
  @override
  Widget build(BuildContext context) {
    DateTime _dateTime = DateTime.now();
    TimeOfDay _selectedtime = TimeOfDay.now();
    void _showdatepicker() {
      showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(3000))
          .then((value) => setState(() {
                _dateTime = value!;
              }));
    }

    //final List options = ['option1', 'option2'];
    String currentoption = "";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              size: 35,
            )),
        backgroundColor: const Color.fromARGB(136, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/pharmacy.png'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 120, left: 30, right: 30, bottom: 40),
              child: Container(
                color: const Color.fromARGB(178, 233, 231, 231),
                child: Column(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 30,
                    ),
                    Text('Enter your Details',
                        style: GoogleFonts.abrilFatface(
                          fontSize: 30,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Color.fromARGB(255, 237, 234, 234),
                            filled: true,
                            hintText: ('Type Your Name')),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 234, 234),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Row(
                        children: [
                          Text('    Gender:', style: TextStyle(fontSize: 18)),
                          Expanded(
                            child: RadioListTile(
                                title: Text('M'),
                                value: 'male',
                                groupValue: currentoption,
                                onChanged: (value) {
                                  setState(() {
                                    currentoption = value.toString();
                                  });
                                }),
                          ),
                          Expanded(
                            child: RadioListTile(
                                title: Text('F'),
                                value: 'female',
                                groupValue: currentoption,
                                onChanged: (value) {
                                  setState(() {
                                    currentoption = value.toString();

                                    SizedBox(
                                      height: 50,
                                      width: 100,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            fillColor: Color.fromARGB(
                                                255, 237, 234, 234),
                                            filled: true,
                                            hintText:
                                                '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
                                            suffixIcon: IconButton(
                                                onPressed: () async {
                                                  final TimeOfDay? timeOfDay =
                                                      await showTimePicker(
                                                          context: context,
                                                          initialTime:
                                                              _selectedtime,
                                                          initialEntryMode:
                                                              TimePickerEntryMode
                                                                  .dial);
                                                  if (timeOfDay != null) {
                                                    setState(() {
                                                      _selectedtime = timeOfDay;
                                                    });
                                                  }
                                                },
                                                icon: Icon(
                                                  Icons.schedule,
                                                  color: Colors.black,
                                                  size: 30,
                                                ))),
                                      ),
                                    );
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: TextField(
                        maxLines: 3,
                        minLines: 1,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Color.fromARGB(255, 237, 234, 234),
                            filled: true,
                            hintText: ('Booking Details')),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 60,
                          child: TextField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2)
                            ],
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fillColor: Color.fromARGB(255, 237, 234, 234),
                                filled: true,
                                hintText: ('Age')),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fillColor: Color.fromARGB(255, 237, 234, 234),
                                filled: true,
                                hintText:
                                    '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      _showdatepicker();
                                    },
                                    icon: Icon(
                                      Icons.calendar_month_rounded,
                                      color: Colors.black,
                                      size: 30,
                                    ))),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fillColor: Color.fromARGB(255, 237, 234, 234),
                                filled: true,
                                hintText:
                                    '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
                                suffixIcon: IconButton(
                                    onPressed: () async {
                                      final TimeOfDay? timeOfDay =
                                          await showTimePicker(
                                              context: context,
                                              initialTime: _selectedtime,
                                              initialEntryMode:
                                                  TimePickerEntryMode.dial);
                                      if (timeOfDay != null) {
                                        setState(() {
                                          _selectedtime = timeOfDay;
                                        });
                                      }
                                    },
                                    icon: Icon(
                                      Icons.schedule,
                                      color: Colors.black,
                                      size: 30,
                                    ))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
