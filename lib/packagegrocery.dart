import 'package:flutter/material.dart';
import 'package:stockit/common/order.dart';
import 'package:stockit/common/ordergrocery.dart';
import 'package:stockit/common/profile.dart';
import 'package:stockit/common/special.dart';
import 'package:stockit/home/favoritestre.dart';
import 'package:stockit/home/home2.dart';
import 'package:stockit/home/ration1.dart';
import 'package:stockit/home/specialitemall.dart';

import 'package:stockit/neethi/cart.dart';
import 'package:stockit/neethi/healthserch.dart';
import 'package:stockit/neethi/labtest.dart';
import 'package:stockit/neethi/neethi3.dart';
import 'package:stockit/neethi/offer.dart';

class packagesgro extends StatefulWidget {
   int indexnum=0;
   packagesgro({super.key,required this.indexnum});

  @override
  State<packagesgro> createState() => _packagesState();
}

class _packagesState extends State<packagesgro> {
 final _pages=[
    
   grocery(),
    const favoritestore(),
    const ordergrocery(),
    const profile()
    
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
                icon: Icon(
                  Icons.favorite,
                  size: 35,
                ),
                label: ('Favorite store')),
            const BottomNavigationBarItem(
        backgroundColor: Colors.white,
                icon: Icon(
                  Icons.library_books_rounded,
                  size: 35,
                ),
                label: ('Orders')),
                const BottomNavigationBarItem(
        backgroundColor: Colors.white,
                icon: Icon(
                  Icons.person_pin,
                  size: 35,
                ),
                label: ('Profile')),
            
    ]);
    

}