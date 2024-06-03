import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class smorderview extends StatefulWidget {
  const smorderview({super.key});

  @override
  State<smorderview> createState() => _smorderviewState();
}

class _smorderviewState extends State<smorderview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(onPressed: (){
          Navigator.pop(context);
         }, icon:Icon(Icons.arrow_back_ios_sharp) ),
         title: Text(
            'Orders',
            style: GoogleFonts.abrilFatface(fontSize: 20),
          ),
        // ss
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/image 5.png'), fit: BoxFit.cover)),
        child: Padding(
          padding:
              const EdgeInsets.only( bottom: 30, left: 10, right: 10),
          child: Container(
            color: const Color.fromARGB(181, 12, 12, 12),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 15, right: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(185, 255, 255, 255)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10, left: 10,),
                                      child: Image.asset('images/race.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,bottom: 10),
                                      child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Rice',
                                              style: GoogleFonts.inknutAntiqua(
                                                  fontSize: 20)),
                                          const Row(
                                            children: [
                                              Icon(Icons.currency_rupee_sharp),
                                              Text(
                                                '10/Kg',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500),
                                              )
                                            ],
                                          ),
                                             Padding(
                                               padding: const EdgeInsets.only(left: 8),
                                               child: Text('2 Kg/Person',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500)),
                                             ),
                                               Padding(
                                               padding: const EdgeInsets.only(left: 8),
                                               child: Text('Date:',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500)),
                                             ),  
                                             Padding(
                                               padding: const EdgeInsets.only(left: 60),
                                               child: Row(
                                                 children: [
                                                   IconButton(onPressed: (){}, icon: Icon(Icons.cancel,color: Colors.red,size: 30,)),
                                                   IconButton(onPressed: (){}, icon: Icon(Icons.verified,color: Colors.green,size: 30,))
                                                 ],
                                               ),
                                             )  
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          )),
                ),
                        
              ],
            ),
                  
          ),
        ),
      ),
    );
  }
}