import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi/booklab.dart';
import 'package:stockit/neethi/neethi3.dart';
import 'package:stockit/neethi/offerlab.dart';
import 'package:stockit/neethi/offermedcine.dart';

class offerall extends StatefulWidget {
  const offerall({super.key});

  @override
  State<offerall> createState() => _offerallState();
}

class _offerallState extends State<offerall> {
  //int _selectedindex = 0;
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
          'Offers',
          style: GoogleFonts.inknutAntiqua(fontSize: 30),
        ),
        
        backgroundColor: const Color.fromARGB(136, 255, 255, 255),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width, //color: Colors.black,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pharmacy.png'), fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 110, left: 20, right: 20, bottom: 25),
                  child: Container(
                    color:  const Color.fromARGB(178, 233, 231, 231),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Row(
                            children: [
                              ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 28, 209, 179))),
                              onPressed: (){}, child: Text('All',style: GoogleFonts.inknutAntiqua(fontSize:15,color:Colors.black),)),
                            SizedBox(width: 5,),
                             ElevatedButton(onPressed: (){
                               Navigator.push(context,
                                       MaterialPageRoute(builder:(context)=> offermedicine()),);
                             }, child: Text('Medicine',style: GoogleFonts.inknutAntiqua(fontSize:15,color:Colors.black),)),
                            SizedBox(width: 5,),
                            ElevatedButton(onPressed: (){
                               Navigator.push(context,
                                       MaterialPageRoute(builder:(context)=> offerlab()),);
                            }, child: Text('Lab Test',style: GoogleFonts.inknutAntiqua(fontSize:15,color:Colors.black),)),
                            ],
                          ),
                        ),
                         Expanded(child: ListView.builder(itemCount: 5,itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    child: Container(height: 130,width: 350,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),border:Border.all(width: 1,color: Colors.black)),
                    child:Column(children: [ 
                       Padding(
                         padding: const EdgeInsets.only(right: 60),
                         child: Text('Complete Heart Health Checkup',style: GoogleFonts.inknutAntiqua(fontSize:12,),),
                       ),
                        Row(
                         children: [
                           Icon(Icons.currency_rupee,size: 19,),
                           Text('2199',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                           SizedBox(width:10,),
                           Icon(Icons.currency_rupee,size: 15,color: Colors.grey[400],),
                           Text('3746',style: TextStyle(decorationColor: Colors.grey[400],
                           decoration: TextDecoration.lineThrough,
                            fontSize:15,fontWeight: FontWeight.bold,color: Colors.grey[400]),
                            ),
                             SizedBox(width:20),
                           Text('41%OFF',style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
                             SizedBox(height: 45,width: 73,
                        child: Padding(
                          padding: const EdgeInsets.only(top:20),
                          child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(189, 130, 240, 221))),onPressed: (){
                             Navigator.push(context,
                                       MaterialPageRoute(builder:(context)=> booklab()),);
                                          
                          }, child:Text('Book',style: TextStyle(fontSize:10 ,color: Colors.black,fontWeight: FontWeight.w600))
                          ),
                        ),
                      ),
                      
                    
                          
                           
                         ],
                         
                        ),
                      
                        Divider(color: Colors.black),
                        
                    
                        Row(
                          children: [
                            Image.asset('images/Document.png',scale: 1.5,),
                            Text('Reports in 10Hrs',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: IconButton(onPressed: (){}, icon:Icon(Icons.favorite,size: 20,color: Colors.amber[600],)),
                          )
                          ],
                        )
                    ],)
                    ),
                  );
                },))
                      ],
                    ),
                  ),
                ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     showUnselectedLabels: true,
      //     elevation: 0,
      //     backgroundColor: const Color.fromARGB(139, 255, 255, 255),
      //     items: [
      //       const BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.home,
      //             size: 35,
      //           ),
      //           label: ('Home')),
           
      //       const BottomNavigationBarItem(
      //           icon: ImageIcon(
      //         AssetImage('images/Lab Items.png'),size: 30,
              
      //       ),
      //       label: ('Lab Test')),
      //        const BottomNavigationBarItem(
      //           icon: ImageIcon(
      //         AssetImage('images/health.png'),size: 30,
              
      //       ),
      //       label: ('Health Care')),
      //       const BottomNavigationBarItem(
      //           icon: ImageIcon(
      //         AssetImage('images/Discount.png'),size: 30,
              
      //       ),
      //       label: ('Offer')),
      //       const BottomNavigationBarItem(
      //           icon: ImageIcon(
      //         AssetImage('images/Cart.png'),size: 30,
              
      //       ),
      //       label: ('Cart')),
             
             
      //     ],
      //     currentIndex: _selectedindex,
      //     selectedItemColor: const Color.fromARGB(255, 196, 145, 6),
      //     unselectedItemColor: Colors.black,
      //     onTap: (index) {
      //       setState(() {
      //         _selectedindex = index;
      //       });
      //     }),
    );
  }
}