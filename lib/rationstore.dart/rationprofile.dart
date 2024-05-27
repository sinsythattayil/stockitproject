import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rationprofile extends StatelessWidget {
  const rationprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
         // backgroundColor: Color.fromARGB(136, 255, 255, 255),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
           title: Text(
            'Profile',
            style: GoogleFonts.abrilFatface(fontSize: 20),
          ),
          
        ),
        body: Column(
          children: [
            Container(height: 733,width: 400,
          //      height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
           decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
          colors: [
        
          Color.fromARGB(255, 73, 49, 38),
          Color.fromARGB(255, 244, 119, 2)
        ]),
              
                ),
                child: Stack(children: [Padding(
                padding: const EdgeInsets.only(top: 250,left: 50),
                child: Image(image: AssetImage('images/image 29.png'),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:50,left:5,right: 5,bottom: 20),
                child: Column(
        children: [
         SizedBox(height: 60,),
          Container(
            height:600,width: 400,
            color: Color.fromARGB(170, 0, 0, 0),
            child: Column(
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Stack(
                    children: [Container( height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 75,left: 115),
                                          child: Container(height: 50,width: 50,
                                          decoration: BoxDecoration(shape: BoxShape.circle,color: const Color.fromARGB(179, 0, 0, 0),
                                          ),
                                          child: IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt,color: Colors.blue,size: 30,)),),
                                        )
                                        ] 
                  ),
                ),

                                    Text('Name',style: GoogleFonts.abrilFatface(
                      fontSize: 20, color: Colors.white)),
                                    Text('Address',style: GoogleFonts.abrilFatface(
                      fontSize: 20, color: Colors.white)),
                                    Text('Email Id',style: GoogleFonts.abrilFatface(
                      fontSize: 20, color: Colors.white))
              ],
            ),
          ),
        ],
                ),
              )
              ],),
            )
          ],
        ),
    );
  }
}