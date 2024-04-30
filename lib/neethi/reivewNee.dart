import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi/menunee.dart';

class reviewnee extends StatefulWidget {
  const reviewnee({super.key});

  @override
  State<reviewnee> createState() => _reviewneeState();
}

class _reviewneeState extends State<reviewnee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
     appBar: AppBar(backgroundColor: Color.fromARGB(136, 255, 255, 255),
             leading: IconButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => menuneethi(),));
             }, icon: Icon(Icons.arrow_back_ios_new_sharp,size: 35,)),
             title: Text('Feedback',style: GoogleFonts.abrilFatface(fontSize:30),),),
             body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover,)),
             child: Padding(
               padding: const EdgeInsets.only(top: 60,bottom: 20,left: 5,right: 5),
               child: Container(color: Color.fromARGB(204, 14, 14, 14),
               child: Column(children: [
                SizedBox(
                  height: 80,width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFormField(cursorColor: Colors.black,
                    decoration: InputDecoration(focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),hintText: ('Email Id'),fillColor: Color.fromARGB(136, 255, 255, 255),filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                  )),
                 SizedBox(
                  height: 100,width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFormField(minLines: 1,
                    maxLines: 10,
                    inputFormatters: [
                              LengthLimitingTextInputFormatter(100)

                    ],
                  
                    cursorColor: Colors.black,decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                      hintText: ('Type Suggestion/Feedback'),fillColor: Color.fromARGB(136, 255, 255, 255),filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                  )) ,
                  Padding(
                    padding: const EdgeInsets.only(top: 350),
                    child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 221, 115, 22)),foregroundColor: MaterialStatePropertyAll(Colors.black)),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => menuneethi(),));
                    }, child: Text('SUBMIT')),
                  )
               ],),),
             ),
             ),

    );
  }
}