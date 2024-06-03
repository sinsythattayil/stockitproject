import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rblue extends StatefulWidget {
  const rblue({super.key});

  @override
  State<rblue> createState() => _rblueState();
}

class _rblueState extends State<rblue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/image 5.png'), fit: BoxFit.cover)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 30, left: 30, right: 30),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: Colors.black),
                                color: Color.fromARGB(206, 255, 255, 255)),
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
                                            '8/Kg',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                         const Padding(
                                           padding: EdgeInsets.only(left: 8),
                                           child: Text('2 Kg/Person',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500)),
                                         ),
                                              // ElevatedButton(style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),foregroundColor: MaterialStatePropertyAll(Colors.white)),
                                              // onPressed: (){}, child: const Text('Choose',style: TextStyle(fontSize: 15,),))
                                    ],
                                  ),
                                )
                              ],
                            )),
                            SizedBox(height: 10,)
                      ],
                    )),
              ),
                      
            ],
          ),
        ),
      ),
      

    );
  }
}