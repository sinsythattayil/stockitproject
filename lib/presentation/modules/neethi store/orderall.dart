import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class orderall extends StatefulWidget {
  const orderall({super.key});

  @override
  State<orderall> createState() => _orderallState();
}

class _orderallState extends State<orderall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width, //color: Colors.black,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pharmacy.png'), fit: BoxFit.cover)),
                child: Expanded(child: ListView.builder(itemCount: 5,itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    child: Container(
                      height: 170,width: 200,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 244, 243, 243),borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: Colors.black)),
                      child: Column(
                        children: [
                          
                          Row(
                            children: [
                              Text('Name:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                              Text('Ajay',style: GoogleFonts.abhayaLibre(fontSize:20),),
                              SizedBox(width: 70,),
                               Text('Age:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                              Text('30',style: GoogleFonts.abhayaLibre(fontSize:20),),
                            ],
                          ),
                         Row(
                            children: [
                              Text('Gender:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                              Text('M',style: GoogleFonts.abhayaLibre(fontSize:20),),
                              SizedBox(width: 35,),
                               Text('Date:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                              Text('12/3/2024',style: GoogleFonts.abhayaLibre(fontSize:20),),
                              SizedBox(width: 10,),
                              Text('Time:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                              Text('2.00',style: GoogleFonts.abhayaLibre(fontSize:20),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Item:',style:TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                              Text('Ecosprine 75mg ofb 14 tabletes',style: GoogleFonts.abhayaLibre(fontSize:20,color:Color.fromARGB(255, 225, 133, 20)),)
                            ],
                          ) ,
                           Row(
                            children: [
                              Text('Quantity:',style:TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                              Text('  3 strips',style: GoogleFonts.abhayaLibre(fontSize:20,color:Colors.black),)
                            ],
                          ) ,
                          Padding(
                            padding: const EdgeInsets.only(left: 110),
                            child: Row(
                              children: [
                                ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff57C1AE))),
                              onPressed: (){}, child: Text('Conform',style: GoogleFonts.abyssinicaSil(fontSize:15,color:Colors.white),)),
                              SizedBox(width: 5,),
                               ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff57C1AE))),
                              onPressed: (){}, child: Text('Cancell',style: GoogleFonts.abyssinicaSil(fontSize:15,color:Colors.redAccent),)),
                              
                              ],
                            
                            ),
                          ),
                        ],
                      ),
                      
                    ),
                  );
                },),),
    ),
    );
  }
}