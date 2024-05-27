import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/common/special.dart';
import 'package:stockit/maveli/maveli.dart';
import 'package:stockit/maveli/mproduct.dart';

class mavelistocks extends StatefulWidget {
  const mavelistocks({super.key});

  @override
  State<mavelistocks> createState() => _mavelistocksState();
}

class _mavelistocksState extends State<mavelistocks> {
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
                
              )),
          title: Text(
            'Maveli Store',
            style: GoogleFonts.inknutAntiqua(fontSize: 30),
          ),
          
          backgroundColor: const Color.fromARGB(136, 255, 255, 255),
        ),
        body: TabBarView(children: [
        mproduct(),
        specialitem(),
        
          
        ],),
      ),

    );
  }
}