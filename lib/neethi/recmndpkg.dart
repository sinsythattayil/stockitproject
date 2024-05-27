import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi/booklab.dart';

class rcmndpkg extends StatefulWidget {
  const rcmndpkg({super.key});

  @override
  State<rcmndpkg> createState() => _rcmndpkgState();
}

class _rcmndpkgState extends State<rcmndpkg> {
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
        
         backgroundColor: const Color.fromARGB(136, 255, 255, 255),
    ),
    body: Container(
      height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover),
           ),
           child: Padding(
             padding: const EdgeInsets.only(top: 89),
             child: Container(height: 400,width: 400,
              color: Color.fromARGB(178, 233, 231, 231),
              child: Column(children: [const SizedBox(height: 20,width: 30,),
              SizedBox(
                height: 50,width: 350,
                child: TextField(
                  cursorColor: Colors.black,
                                 decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                 fillColor:Color.fromARGB(255, 237, 234, 234),filled: true,prefixIcon: const Icon(Icons.search,size: 35,),hintText: ('Search for test and pakages')),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.only(right: 100,top: 10),
                child: Text('Recommended Packages',style: GoogleFonts.abrilFatface(fontSize:20,color:Colors.black,),),
              ),
              Expanded(child: ListView.builder(itemCount: 7,itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5,left: 20,right: 20,),
                  child: Container(height: 150,width: 300,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),border:Border.all(width: 1,color: Colors.black)),
                  child:Column(children: [ 
                     Padding(
                       padding: const EdgeInsets.only(right: 60),
                       child: Text('Complete Heart Health Checkup',style: GoogleFonts.inknutAntiqua(fontSize:15,),),
                     ),
                      Row(
                       children: [
                         Icon(Icons.currency_rupee,size: 25,),
                         Text('2199',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                         SizedBox(width:10,),
                         Icon(Icons.currency_rupee,size: 18,color: Colors.grey[400],),
                         Text('3746',style: TextStyle(decorationColor: Colors.grey[400],
                         decoration: TextDecoration.lineThrough,
                          fontSize:19,fontWeight: FontWeight.bold,color: Colors.grey[400]),
                          ),
                           SizedBox(width:20),
                         Text('41%OFF',style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold),),
                  
                         Padding(
                           padding: const EdgeInsets.only(top: 20),
                           child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 173, 242, 240))),
                            onPressed: (){
                              Navigator.push(context,
           MaterialPageRoute(builder:(context)=>booklab()),);
                            }, 
                           child: Text('Book',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),)),
                         ),
                         
                       ]
                                         ),
                      Divider(color: Colors.black),
                      
                  
                      Row(
                        children: [
                          Image.asset('images/Document.png'),
                          Text('Reports in 10Hrs',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
                          //IconButton(onPressed: (){}, icon:Icon(Icons.favorite,size: ,))
                        ],
                      )
                  ],)
                  ),
                );
              },))
              ],),
             ),
           ),
        ),
  
    );
  }
}