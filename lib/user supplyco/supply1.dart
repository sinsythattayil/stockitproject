import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/user%20supplyco/supplycostocks.dart';

class supplyco1 extends StatefulWidget {
  const supplyco1({super.key});

  @override
  State<supplyco1> createState() => _supplyco1State();
}

class _supplyco1State extends State<supplyco1> {
  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(139, 255, 255, 255),toolbarHeight: 50,
        leading: IconButton(onPressed: (){
       Navigator.pop(context);
    }, icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Text('Supplyco Store',style: GoogleFonts.abrilFatface(fontSize:30)),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/image 5.png'),fit: BoxFit.cover)),
          child: Column(children: [
             Padding(
               padding: const EdgeInsets.only(top:100),
               child: SizedBox(
                         height: 60,
                         width: 350,
                          child: TextField(
                           decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                           fillColor: Color.fromARGB(255, 255, 255, 255),
                           filled: true,prefixIcon: Icon(Icons.search,size: 35,),hintText: ('Search location')),
                           ),
                        ),
                        
             ),
             
             Expanded(child: ListView.builder(itemCount: 7,itemBuilder: (context, index) {
              return Padding(
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
                        
                        child: Text('Supplyco store Manjeri,Eranad Thaluk, 676509,Malappuram(Dt),Manjeri-Nilambur Rod',style: GoogleFonts.abyssinicaSil(fontSize:15),)),
                    ),
                    Column(
                      children: [
                        ElevatedButton(style: ButtonStyle(
                        //elevation:MaterialStatePropertyAll(8),
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(233, 135, 133, 133)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.black))),
                                           // minimumSize:MaterialStatePropertyAll(Size(10,10)) 
                                          ),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const supplycostocks()));
                          }, child: Text("select",style: GoogleFonts.abyssinicaSil(fontSize:18,color:Colors.black),)),
                           IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Color.fromARGB(255, 242, 146, 37),size: 25,))
                      ],
                    )
                  ],
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