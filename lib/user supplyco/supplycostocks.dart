import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/common/special.dart';
import 'package:stockit/user%20supplyco/products.dart';
import 'package:stockit/user%20supplyco/supply1.dart';

class supplycostocks extends StatefulWidget {
  const supplycostocks({super.key});

  @override
  State<supplycostocks> createState() => _supplycostocksState();
}

class _supplycostocksState extends State<supplycostocks> {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
    length: 2,
    child: Scaffold(
      
       //extendBodyBehindAppBar: true,
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
            'Supplyco Store',
            style: GoogleFonts.inknutAntiqua(fontSize: 25),
          ),
          
          backgroundColor: Color.fromARGB(37, 255, 255, 255),
        ),
body: TabBarView(children: [
        product(),
        specialitem(),
        
          
        ],),
    ),
   );
  }
}