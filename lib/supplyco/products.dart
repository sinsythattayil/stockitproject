import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                extendBodyBehindAppBar: true,
      appBar: AppBar(
         leading: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_ios_sharp) ),
        title: Text(
          'Products',
          style:GoogleFonts.inknutAntiqua(fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(136, 255, 255, 255),
      ),
       body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/image 5.png'), fit: BoxFit.cover)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 80, bottom: 30, left: 30, right: 30),
          child: Container(
            color: const Color.fromARGB(181, 12, 12, 12),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, right: 20, bottom: 20),
                            child: Container(
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
                                      padding: const EdgeInsets.only(left: 20,bottom: 10),
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
                                             const Padding(
                                               padding: EdgeInsets.only(left: 8),
                                               child: Text('1 kg',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500)),
                                             ),
                                                  Row(
                                                    children: [
                                                      ElevatedButton(style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),foregroundColor: MaterialStatePropertyAll(Colors.white)),
                                                      onPressed: (){}, child: const Text('Choose',style: TextStyle(fontSize: 15,),)),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Text('Available',style: GoogleFonts.abyssinicaSil(fontSize:20,color:Colors.green),),
                                                      )
                                                    ],
                                                  )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          )),
                ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 65),
                          child: SizedBox(
                            height: 40,
                            width: 130,
                            child: ElevatedButton(style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 227, 131, 52)),foregroundColor: MaterialStatePropertyAll(Colors.black)),
                              onPressed: (){}, child: Text('Order',style: GoogleFonts.inknutAntiqua(fontSize:20),)),
                          ),
                        )
              ],
            ),
                  
          ),
        ),
      ),
       extendBody: true,
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
                icon: Icon(
                  Icons.library_books_rounded,
                  size: 35,
                ),
                label: ('Items')),
            const BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits_rounded, size: 35),
                label: ('Orders')),
                const BottomNavigationBarItem(
                icon: Icon(Icons.local_offer, size: 35),
                label: ('Special item')),
          ],
          currentIndex: _selectedindex,
          selectedItemColor: const Color.fromARGB(255, 100, 74, 1),
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              _selectedindex = index;
            });
          }),
    );
  }
}