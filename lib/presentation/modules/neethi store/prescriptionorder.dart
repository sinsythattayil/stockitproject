import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class prescriptionorder extends StatefulWidget {
  const prescriptionorder({super.key});

  @override
  State<prescriptionorder> createState() => _prescriptionorderState();
}

class _prescriptionorderState extends State<prescriptionorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Container(
      height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width, //color: Colors.black,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pharmacy.png'), fit: BoxFit.cover)),
                child: Expanded(child: ListView.builder(itemCount: 5,itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    child: Container(
                      height: 450,width: 200,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/prescriptionimg.png'),fit: BoxFit.cover),
                      color: const Color.fromARGB(255, 244, 243, 243),borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: Colors.black)),
                     child: Padding(
                       padding: const EdgeInsets.only(top: 370,left: 100),
                       child: Row(
                        children: [
                          ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff57C1AE))),
                          onPressed: (){}, child: Text('Conform',style: GoogleFonts.abyssinicaSil(fontSize:15,color:Colors.white),)),
                          SizedBox(width: 10,),
                           ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff57C1AE))),
                                onPressed: (){}, child: Text('Cancell',style: GoogleFonts.abyssinicaSil(fontSize:15,color:Colors.redAccent),)),
                        ],
                       ),
                     ),
                    ),
                  );
                },),),
    ),

    );
  }
}