import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/admin/adminmenu.dart';
import 'package:stockit/admin/maveliowners.dart';
import 'package:stockit/admin/neethiowners.dart';
import 'package:stockit/admin/rationowners.dart';
import 'package:stockit/admin/supplycoowners.dart';

class adminhome extends StatefulWidget {
  const adminhome({super.key});

  @override
  State<adminhome> createState() => _adminhomeState();
}

class _adminhomeState extends State<adminhome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
         drawer: adminmenu(),
        //extendBodyBehindAppBar: true,
        appBar: AppBar(
          bottom: TabBar(indicatorColor: Colors.black,labelColor: Colors.black,tabs:[
            
            Tab(child: Text('Ration'),),
            Tab(child: Text('Maveli ')),
            Tab(child: Text('Supplyco ')),
            Tab(child: Text('Neethi')),

          ] ),
          leading: Builder(builder: (context) {
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: Icon(Icons.menu,color: Colors.black,));
          },),
          title: Text(
            'Owners',
            style: GoogleFonts.inknutAntiqua(fontSize: 25),
          ),
        backgroundColor: Color.fromARGB(101, 255, 255, 255),
           
        ),
        body: TabBarView(children: [
        rationowners(),
          maveliowners(),
        supplycoowners(),
        neethiowners()
        ],),
      ),


    );
  }
}