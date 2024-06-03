import 'package:flutter/material.dart';
import 'package:stockit/presentation/modules/admin/adminlogin.dart';
import 'package:stockit/presentation/modules/mavelistore%20module/maveli_login.dart';
import 'package:stockit/presentation/modules/neethi%20store/neethi_login.dart';
import 'package:stockit/presentation/modules/rationstore.dart/ration_login.dart';
import 'package:stockit/presentation/modules/supplycostore.dart/suplyco_login.dart';
import 'package:stockit/presentation/modules/user_module/login/stockit2.dart';
import 'package:stockit/presentation/modules/user_module/login/user_login.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Customebutton(pageCustructor:AdminLogin() , title: "Admin"),
          Customebutton(pageCustructor:UserLogin() , title: "User"),
          Customebutton(pageCustructor: RationLogin(), title: "Ration"),
          Customebutton(pageCustructor: MaveliLogin(), title: "Maveli"),
          Customebutton(pageCustructor:SuplycoLogin() , title: "Supplyco"),
          Customebutton(pageCustructor:NeethiLogin() , title: "Neethi"),
        ],
      ),
    );
  }
}

class Customebutton extends StatelessWidget {
  String title;
dynamic pageCustructor;

  Customebutton({super.key, required this.pageCustructor, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: ElevatedButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>pageCustructor));
      }, child: Text(title)),
    );
  }
}
