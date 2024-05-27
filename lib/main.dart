import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stockit/admin/adminlogin.dart';
import 'package:stockit/businesslogic/firebase_options.dart';
import 'package:stockit/home/favoritestre.dart';
import 'package:stockit/home/home1.dart';
import 'package:stockit/login/logpag.dart';
import 'package:stockit/login/stockit1.dart';
import 'package:stockit/login/stockit4.dart';
import 'package:stockit/mavelistore%20module/mlogin.dart';
import 'package:stockit/mavelistore%20module/mwelcom.dart';
import 'package:stockit/neethi%20store/nelogin.dart';
import 'package:stockit/neethi/menunee.dart';
import 'package:stockit/neethi/neethi3.dart';
import 'package:stockit/neethi/nprofile.dart';

import 'package:stockit/rationstore.dart/rlogin.dart';
import 'package:stockit/rationstore.dart/rlogin2.dart';
import 'package:stockit/rationstore.dart/rorder.dart';
import 'package:stockit/supplycostore.dart/slogin.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 91, 12, 226)),
        useMaterial3: true,
      ),
      //home: mypage(),
    // home: MyWidget(),
    // home: project(),
 home: stockit1(),
//home: signin(),
//home: stockit1(),
// home: logipage(),
 //home: favoritestore(),
    //home: forgot(),
  //home: stockit1(),
  // home: reset(),
// home: home1(),
 //home: grocery(),
  // home: ration2(),
// home: white(),
// home: blue(),
 //home: pink(),
//home: yellow(),
//home: ordercomplt(),
//home: menu(),
 //home: supplyco1(),
  // home: NavigationPage(),
 //home: feedback(),
 //home: settings()
 //home: resetpass(),
 //home: appinfo(),
 // home: profile(),
//home: ration1(),
//home: orders(),
//home: specialitem(),
//home: notification(),
//home:details(),
//home: mavelistore(),
//home: mdetails(),s
//home: product(),
//home: mproduct(),
//home: suporder(),
//home: mavorder(),
//home: mavspecial(),
//home: supspecial(),
//home:neethi(),
//home: nelocation(),
//home: neethi3(),
//home: medicine(),
// home: labtest(),
 //home: popularlab(),
 //home: rcmndpkg(),
//home: bookingdetls() not,
//home: booklab(),
//home: ration2(),
//home:booksuccss(),
//home:offerall(),
//home: offerlab(),
//home:offermedicine(),
//home: medicinserch(),
//home: cart(),
//home: topsellind(),
//home: healthsearch(),
//home: sebamade(),
//home: orderproduct(),
//home: menuneethi(),
//home:nprofilr()
//home:reviewnee(),
//home: neesettings(),
//home: appinfoneethi(),
//home: orderneethi(),
//home: notificationnee(),

//------ration module-----
//home: rlogin1(),
//home: rlogin2(),
//home: productration(),
//home: rorder(),


//---maveli module---
//home: mwelcom(),
 //home: mlogin(),

  //--supplyco module-----
//home:slogin(),

//---neethi module---
//home:ordernee(),
//home: nelogin(),


//home:adminlogin()

    );
  }
}

//class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

  
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 5;
//   @override
//   void initState() {
//     // TODO: implement initState
    
    
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
    
    
//   }

//   void _incrementCounter() {
//     setState(() {
      
//       _counter++;
//       print(_counter);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {.












































    
//     print("heloo");
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// 