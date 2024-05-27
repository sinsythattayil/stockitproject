import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi%20store/neethimenu.dart';
import 'package:stockit/neethi%20store/neofferlab.dart';
import 'package:stockit/neethi%20store/neoffermedicine.dart';
import 'package:stockit/neethi%20store/neofferproduct.dart';

class neethioffer extends StatefulWidget {
  const neethioffer({super.key});

  @override
  State<neethioffer> createState() => _neethiofferState();
}

class _neethiofferState extends State<neethioffer> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: neethimenu(),
         // extendBodyBehindAppBar: true,
        appBar: AppBar(
          bottom: TabBar(indicatorColor: Colors.black,labelColor: Colors.black,tabs:[
            
            Tab(child: Text('Product'),),
            Tab(child: Text('Medicine')),
            Tab(child: Text('Lab test'),)
          ] ),
          leading: Builder(builder: (context) {
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: Icon(Icons.menu,color: Colors.black,));
          },),
          title: Text(
            'Orders',
            style: GoogleFonts.inknutAntiqua(fontSize: 30),
          ),
        backgroundColor: Color.fromARGB(136, 255, 255, 255),
           
        ),
        body: TabBarView(children: [
          neofferproduct(),
        neoffermedicine(),
        neofferlab()
        ],),
      ),

    );
  }
}