import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi/booklab.dart';
import 'package:stockit/neethi/offer.dart';
import 'package:stockit/neethi/offerlab.dart';

class offermedicine extends StatefulWidget {
  const offermedicine({super.key});

  @override
  State<offermedicine> createState() => _offermedicineState();
}

class _offermedicineState extends State<offermedicine> {
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              size: 35,
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
                  padding: const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 25),
                  child: Container(
                    color:  const Color.fromARGB(178, 233, 231, 231),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right: 2,left: 2),
                          child: Row(
                            children: [
                              ElevatedButton(onPressed: (){
                                 Navigator.push(context,
                                       MaterialPageRoute(builder:(context)=> offerall()),);
                              }, child: Text('All',style: GoogleFonts.inknutAntiqua(fontSize:15,color:Colors.black),)),
                            SizedBox(width: 5,),
                             ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 28, 209, 179))),
                              onPressed: (){}, child: Text('Medicine',style: GoogleFonts.inknutAntiqua(fontSize:15,color:Colors.black),)),
                            SizedBox(width: 5,),
                            ElevatedButton(
                              onPressed: (){
                                 Navigator.push(context,
                                       MaterialPageRoute(builder:(context)=> offerlab()),);
                              }, child: Text('Lab Test',style: GoogleFonts.inknutAntiqua(fontSize:15,color:Colors.black),)),
                            ],
                          ),
                        ),
                         Expanded(child: ListView.builder(itemCount: 5,itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    child: Container(height: 120,width: 300,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),border:Border.all(width: 1,color: Colors.black)),
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
                             Text('66%OFF',style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
                            ],
                           
                          ),
                        ),
                        Divider(color: Colors.black,thickness:0.3,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(189, 130, 240, 221))),onPressed: (){
                                   Navigator.push(context,
                                             MaterialPageRoute(builder:(context)=> booklab()),);
                                                
                                }, child:Text('Order',style: TextStyle(fontSize:13 ,color: Colors.black,fontWeight: FontWeight.w600))
                                ),
                            ),
                              Padding(
                             padding: const EdgeInsets.only(left: 125),
                             child: IconButton(onPressed: (){}, icon:Icon(Icons.favorite,size: 26,color: Colors.amber[600],)),
                           )
                          ],
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
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          elevation: 0,
          backgroundColor: const Color.fromARGB(139, 255, 255, 255),
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: ('Home')),
           
            const BottomNavigationBarItem(
                icon: ImageIcon(
              AssetImage('images/Lab Items.png'),size: 30,
              
            ),
            label: ('Lab Test')),
             const BottomNavigationBarItem(
                icon: ImageIcon(
              AssetImage('images/health.png'),size: 30,
              
            ),
            label: ('Health Care')),
            const BottomNavigationBarItem(
                icon: ImageIcon(
              AssetImage('images/Discount.png'),size: 30,
              
            ),
            label: ('Offer')),
            const BottomNavigationBarItem(
                icon: ImageIcon(
              AssetImage('images/Cart.png'),size: 30,
              
            ),
            label: ('Cart')),
             
             
          ],
          currentIndex: _selectedindex,
          selectedItemColor: const Color.fromARGB(255, 196, 145, 6),
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              _selectedindex = index;
            });
          }),

    );
  }
}