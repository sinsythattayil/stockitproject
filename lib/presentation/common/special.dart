import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/presentation/common/ordercmplt.dart';

class specialitem extends StatefulWidget {
  const specialitem({super.key});

  @override
  State<specialitem> createState() => _specialitemState();
}

class _specialitemState extends State<specialitem> {
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   leading: IconButton(onPressed: (){
      //     //Navigator.pop(context);
      //     }, icon: Icon(Icons.menu)) ,
      //   title: Text('Special Item'),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/image 5.png'), fit: BoxFit.cover)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 80, bottom: 30, left: 30, right: 30),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                                height: 140,
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        185, 255, 255, 255)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left: 10,
                                      ),
                                      child: Image.asset('images/suger.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('suger',
                                              style: GoogleFonts.inknutAntiqua(
                                                  fontSize: 20)),
                                          const Row(
                                            children: [
                                              Icon(Icons.currency_rupee_sharp),
                                              Text(
                                                '20/Kg',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Text('1Kg/Person',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                          Row(
                                            children: [
                                              ElevatedButton(
                                                  style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                              (Color.fromARGB(
                                                                  255,
                                                                  227,
                                                                  131,
                                                                  52))),
                                                      foregroundColor:
                                                          MaterialStatePropertyAll(
                                                              Colors.white)),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const ordercomplt()));
                                                  },
                                                  child: Text(
                                                    'Order',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  )),
                                                  Text('White card',style: TextStyle(fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        )),
              ),
            ],
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
