import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi%20store/neallproducts.dart';
import 'package:stockit/neethi%20store/neethimenu.dart';
import 'package:stockit/neethi/healthserch.dart';

class nehealthcare extends StatefulWidget {
  const nehealthcare({super.key});

  @override
  State<nehealthcare> createState() => _nehealthcareState();
}

class _nehealthcareState extends State<nehealthcare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: neethimenu(),
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Builder(builder: (context) {
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: Icon(Icons.menu,color: Colors.black,));
          },),
        title: Text(
          'Health Care',
          style: GoogleFonts.inknutAntiqua(fontSize: 25),
        ),
         backgroundColor: const Color.fromARGB(136, 255, 255, 255),
         ),
         body: Container(
          height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
           SizedBox(height: 15,),
            
             SizedBox(height: 15,),
             Container(
              height: 555,width: 345,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(215, 0, 0, 0),),
              child: Padding(
                padding: const EdgeInsets.only(top: 15,left: 17),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 85),
                   child: Text('Top Selling Categories',style: GoogleFonts.inknutAntiqua(fontSize:18,color:Colors.white),),
                  ),
                  
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                            child: Image.asset('images/glucomtr.png',fit: BoxFit.cover,)
                          ),
                          Text('Glucometer',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                        ],
                      ),
                      SizedBox(width: 10,),
                       Column(
                        children: [
                          Container(
                            height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                            child: Image.asset('images/nutritiondrink.png',fit: BoxFit.cover,)
                          ),
                          Text('Nutrirional drink',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                        ],
                      ),
                      SizedBox(width: 10,),
                       Column(
                        children: [
                          Container(
                            height: 90,width: 90,decoration: BoxDecoration(color: Colors.blueGrey,),
                            child: Image.asset('images/vitamin.png',fit: BoxFit.cover,)
                          ),
                          Text('Vitamins A-Z',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                        ],
                      ),
                    ],
                  ),
                   SizedBox(height: 8,),
                  Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/baby.png',fit: BoxFit.cover,)
                            ),
                            Text('Baby skin care',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                        SizedBox(width: 10,),
                         Column(
                          children: [
                            Container(
                              height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/adult.png',fit: BoxFit.cover,)
                            ),
                            Text('Adult Diaper',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                        SizedBox(width: 10,),
                         Column(
                          children: [
                            Container(
                              height: 90,width: 90,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/oral.png',fit: BoxFit.cover,)
                            ),
                            Text('Oral product',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                      ],
                    ),
                  SizedBox(height: 8,),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/women.png',fit: BoxFit.cover,)
                            ),
                            Text('women care',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                        SizedBox(width: 10,),
                         Column(
                          children: [
                            Container(
                              height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/babydiapr.png',fit: BoxFit.cover,)
                            ),
                            Text('Baby Diaper',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                        SizedBox(width: 10,),
                         Column(
                          children: [
                            Container(
                              height: 90,width: 90,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/viks.png',fit: BoxFit.cover,)
                            ),
                            Text('Respiratory Care',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120,left: 180),
                      child: TextButton(onPressed: (){
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => neallproduct()));
                      }, child:Text('View All',style:TextStyle(color: Colors.white),)),
                    )
                ],),
              ),
              
             )
          ],
        ),
         ),
    );
  }
}