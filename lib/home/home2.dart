import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class grocery extends StatefulWidget {
  const grocery({super.key});

  @override
  State<grocery> createState() => _groceryState();
}

class _groceryState extends State<grocery> {
  int _selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     extendBodyBehindAppBar: true,
     appBar: AppBar( backgroundColor: const Color.fromARGB(149, 255, 255, 255),toolbarHeight: 50,
    leading: const Icon(Icons.arrow_back_ios,size:35,),
    actions: [
    IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size: 35,color: Colors.black,))
    ],
    ),
     body:  SingleChildScrollView(
       child: Column(children: [
         Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/image 5.png'),fit: BoxFit.cover)),
           child:  Column(
            children: [
              Padding(
                
                padding: const EdgeInsets.only(top: 200),
                child: ElevatedButton(
                  style: ButtonStyle(
                    //elevation:MaterialStatePropertyAll(8),
                    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(207, 255, 255, 255)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.black))),
                    minimumSize:MaterialStatePropertyAll(Size(300,55)) 
                  ),
              
                  onPressed: (){}, child:Text('Ration Store',style: GoogleFonts.abrilFatface(fontSize:20,color:Colors.black),) ),
              ),
               Padding(
                
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                    //elevation:MaterialStatePropertyAll(8),
                    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(207, 255, 255, 255)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.black))),
                    minimumSize:MaterialStatePropertyAll(Size(300,55)) 
                  ),
              
                  onPressed: (){}, child:Text('Maveli Store',style: GoogleFonts.abrilFatface(fontSize:20,color:Colors.black),) ),
              ),
               Padding(
                
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                   // elevation:MaterialStatePropertyAll(8),
                    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(207, 255, 255, 255)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.black))),
                    minimumSize:MaterialStatePropertyAll(Size(300,55)) 
                  ),
              
                  onPressed: (){}, child:Text('Supplyco Store',style: GoogleFonts.abrilFatface(fontSize:20,color:Colors.black),) ),
              ),
            ],
           ),
         )
       ],),
     ),
    extendBody: true,
     bottomNavigationBar: BottomNavigationBar(elevation: 0,showUnselectedLabels: true,backgroundColor: const Color.fromARGB(103, 255, 255, 255),items: [const BottomNavigationBarItem(icon: Icon(Icons.home,size: 35,),label: ('Home')),
     const BottomNavigationBarItem(icon: Icon(Icons.library_books_rounded,size: 35,),label: ('Items')),
     const BottomNavigationBarItem(icon: Icon(Icons.favorite,size: 35,),label:('Favourate Store')),const BottomNavigationBarItem(icon: Icon(Icons.notifications,size: 35,),label: ('Notification'))
     ],
     currentIndex:_selectedindex ,
      selectedItemColor: const Color.fromARGB(255, 100, 74, 1),
      unselectedItemColor:Colors.black ,
      onTap:(index){
        setState(() {
          _selectedindex=index;

          
        });
      }
        ),

    );
  }
}