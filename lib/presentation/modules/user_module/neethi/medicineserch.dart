import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/presentation/modules/user_module/neethi/medicine.dart';
import 'package:stockit/presentation/modules/user_module/neethi/orderprdct.dart';

class medicinserch extends StatefulWidget {
  const medicinserch({super.key});

  @override
  State<medicinserch> createState() => _medicinserchState();
}

class _medicinserchState extends State<medicinserch> {
  
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
          'Medicines',
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
              padding: const EdgeInsets.only(top:100),
              child: SizedBox(height: 50,width: 325,
                child: TextFormField(cursorColor: Colors.black,
                                 decoration: InputDecoration(focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black)) ,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                 fillColor: Color.fromARGB(186, 255, 255, 255),filled: true,prefixIcon: Icon(Icons.search,size: 35,),
                                 hintText: ('Search for Medicines')),
                                 ),
              ),
            ),
            SizedBox(height: 15),
            Container(height: 550,width: 325,
            decoration: BoxDecoration(color: const Color.fromARGB(186, 255, 255, 255),borderRadius: BorderRadius.circular(10),border: Border.all(width:1,color: Colors.black)),
             child: Column(children: [
              Expanded(child: ListView.builder(itemCount: 8,itemBuilder:(context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Text('Ecosprin 75g Strip Of 14 Tablets',style: GoogleFonts.abrilFatface(fontSize:15),),
                              Row(
                                children: [
                                  Icon(Icons.currency_rupee,size: 14,),
                                   Text('4.72',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                           SizedBox(width:10,),
                           Icon(Icons.currency_rupee,size: 13,color: Colors.grey[400],),
                           Text('40.23',style: TextStyle(decorationColor: Colors.grey[400],
                           decoration: TextDecoration.lineThrough,
                            fontSize:13,fontWeight: FontWeight.bold,color: Colors.grey[400]),
                            ),
                             SizedBox(width:20),
                           Text('14%OFF',style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.bold),),
                                ],
                              ),
                          
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                         IconButton(onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const orderproduct()));
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