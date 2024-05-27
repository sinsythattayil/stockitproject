import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/mavelistore%20module/mavorderview.dart';

class mavelimoduleorder extends StatefulWidget {
  const mavelimoduleorder({super.key});

  @override
  State<mavelimoduleorder> createState() => _mavelimoduleorderState();
}

class _mavelimoduleorderState extends State<mavelimoduleorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
        title: Text('Orders',style: GoogleFonts.abrilFatface(fontSize:20,color:Colors.black),),
      backgroundColor: Colors.white),
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/image 5.png'), fit: BoxFit.cover)),
                child: Expanded(child: ListView.builder(itemCount: 7,itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>mavorderview()));
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