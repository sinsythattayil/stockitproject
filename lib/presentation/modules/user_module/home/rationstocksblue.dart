import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/presentation/common/special.dart';
import 'package:stockit/presentation/modules/user_module/home/ration4.dart';

class rationstockblue extends StatefulWidget {
  const rationstockblue({super.key});

  @override
  State<rationstockblue> createState() => _rationstockblueState();
}

class _rationstockblueState extends State<rationstockblue> {
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
            'Blue card',
            style: GoogleFonts.inknutAntiqua(fontSize: 25),
          ),
          
          backgroundColor: const Color.fromARGB(136, 255, 255, 255),
        ),
         body: TabBarView(children: [
        blue(),
        specialitem(),
        
          
        ],),
      ),
    );
  }
}