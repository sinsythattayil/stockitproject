import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/common/menu.dart';
import 'package:stockit/neethi/menunee.dart';

class nprofilr extends StatefulWidget {
  const nprofilr({super.key});

  @override
  State<nprofilr> createState() => _nprofilrState();
}

class _nprofilrState extends State<nprofilr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Color.fromARGB(136, 255, 255, 255),
      leading: IconButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => menuneethi(),));
      }, icon: Icon(Icons.arrow_back_ios_sharp)),
      title: Text('Profile',style: GoogleFonts.abrilFatface(fontSize:30),),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 60,left:5,right: 5,bottom: 20),
          child: Container(color: Color.fromARGB(170, 0, 0, 0),
          child:Column(children: [Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CircleAvatar(backgroundImage: AssetImage('images/Ellipse 4.png'),radius:60 ,),
          ),
          Text('Sharika',style: GoogleFonts.abrilFatface(fontSize:30,color:Colors.white)),
          Text('Thachanpoyil',style: GoogleFonts.abhayaLibre(fontSize:23,color:Colors.white)),
          Text('Thachanpoyil@gamil.com',style: GoogleFonts.abhayaLibre(fontSize:23,color:Colors.white)),
          
          ],) ,
          ),
          
          
        ),
      ),

    );
  }
}