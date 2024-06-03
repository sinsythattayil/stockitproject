import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/presentation/common/special.dart';
import 'package:stockit/presentation/modules/user_module/home/ration_list.dart';
import 'package:stockit/presentation/modules/user_module/home/ration3.dart';
import 'package:stockit/presentation/modules/user_module/home/ration4.dart';

class rationstocks extends StatefulWidget {
  const rationstocks({super.key});

  @override
  State<rationstocks> createState() => _rationstocksState();
}

class _rationstocksState extends State<rationstocks> {
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
            style: GoogleFonts.inknutAntiqua(fontSize: 25),
          ),
          
          backgroundColor: const Color.fromARGB(136, 255, 255, 255),
        ),
         body: TabBarView(children: [
        white(),
        specialitem(),
        
          
        ],),
      ),
    );
  }
}