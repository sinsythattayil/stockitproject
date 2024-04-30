import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi/menunee.dart';

class orderneethi extends StatefulWidget {
  const orderneethi({super.key});

  @override
  State<orderneethi> createState() => _orderneethiState();
}

class _orderneethiState extends State<orderneethi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>menuneethi(),));
            },
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              size: 35,
            )),
        
         backgroundColor: const Color.fromARGB(136, 255, 255, 255),
    ),
    body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover)
      ),
      child: Padding(
                padding: const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 15),
                child: Container(
                  color: Color.fromARGB(232, 14, 14, 14),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text('Orders',style: GoogleFonts.inknutAntiqua(fontSize: 25,color:Colors.white),
                                ),
                      ),
                       Expanded(child: ListView.builder(itemCount: 5,itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  child: Container(height: 85,width: 300,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),border:Border.all(width: 1,color: Colors.black)),
                  child:Column(children: [ 
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 8,left: 5),
                           child: Text('Ecosprine 75mg ofb 14 tabletes',style: GoogleFonts.inknutAntiqua(fontSize:15,),),
                         ),
                        
                       ],
                     ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 20),
                        child: Row(
                         children: [
                           Icon(Icons.currency_rupee,size: 19,),
                           Text('65',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                           SizedBox(width:10,),
                           Icon(Icons.currency_rupee,size: 15,color: Colors.grey[400],),
                           Text('99',style: TextStyle(decorationColor: Colors.grey[400],
                           decoration: TextDecoration.lineThrough,
                            fontSize:15,fontWeight: FontWeight.bold,color: Colors.grey[400]),
                            ),
                             SizedBox(width:20),
                           Text('66%OFF',style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                           Padding(
                             padding: const EdgeInsets.only(left: 45),
                             child: IconButton(onPressed: (){}, icon:Icon(Icons.favorite,size: 26,color: Colors.amber[600],)),
                           ),
                          ],
                         
                        ),
                      ),
                     
                      
                  ],)
                  ),
                );
              },))
                    ],
                  ),
                ),
              ),
    ),
    );
  }
}