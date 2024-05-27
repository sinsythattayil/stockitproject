import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi%20store/neethimenu.dart';
import 'package:stockit/neethi/recmndpkg.dart';

class nelabtest extends StatefulWidget {
  const nelabtest({super.key});

  @override
  State<nelabtest> createState() => _nelabtestState();
}

class _nelabtestState extends State<nelabtest> {
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
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(height: 50,width: 355,
                child: TextFormField(cursorColor: Colors.black,
                                 decoration: InputDecoration(focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black)) ,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                 fillColor: Color.fromARGB(186, 255, 255, 255),filled: true,prefixIcon: Icon(Icons.search,size: 35,),hintText: ('Search for test and pakages')),
                                 ),
              ),
            ),
            SizedBox(height: 15,width: 30),
            Container(height: 600,width: 355,
            decoration: BoxDecoration(color: const Color.fromARGB(186, 255, 255, 255),borderRadius: BorderRadius.circular(10),border: Border.all(width:1,color: Colors.black)),
             child: Column(children: [
              Row(
                children: [
                  Image.asset('images/Lab.png',scale: 1.2,),
                  Text('Popular Tests',style: GoogleFonts.inknutAntiqua(fontSize:25),)
                ],
              ),
SizedBox(height: 10,),
              Expanded(child: ListView.builder(itemCount: 13,itemBuilder:(context, index) {
                return Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Fasting Blood Suger(FBS) Test',style: GoogleFonts.inknutAntiqua(fontSize:18),),
                        ),
                        SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.only(left: 30),
                           child: Row(
                                                 children: [
                                                   Icon(Icons.currency_rupee,size: 22,),
                                                   Text('2199',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                                   SizedBox(width:10,),
                                                   Icon(Icons.currency_rupee,size: 15,color: Colors.grey[400],),
                                                   Text('3746',style: TextStyle(decorationColor: Colors.grey[400],
                                                   decoration: TextDecoration.lineThrough,
                                                    fontSize:18,fontWeight: FontWeight.bold,color: Colors.grey[400]),
                                                    ),
                                                     SizedBox(width:20),
                                                   Text('41%OFF',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                                                 ]
                                               ),
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