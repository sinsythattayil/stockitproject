import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class labtest extends StatefulWidget {
  const labtest({super.key});

  @override
  State<labtest> createState() => _labtestState();
}

class _labtestState extends State<labtest> {
  int _selectedindex=0;
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
          'Pharmecy',
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
                child: SingleChildScrollView(
                  child: Column(children: [
                         const SizedBox(
                          height: 70,width: 50,
                         ),
                         Container(height: 255,width: 550,
                          color: const Color.fromARGB(219, 27, 223, 190), 
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 130,top: 10),
                                child: Text('Checkup based on Vital Organs',style: GoogleFonts.abrilFatface(fontSize:16),),
                              ),
                              //SizedBox(height: 15),
                              Row(
                                children: [
                                //   Container(height: 150,width: 150,
                                //   // color: Colors.white,
                                //   child: const Stack(children: [Image(image: AssetImage('images/heart.png'),fit: BoxFit.cover,),
                                //   Padding(
                                //     padding: EdgeInsets.only(left: 28),
                                //     child: Text('Heart',style: TextStyle(fontWeight: FontWeight.w900),),
                                //   )],)
                                // ),
                                const SizedBox(width: 10,),
                                Container(height: 85,width: 80,
                                decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/heart.png'),
                                fit: BoxFit.cover)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Heart',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),),
                                const SizedBox(width: 10,),
                                Container(height: 85,width: 80,
                                decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/lungs.png'),
                                fit: BoxFit.cover)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Lungs',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),),
                                const SizedBox(width: 10,),
                                Container(height: 85,width: 80,
                                decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/liver.png'),
                                fit: BoxFit.cover)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Liver',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),
                                ),
                                const SizedBox(width: 10,),
                                Container(height: 85,width: 80,
                                decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/kidney.png'),
                                fit: BoxFit.cover)),child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Kidney',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),
                                )
                                ],
                               
                              ),
                              const SizedBox(height: 13,),
                              Row(
                                children: [
                                  const SizedBox(width: 10,),
                                        Container(height: 85,width: 80,
                                        decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/fullbodycheckup.png'),
                                        fit: BoxFit.cover)),
                                        child: const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text('Full body checkup',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),
                                ),
                                        const SizedBox(width: 10,),
                                        Container(height: 85,width: 80,
                                        decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/jointpain.png'),
                                        fit: BoxFit.cover)),
                                        child: const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text('Joint Pain',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),
                                ),
                                        const SizedBox(width: 10,),
                                        Container(height: 85,width: 80,
                                        decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/thyroid.png'),
                                        fit: BoxFit.cover)),
                                        child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Thyroid',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),
                                ),
                                        const SizedBox(width: 10,),
                                        Container(height: 85,width: 80,
                                        decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/bones.png'),
                                        fit: BoxFit.cover)),
                                        child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Bones',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),
                                ),
                                ],
                              ) 
                            ],

                          ),
                         ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(height: 255,width: 550,
                            color: const Color.fromARGB(219, 122, 238, 219), 
                             child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 130,top: 10),
                                child: Text('Checkup based on Health concern',style: GoogleFonts.abrilFatface(fontSize:15),),
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                
                                const SizedBox(width: 10,),
                                Container(height: 85,width: 80,
                                decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/diabetes.png'),
                                fit: BoxFit.cover)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Diabetes',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),),
                                const SizedBox(width: 10,),
                                Container(height: 85,width: 80,
                                decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/Fever.png'),
                                fit: BoxFit.cover)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Fever',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),),
                                const SizedBox(width: 10,),
                                Container(height: 85,width: 80,
                                decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/cancerscreening.png'),
                                fit: BoxFit.cover)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Cancer Screening',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),
                                ),
                                const SizedBox(width: 10,),
                                Container(height: 85,width: 80,
                                decoration: const BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage('images/womwn.png'),
                                fit: BoxFit.cover)),child: const Padding(
                                  padding: EdgeInsets.only(left: 23),
                                  child: Text('Women',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                ),
                                )
                                ],
                               
                              ),
                             
                            ],

                          ),
                           ),
                        ),
                          
                  
                  ],),
                ),
    ),
     bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          elevation: 0,
          backgroundColor: const Color.fromARGB(215, 255, 255, 255),
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: ('Home')),
            const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/Lab Items.png'),
                  size: 30,
                ),
                label: ('Lab Test')),
            const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/health.png'),
                  size: 30,
                ),
                label: ('Health Care')),
            const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/Discount.png'),
                  size: 30,
                ),
                label: ('Offer')),
            const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/Cart.png'),
                  size: 30,
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