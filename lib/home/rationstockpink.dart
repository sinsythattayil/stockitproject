import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/common/special.dart';
import 'package:stockit/home/ration5.dart';

class rationstockpink extends StatefulWidget {
  const rationstockpink({super.key});

  @override
  State<rationstockpink> createState() => _rationstockpinkState();
}

class _rationstockpinkState extends State<rationstockpink> {
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
            'Pink card',
            style: GoogleFonts.inknutAntiqua(fontSize: 30),
          ),
          
          backgroundColor: const Color.fromARGB(136, 255, 255, 255),
        ),
         body: TabBarView(children: [
        pink(),
        specialitem(),
        
          
        ],),
      ),
    );
  }
}