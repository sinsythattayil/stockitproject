import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/presentation/modules/user_module/home/ration2.dart';

class favoritestore extends StatefulWidget {
  const favoritestore({super.key});

  @override
  State<favoritestore> createState() => _favoritestoreState();
}

class _favoritestoreState extends State<favoritestore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(139, 255, 255, 255),toolbarHeight: 50,
        title: Text('Ration Store',style: GoogleFonts.inknutAntiqua(fontSize:25),),
        leading: IconButton(onPressed: (){
       Navigator.pop(context, );
                             
                              
    }, icon: const Icon(Icons.arrow_back_ios,color: Colors.black,))
      ),
    body:   SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/image 5.png'),fit: BoxFit.cover)),
            child: Column(children: [
              SizedBox(height: 90,),
               
               
               Expanded(child: ListView.builder(itemCount: 7,itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    
                  decoration: BoxDecoration(border: Border.all(
                    width: 1,
                    color: Colors.black,),borderRadius: BorderRadius.circular(7),color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          
                          child: Text('Ration Store Munduparamba,Eranad Thaluk,676509,Malappuram(Dt),Malappuram-Manjeri Rod',style: GoogleFonts.abyssinicaSil(fontSize:15),)),
                      ),
                      ElevatedButton(style: ButtonStyle(
                      //elevation:MaterialStatePropertyAll(8),
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(233, 135, 133, 133)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.black))),
                     // minimumSize:MaterialStatePropertyAll(Size(10,10)) 
                    ),
                        onPressed: (){
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>ration2()));
                        }, child: Text("select",style: GoogleFonts.abyssinicaSil(fontSize:18,color:Colors.black),))
                    ],
                  ),
                  ),
                );
                  
        
               }))
            ],),
            
          ),
           
        ],),
      ),
    );
  }
}