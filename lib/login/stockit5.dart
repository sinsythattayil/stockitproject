import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/login/stockit6.dart';

class forgot extends StatefulWidget {
  const forgot({super.key});

  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(child: Column(children: [Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(image:DecorationImage(image: AssetImage('images/login.png'),fit: BoxFit.cover)),
     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(left: 50,top: 100),
           child: Text("Forget password?",style: GoogleFonts.abrilFatface(fontSize:30),),
         ),
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: Padding(
             padding: const EdgeInsets.only(top: 40,left: 40),
             child: Text("We'll send a verification code to this email or phone number.",style: GoogleFonts.inknutAntiqua(fontSize:20),),
           ),
         ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SizedBox(
            
            height: 50,
            width: 400,
             child: TextField(keyboardType: TextInputType.emailAddress,
            
              decoration: InputDecoration(fillColor: const Color.fromARGB(168, 255, 255, 255),filled: true,
              border: OutlineInputBorder(borderSide:const BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(10)),
              hintText: ('Enter Email/phone number')),
              
             ),
                     ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.black),foregroundColor: MaterialStatePropertyAll(Colors.white),
              shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)
              )) ,
              minimumSize: MaterialStatePropertyAll(Size(400,55))),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const stock6()));
              }, child: Text('Send',style: GoogleFonts.abrilFatface(fontSize:20),)),
          )
       ],
     ),
    
     ),
     
     ],),)
     

    );
  }
}