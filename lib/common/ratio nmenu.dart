import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stockit/common/appinfo.dart';
import 'package:stockit/common/feedback.dart';
import 'package:stockit/common/notification.dart';
import 'package:stockit/common/order.dart';
import 'package:stockit/common/profile.dart';
import 'package:stockit/common/settings.dart';
import 'package:stockit/login/logpag.dart';

class rationmenu extends StatefulWidget {
  const rationmenu({super.key});

  @override
  State<rationmenu> createState() => _rationmenuState();
}

class _rationmenuState extends State<rationmenu> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
     String id = _auth.currentUser!.uid;
    return Drawer(
          backgroundColor: Colors.black,
        child: StreamBuilder(
            stream: _firestore.collection('firebase').doc(id).snapshots(),
            builder: (context, snapshot) {
              
              if(snapshot.connectionState == ConnectionState.waiting){
    return Center(child: CircularProgressIndicator(),);

   }

              DocumentSnapshot data = snapshot.data!;
              return ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 180, top: 20),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('images/circleavathar.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 30),
                    child: Text(
                      '${data['name']}',
                      style: GoogleFonts.abrilFatface(
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => profile(),
                          ));
                    },
                    leading: Image.asset(
                      'images/User.png',
                      scale: 1,
                    ),
                    title: Text('Profile',
                        style: GoogleFonts.abhayaLibre(
                            fontSize: 15, color: Colors.white)),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => feedback(),
                          ));
                    },
                    leading: Image.asset(
                      'images/review.png',
                      scale: 1,
                    ),
                    title: Text('Review/Feedback',
                        style: GoogleFonts.abhayaLibre(
                            fontSize: 15, color: Colors.white)),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => settings(),
                          ));
                    },
                    leading: Image.asset(
                      'images/Settings.png',
                      scale: 1,
                    ),
                    title: Text('Settings',
                        style: GoogleFonts.abhayaLibre(
                            fontSize: 15, color: Colors.white)),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => appinfo(),
                          ));
                    },
                    leading: Image.asset(
                      'images/appinfo.png',
                      scale: 1,
                    ),
                    title: Text('AppInfo',
                        style: GoogleFonts.abhayaLibre(
                            fontSize: 15, color: Colors.white)),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => orders(),
                          ));
                    },
                    leading: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Image(
                        image: AssetImage('images/orderbasket.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text('Orders',
                        style: GoogleFonts.abhayaLibre(
                            fontSize: 15, color: Colors.white)),
                  ),
                  
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => notification(),
                          ));
                    },
                    leading: Image.asset(
                      'images/Notification.png',
                      scale: 1.3,
                    ),
                    title: Text('Notification',
                        style: GoogleFonts.abhayaLibre(
                            fontSize: 15, color: Colors.white)),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () async {
                      SharedPreferences preferences =
                          await SharedPreferences.getInstance();
                      _auth.signOut().then((value) => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => logipage())));
                      preferences.clear();
                      log('Logout sucessfully' as num);
                    },
                    leading: Image.asset(
                      'images/logout.png',
                      scale: 1,
                    ),
                    title: Text('Logout',
                        style: GoogleFonts.abhayaLibre(
                            fontSize: 15, color: Colors.white)),
                  ),
                  Divider(),
                ],
              );
            }));
  }
}