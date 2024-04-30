import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/common/profile.dart';
import 'package:stockit/neethi/appinfo.dart';
import 'package:stockit/neethi/neesettings.dart';
import 'package:stockit/neethi/notificationee.dart';
import 'package:stockit/neethi/nprofile.dart';
import 'package:stockit/neethi/ordernee.dart';
import 'package:stockit/neethi/reivewNee.dart';

class menuneethi extends StatefulWidget {
  const menuneethi({super.key});

  @override
  State<menuneethi> createState() => _menuneethiState();
}

class _menuneethiState extends State<menuneethi> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [const Padding(padding: EdgeInsets.only(right: 200,top: 20),
        child: const CircleAvatar(
          radius: 45,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('images/circleavathar.png'),
            
          ),
        ),
        ),
        Padding(padding: EdgeInsets.only(top: 10,left:50),
        child: Text('sharika',style: GoogleFonts.abrilFatface(fontSize:20,color:Colors.white),),),
        SizedBox(height: 30,),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>nprofilr(),));
          },
          leading: Image.asset('images/User.png',scale: 1,),
          title: Text('Profile',style: GoogleFonts.abhayaLibre(fontSize:15,color:Colors.white)),
        ),
        
        Divider(),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => reviewnee(),));
          },
          leading: Image.asset('images/review.png',scale: 1,),
          title: Text('Review/Feedback',style: GoogleFonts.abhayaLibre(fontSize:15,color:Colors.white)),
        ),
        Divider(),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => neesettings(),));
          },
          leading: Image.asset('images/Settings.png',scale: 1,),
          title: Text('Settings',style: GoogleFonts.abhayaLibre(fontSize:15,color:Colors.white)),
        ),
        Divider(),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => appinfoneethi(),));
          },
          leading: Image.asset('images/appinfo.png',scale: 1,),
          title: Text('AppInfo',style: GoogleFonts.abhayaLibre(fontSize:15,color:Colors.white)),
        ),
        Divider(),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => orderneethi(),));
          },
          leading: Container(height: 35,width: 35,decoration: BoxDecoration(color: Colors.black ),
          child: Image(image: AssetImage('images/orderbasket.png'),fit: BoxFit.cover,),),
          title: Text('Orders',style: GoogleFonts.abhayaLibre(fontSize:15,color:Colors.white)),
        ),
        Divider(),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => notificationnee(),));
          },
          leading: Image.asset('images/Notification.png',scale: 1.3,),
          title: Text('Notification',style: GoogleFonts.abhayaLibre(fontSize:15,color:Colors.white)),
        ),
        Divider(),
         ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => profile(),));
          },
          leading: Image.asset('images/logout.png',scale: 1,),
          title: Text('Logout',style: GoogleFonts.abhayaLibre(fontSize:15,color:Colors.white)),
        ),
        Divider(),
        ],
      ),
    );
    
  }
}