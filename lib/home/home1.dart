import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 370,
            width: double.infinity,
            decoration: const BoxDecoration(image: DecorationImage(image:AssetImage('images/rationwallppr.jpg'),fit: BoxFit.cover)),
            child: ElevatedButton(onPressed: (){}, child: Text("Grocery"),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(150, 409)
            ),),),
            
          Container(
            //height: MediaQuery.of(context).size.height,
           // width: MediaQuery.of(context).size.width,
            height:350,
            width: double.infinity,
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/young.png'),fit: BoxFit.cover)),
          )
        ],
      ),);
  
  }
}