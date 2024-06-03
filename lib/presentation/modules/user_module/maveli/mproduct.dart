import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/presentation/common/ordercmplt.dart';

class mproduct extends StatefulWidget {
  const mproduct({super.key});

  @override
  State<mproduct> createState() => _mproductState();
}

class _mproductState extends State<mproduct> {
  int _selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
     
       body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/image 5.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(height: 140,),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Container(height: 140,width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(185, 255, 255, 255)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10,),
                                child: Image.asset('images/image 6.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5,),
                                child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Suger',
                                        style: GoogleFonts.inknutAntiqua(
                                            fontSize: 20)),
                                    const Row(
                                      children: [
                                        Icon(Icons.currency_rupee_sharp),
                                        Text(
                                          '22/Kg',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                        Padding(
                                         padding: EdgeInsets.only(left: 5),
                                         child: Row(
                                           children: [
                                             Text('1 kg',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500)),
                                                  Padding(
                                                  padding: EdgeInsets.only(left: 10),
                                                  child: Text('Available',style: GoogleFonts.abyssinicaSil(fontSize:20,color:Colors.green),),
                                                )
                                           ],
                                         ),
                                       ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 60),
                                              child: ElevatedButton(style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),foregroundColor: MaterialStatePropertyAll(Colors.white)),
                                              onPressed: (){}, child: const Text('Choose',style: TextStyle(fontSize: 15,),)),
                                            )
                                  ],
                                ),
                              )
                            ],
                          )),
                          SizedBox(height: 10,)
                    ],
                  )
                      ),
            ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,top: 10),
                      child: SizedBox(
                        height: 40,
                        width: 130,
                        child: ElevatedButton(style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 227, 131, 52)),foregroundColor: MaterialStatePropertyAll(Colors.black)),
                          onPressed: (){
                             Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ordercomplt()));
                          }, child: Text('Order',style: GoogleFonts.inknutAntiqua(fontSize:20),)),
                      ),
                    )
          ],
        ),
      ),
      //  extendBody: true,
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
      //           icon: Icon(
      //             Icons.library_books_rounded,
      //             size: 35,
      //           ),
      //           label: ('Items')),
      //       const BottomNavigationBarItem(
      //           icon: Icon(Icons.production_quantity_limits_rounded, size: 35),
      //           label: ('Orders')),
      //           const BottomNavigationBarItem(
      //           icon: Icon(Icons.local_offer, size: 35),
      //           label: ('Special item')),
      //     ],
      //     currentIndex: _selectedindex,
      //     selectedItemColor: const Color.fromARGB(255, 100, 74, 1),
      //     unselectedItemColor: Colors.black,
      //     onTap: (index) {
      //       setState(() {
      //         _selectedindex = index;
      //       });
      //     }),
    );
  }
}