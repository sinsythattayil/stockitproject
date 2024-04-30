import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi/healthserch.dart';

class topsellind extends StatefulWidget {
  const topsellind({super.key});

  @override
  State<topsellind> createState() => _topsellindState();
}

class _topsellindState extends State<topsellind> {
  int _selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              size: 35,
            )),
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
            SizedBox(
              height: 70,
            ),
             SizedBox(height: 50,width: 335,
               child: TextFormField(cursorColor: Colors.black,onTap: () {
                  Navigator.push(context,
             MaterialPageRoute(builder:(context)=> healthsearch()),);
                },
                                   decoration: InputDecoration(focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black)) ,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                   fillColor: Color.fromARGB(186, 255, 255, 255),filled: true,prefixIcon: Icon(Icons.search,size: 35,),hintText: ('Search for test and pakages')),
                                   ),
             ),
             SizedBox(height: 15,),
             Container(
              height: 450,width: 335,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(215, 0, 0, 0),),
              child: Padding(
                padding: const EdgeInsets.only(top: 8,left: 17),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 85),
                      child: Text('Top Selling Categories',style: GoogleFonts.inknutAntiqua(fontSize:18,color:Colors.white),),
                    ),
                    // Expanded(child: ListView.builder(itemCount: 5,itemBuilder:(context, index) {
                    //   return Container(
                    //     height: 10,width: 10,decoration: BoxDecoration(color: Colors.blueAccent,image: DecorationImage(image: AssetImage('images/glucomtr.png'),fit: BoxFit.cover)),
                    //   );
                    // }, ))
                    SizedBox(height: 8,),
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
                  ],),
                ),
              ),
             )
          ],
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