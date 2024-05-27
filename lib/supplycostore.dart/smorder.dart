import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/rationstore.dart/rorder.dart';
import 'package:stockit/supplycostore.dart/smenu.dart';
import 'package:stockit/supplycostore.dart/smorderview.dart';

class smorder extends StatefulWidget {
  const smorder({super.key});

  @override
  State<smorder> createState() => _smorderState();
}

class _smorderState extends State<smorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: smenu(),
       appBar: AppBar(
        leading: Builder(builder: (context) {
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: Icon(Icons.menu,color: Colors.black,));
          },),

        title: Text('Orders',style: GoogleFonts.abrilFatface(fontSize:20,color:Colors.black),),
      backgroundColor: Colors.white),
      body:Container(
        
                child: Expanded(child: ListView.builder(itemCount: 7,itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>smorderview()));
                      },
                      child: Container(

                        height: 130,width: 250,
                        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            CircleAvatar(backgroundColor: Colors.white,
                            child: CircleAvatar(backgroundImage: AssetImage('images/Ellipse 4.png'),radius: 40,),
                            radius: 43,),
                              SizedBox(width: 20,),
                              Column(
                                children: [
                                  
                                  Text(' Sharika',style: GoogleFonts.abrilFatface(fontSize:20,color:Colors.white),),
                                  
                                  Row(
                                    children: [
                                          Text('Card',style: GoogleFonts.abyssinicaSil(fontSize:15,color:Colors.white),),
                                      Text(' 4325456389',style: GoogleFonts.abyssinicaSil(fontSize:18,color:Colors.white),),
                                    ],
                                  ),
                                  Text(' White',style: GoogleFonts.abrilFatface(fontSize:15,color:Colors.white),),
                                  Text(' 3 person',style: GoogleFonts.abrilFatface(fontSize:15,color:Colors.white),),
                                ],
                              )
                              
                          ],
                        ),
                      ),
                    ),
                  );
                },)),
      ) ,
    );
  }
}