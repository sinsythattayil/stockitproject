import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Color.fromARGB(136, 255, 255, 255),
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_sharp)),
      title: Text('Notification',style: GoogleFonts.abrilFatface(fontSize:30),),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/image 5.png'),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 60,left:5,right: 5,bottom: 20),
          child: Container(color: Color.fromARGB(214, 0, 0, 0),
          child: Column(children: [
            Expanded(child: ListView.builder(itemCount: 3,itemBuilder: (context, index) {
             return Padding(
               padding: const EdgeInsets.only(top: 20,left: 30,right: 30),
               child: Container(height: 100,width: 50,
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: Colors.white)),
                  child: Column(
                    children: [
                      Row(
                        children: [Icon(Icons.notifications_active,color: Colors.yellow[800],),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 30),
                            child: Text('Your order cancelled,Please order again.',style: GoogleFonts.abyssinicaSil(fontSize:18,color:Colors.white),),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
             );
          }))
          ],)
          
          ),
          
          
        ),
      ),

    );
  }
}