import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ration1 extends StatefulWidget {
  const ration1({super.key});

  @override
  State<ration1> createState() => _ration1State();
}

class _ration1State extends State<ration1> {

  int _selectedindex=0;
  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    
    // ignore: prefer_const_constructors
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(139, 255, 255, 255),toolbarHeight: 50,
        title: Text('Ration Store',style: GoogleFonts.inknutAntiqua(fontSize:25),),leading: const Icon(Icons.arrow_back_ios,size:35,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/image 5.png'),fit: BoxFit.cover)),
          child: Column(children: [
             Padding(
               padding: const EdgeInsets.only(top:80),
               child: SizedBox(
                         height: 60,
                         width: 460,
                          child: TextField(
                           decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                           fillColor: Color.fromARGB(255, 255, 255, 255),filled: true,prefixIcon: Icon(Icons.search,size: 35,),hintText: ('Search location')),
                           ),
                        ),
                        
             ),
             
             Expanded(child: ListView.builder(itemCount: 7,itemBuilder: (context, index) {
              return Container(color: Color.fromARGB(139,255 , 255, 255),
                child: Padding(
                  padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: width,
                
                  decoration: BoxDecoration(border: Border.all(
                    width: 1,
                    color: Colors.black,),borderRadius: BorderRadius.circular(7),color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          
                          child: Text('Ration Store Munduparamba,Eranad Thaluk,676509,Malappuram(Dt),Malappuram-Manjeri Rod',style: GoogleFonts.abyssinicaSil(fontSize:15),)),
                      ),
                      ElevatedButton(style: ButtonStyle(
                      //elevation:MaterialStatePropertyAll(8),
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(233, 135, 133, 133)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.black))),
                     // minimumSize:MaterialStatePropertyAll(Size(10,10)) 
                    ),
                        onPressed: (){}, child: Text("select",style: GoogleFonts.abyssinicaSil(fontSize:18,color:Colors.black),))
                    ],
                  ),
                  ),
                ),
              );
                

             }))
          ],),
          
        ),
         
      ],),
      extendBody: true,
    //  bottomNavigationBar: BottomNavigationBar(showUnselectedLabels: true,elevation: 0,
    //  backgroundColor: const Color.fromARGB(139,255, 255, 255),
    //  items: [const BottomNavigationBarItem(icon: Icon(Icons.home,size: 35,),label:('Home')),
    //  const BottomNavigationBarItem(icon: Icon(Icons.library_books_rounded,size: 35,),label: ('Orders')),
    //  const BottomNavigationBarItem(icon: Icon(Icons.favorite,size: 35),label: ('Favourite'))
    //  ],
    //  currentIndex:_selectedindex ,
    //   selectedItemColor: const Color.fromARGB(255, 100, 74, 1),
    //   unselectedItemColor:Colors.black ,
    //   onTap:(index){
    //     setState(() {
    //       _selectedindex=index;

          
    //     });
    //   }
    //  ),

    );

  }
}