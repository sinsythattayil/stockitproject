import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ration2 extends StatefulWidget {
  const ration2({super.key});

  @override
  State<ration2> createState() => _ration2State();
}

class _ration2State extends State<ration2> {
  String ? card;
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      
      extendBodyBehindAppBar: true,
      appBar: AppBar( leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios_sharp) ),
        title: Text('Ration Store',style: GoogleFonts.inknutAntiqua(fontSize:25),),backgroundColor: Color.fromARGB(136, 255, 255, 255),),
      body: SingleChildScrollView(
        child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/image 5.png'),fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(top: 100,left: 25,right: 25,bottom: 30),
            child: Container(
              color: Color.fromARGB(135, 255, 255, 255),
              child: Column(
                children: [
                  Text('Your Details',style: GoogleFonts.abrilFatface(fontSize:40,color:Colors.black),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                      height: 50,
                      width:350,
                      child: TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                        fillColor: Color.fromARGB(177, 255, 255, 255),filled: true,hintText: ('Enter your Name')),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 50,
                      width:350,
                      child: TextField(
                        inputFormatters: [LengthLimitingTextInputFormatter(10),FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                        fillColor: Color.fromARGB(177, 255, 255, 255),filled: true,hintText: ('Ration card Number')),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: Container(decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(179, 0, 0, 0))
                      ,borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(177, 255, 255, 255),),
                      //color: Color.fromARGB(177, 255, 255, 255),
                      height: 300,
                      width: 400,
                      child:Column(children: [Padding(
                        padding: const EdgeInsets.only(right: 70,top: 10),
                        child: Text("Select Card color:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                      ),
                      ListTile(title: Text('White'),leading: Radio(value: 'white', groupValue: card, onChanged:(value){
                       setState(() {
                         card=value;
                       });
                      }),),
                      ListTile(title: Text('Blue'),leading: Radio(value: 'Blue', groupValue: card, onChanged:(value){
                       setState(() {
                         card=value;
                       });
                      }),),
                      ListTile(title: Text('Pink'),leading: Radio(value: 'Pink', groupValue: card, onChanged:(value){
                       setState(() {
                         card=value;
                       });
                      }),),
                      ListTile(title: Text('Yellow'),leading: Radio(value: 'Yellow', groupValue: card, onChanged:(value){
                       setState(() {
                         card=value;
                       });
                      }),),
                      
                      ],) ,
                    
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 10,right:95),
                    child: SizedBox(
                      height: 50,
                      width:250,
                      child: TextField(
                        inputFormatters: [LengthLimitingTextInputFormatter(2),FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)),
                        fillColor: Color.fromARGB(177, 255, 255, 255),filled: true,hintText: ('Number of members')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox( height: 50,width: 150,
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),foregroundColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: (){}, child: Text('Submit',style: TextStyle(fontSize: 18),)),
                    ),
                  )
                 
                ],
              ),
            ),
          ),
        )
        ],),
      ),
      
    );
  }
}