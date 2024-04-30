import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stockit/demo/firstpage.dart';
import 'package:stockit/login/stockit2.dart';

class stockit1 extends StatefulWidget {
  const stockit1({super.key});

  @override
  State<stockit1> createState() => _stockit1State();
}

class _stockit1State extends State<stockit1> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds:3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>stockit2()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body://Center(child: Image.asset("images/image 29.png"),),
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
            colors: [

            Color.fromARGB(255, 73, 49, 38),
            Color.fromARGB(255, 244, 119, 2)
          ]),
      
        ),
      child:Image(image: AssetImage('images/image 29.png'),),
      ),
     // backgroundColor: const Color.fromRGBO(83, 36, 2,1),
    );
  }
}