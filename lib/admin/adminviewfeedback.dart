import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class adminfeedback extends StatefulWidget {
  const adminfeedback({super.key});

  @override
  State<adminfeedback> createState() => _adminfeedbackState();
}

class _adminfeedbackState extends State<adminfeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      appBar: AppBar(backgroundColor: Color.fromARGB(136, 255, 255, 255),
      leading: IconButton(onPressed: (){
         Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios_sharp)),
      title: Text('Feedbacks',style: GoogleFonts.abrilFatface(fontSize:23),),
      ),
     body: SingleChildScrollView(
       child: Column(
        children: [
              Container(
                 height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
              colors: [
       
              Color.fromARGB(255, 73, 49, 38),
              Color.fromARGB(255, 244, 119, 2)
            ]),
            ),
            child: Stack(
               children: [
                Expanded(child: ListView.builder(itemCount: 7,itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: Container(
                    
                      height: 245,width: 250,
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                    
                        
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 230,top: 20),
                                  child: Text('User Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 250,),
                                   child: Text('Email Id',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                 ),
                               
                                
                                
                                Container(height: 150,width: 340,decoration: BoxDecoration(color:Color.fromARGB(94, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(10)),)
                                      
                              ],
                            )
                            
                        ],
                      ),
                    ),
                  );
                },)),
               ] 
              
            ),
              )
       
        ],
       ),
     ),
    );
  }
}