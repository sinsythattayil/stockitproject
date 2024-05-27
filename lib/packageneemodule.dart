import 'package:flutter/material.dart';
import 'package:stockit/neethi%20store/neethihome.dart';
import 'package:stockit/neethi%20store/neethioffer.dart';
import 'package:stockit/neethi%20store/nehealthcare.dart';
import 'package:stockit/neethi%20store/nelabtest.dart';

import 'package:stockit/neethi%20store/ordersneethi.dart';
import 'package:stockit/neethi/cart.dart';
import 'package:stockit/neethi/labtest.dart';
import 'package:stockit/neethi/neethi3.dart';
import 'package:stockit/neethi/offer.dart';
import 'package:stockit/neethi/topselling.dart';
import 'package:stockit/package.dart';

class packageneemodule extends StatefulWidget {
  int indexnum=0;
   packageneemodule({super.key,required this.indexnum});

  @override
  State<packageneemodule> createState() => _packageneemoduleState();
}

class _packageneemoduleState extends State<packageneemodule> {
   final _pages=[
    
   neethihome(),
    const nelabtest(),
    const nehealthcare(),
    const neethioffer(),
    const ordernee()
    
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _pages[widget.indexnum],
      bottomNavigationBar:mynav(
        index:widget.indexnum,
        onTap:(index){
        setState(() {
          widget.indexnum=index;
        });
      }
        )
    );
  }
}
Widget mynav({
  int? index,
  void Function(int)?onTap,
  selectedcolor,
})
{
  return BottomNavigationBar(
    showUnselectedLabels: true,
    currentIndex: index!,
    selectedItemColor: Color.fromARGB(255, 237, 176, 11),
    unselectedItemColor: Colors.black,
    showSelectedLabels: true,
    onTap: onTap ,
    items: [
       const BottomNavigationBarItem(
        backgroundColor: Colors.white,
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: ('Home')),
           
            const BottomNavigationBarItem(
              backgroundColor: Colors.white,
                icon: ImageIcon(
              AssetImage('images/Lab Items.png'),size: 30,
            ),
            label: ('Lab Test')),
             const BottomNavigationBarItem(
              backgroundColor: Colors.white,
                icon: ImageIcon(
              AssetImage('images/health.png'),size: 30,
              
            ),
            label: ('Health Care')),
            const BottomNavigationBarItem(
              backgroundColor: Colors.white,
                icon: ImageIcon(
              AssetImage('images/Discount.png'),size: 30,
              
            ),
            label: ('Offer')),
            const BottomNavigationBarItem(
              backgroundColor: Colors.white,
                icon: ImageIcon(
              AssetImage('images/Ordersneemodle.png'),size: 30,
              
            ),
            label: ('Orders')),
    ]);
    

}