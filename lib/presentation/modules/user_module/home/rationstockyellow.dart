import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/presentation/common/special.dart';
import 'package:stockit/presentation/modules/user_module/home/ration6.dart';

class rationstockyellow extends StatefulWidget {
  const rationstockyellow({super.key});

  @override
  State<rationstockyellow> createState() => _rationstockyellowState();
}

class _rationstockyellowState extends State<rationstockyellow> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
 bottom: TabBar(indicatorColor: Colors.black,labelColor: Colors.black,tabs:[
            
            Tab(child: Text('Stocks',style: TextStyle(fontSize: 20),),),
            Tab(child: Text('Special Item',style: TextStyle(fontSize: 20),)),
            
          ] ),
          leading: IconButton(
              onPressed: () {
                 Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                size: 25,
              )),
          title: Text(
            'white card',
            style: GoogleFonts.inknutAntiqua(fontSize: 30),
          ),
          
          backgroundColor: const Color.fromARGB(136, 255, 255, 255),
        ),
         body: TabBarView(children: [
        yellow(),
         specialitem(),
        
          
        ],),
      ),
    );
  }
}