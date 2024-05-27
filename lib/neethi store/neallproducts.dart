import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi%20store/neproductdetails.dart';
import 'package:stockit/neethi/sebamade.dart';

class neallproduct extends StatefulWidget {
  const neallproduct({super.key});

  @override
  State<neallproduct> createState() => _neallproductState();
}

class _neallproductState extends State<neallproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(
            onPressed: () {
               Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
             
            )),
        title: Text('Products',style: GoogleFonts.inknutAntiqua(fontSize: 25),),
         backgroundColor: const Color.fromARGB(136, 255, 255, 255),
    ),
      body:  SingleChildScrollView(
      child: Container(
        
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover)
        ),
          child: Column(children: [
            SizedBox(height: 20,),
            SizedBox(height: 60,width: 355,
              child: TextFormField(cursorColor: Colors.black,
                               decoration: InputDecoration(focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black)) ,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                               fillColor: Color.fromARGB(186, 255, 255, 255),filled: true,prefixIcon: Icon(Icons.search,size: 35,),
                               hintText: ('Sebamade')),
                               ),
            ),
            SizedBox(height: 15,width: 30),
            Container(height: 565,width: 355,
            decoration: BoxDecoration(color: const Color.fromARGB(186, 255, 255, 255),borderRadius: BorderRadius.circular(10),border: Border.all(width:1,color: Colors.black)),
             child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Text('Showing suggession for sebamade',style: GoogleFonts.abrilFatface(fontSize:15,color:const Color.fromARGB(175, 0, 0, 0)),),
              ),
              Expanded(child: ListView.builder(itemCount: 8,itemBuilder:(context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Text('Sebamade Baby Cleansing Bar-150g',style: GoogleFonts.abrilFatface(fontSize:15,color:Colors.black),),
                               Padding(
                                 padding: const EdgeInsets.only(right: 140),
                                 child: Text('150g soap in Box',style: GoogleFonts.abrilFatface(fontSize:12),),
                               ),
                              
                          
                            ],
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left:30 ),
                           child: IconButton(onPressed: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => neproductdetails()));
                           }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 20,)),
                         ),
                         
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