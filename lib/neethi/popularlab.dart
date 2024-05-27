import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi/booklab.dart';
import 'package:stockit/neethi/labtest.dart';
import 'package:stockit/neethi/recmndpkg.dart';

class popularlab extends StatefulWidget {
  const popularlab({super.key});

  @override
  State<popularlab> createState() => _popularlabState();
}

class _popularlabState extends State<popularlab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
               Navigator.pop(context);
                              
            },
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
            
            )),
        title: Text(
          'Lab Test',
          style: GoogleFonts.inknutAntiqua(fontSize: 25),
        ),
         backgroundColor: const Color.fromARGB(136, 255, 255, 255),
    ),
    body: SingleChildScrollView(
      child: Container(
        
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover)
        ),
          child: Column(children: [
            //SizedBox(height: 90,width: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(height: 50,width: 325,
                child: TextFormField(cursorColor: Colors.black,
                                 decoration: InputDecoration(focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black)) ,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                 fillColor: Color.fromARGB(186, 255, 255, 255),filled: true,prefixIcon: Icon(Icons.search,size: 35,),hintText: ('Search for test and pakages')),
                                 ),
              ),
            ),
            SizedBox(height: 15,width: 30),
            Container(height: 565,width: 325,
            decoration: BoxDecoration(color: const Color.fromARGB(186, 255, 255, 255),borderRadius: BorderRadius.circular(10),border: Border.all(width:1,color: Colors.black)),
             child: Column(children: [
              Row(
                children: [
                  Image.asset('images/Lab.png',scale: 1.2,),
                  Text('Popular Tests',style: GoogleFonts.inknutAntiqua(fontSize:25),)
                ],
              ),

              Expanded(child: ListView.builder(itemCount: 8,itemBuilder:(context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Fasting Blood Suger(FBS) Test',style: GoogleFonts.inknutAntiqua(fontSize:15),),
                        ),
                         IconButton(onPressed: (){
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => rcmndpkg()));
                         }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 20,)),
                         
                      ],
                    ),
                    Divider(color: Colors.black)
                  ],
                );
              },))
             ],
            
             ),
           
            )                 
          ],),
      
      ),
    ),
    
    
    );
  }
}