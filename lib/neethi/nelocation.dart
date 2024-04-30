import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class nelocation extends StatefulWidget {
  const nelocation({super.key});

  @override
  State<nelocation> createState() => _nelocationState();
}

class _nelocationState extends State<nelocation> {
  
  @override
  Widget build(BuildContext context) {
     final width =MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(199, 255, 255, 255),toolbarHeight: 50,
        leading: const Icon(Icons.arrow_back_ios,size:35,),
        title: Text('Neethi Store',style: GoogleFonts.abrilFatface(fontSize:25)),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover)),
          child: Column(children: [
             Padding(
               padding: const EdgeInsets.only(top:80),
               child: SizedBox(
                         height: 60,
                         width: 460,
                          child: TextField(cursorColor: Colors.black,
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
                          
                          child: Text('Neethi store Manjeri,Eranad Thaluk, 676509,Malappuram(Dt),                       Manjeri- Malappuram Rod.',style: GoogleFonts.abyssinicaSil(fontSize:15),)),
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

    );
  }
}