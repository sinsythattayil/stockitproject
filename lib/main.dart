import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stockit/businesslogic/firebase_options.dart';
import 'package:stockit/common/appinfo.dart';
import 'package:stockit/common/feedback.dart';
import 'package:stockit/common/menu.dart';
import 'package:stockit/common/notification.dart';
import 'package:stockit/common/order.dart';
import 'package:stockit/common/ordercmplt.dart';
import 'package:stockit/common/profile.dart';
import 'package:stockit/common/resetpass.dart';
import 'package:stockit/common/settings.dart';
import 'package:stockit/common/special.dart';
import 'package:stockit/demo/demo.dart';
import 'package:stockit/demo/firstpage.dart';
import 'package:stockit/home/home1.dart';
import 'package:stockit/home/home2.dart';
import 'package:stockit/home/ration1.dart';
import 'package:stockit/home/ration2.dart';
import 'package:stockit/home/ration3.dart';
import 'package:stockit/home/ration4.dart';
import 'package:stockit/home/ration5.dart';
import 'package:stockit/login/logpag.dart';
import 'package:stockit/maveli/maveli.dart';
import 'package:stockit/maveli/mavelidetails.dart';
import 'package:stockit/maveli/mavorder.dart';
import 'package:stockit/maveli/mavspcial.dart';
import 'package:stockit/maveli/mproduct.dart';
import 'package:stockit/myhompage.dart';
import 'package:stockit/demo/navigation.dart';
import 'package:stockit/demo/page.dart';
import 'package:stockit/home/ration6.dart';
import 'package:stockit/login/stockit1.dart';
import 'package:stockit/login/stockit2.dart';
import 'package:stockit/login/stockit3.dart';
import 'package:stockit/login/stockit4.dart';
import 'package:stockit/login/stockit5.dart';
import 'package:stockit/login/stockit6.dart';
import 'package:stockit/login/stockit7.dart';
import 'package:stockit/neethi/appinfo.dart';
import 'package:stockit/neethi/booking.dart';
import 'package:stockit/neethi/booking.dart';
import 'package:stockit/neethi/booklab.dart';
import 'package:stockit/neethi/booksuccss.dart';
import 'package:stockit/neethi/cart.dart';
import 'package:stockit/neethi/healthserch.dart';
import 'package:stockit/neethi/labtest.dart';
import 'package:stockit/neethi/medicine.dart';
import 'package:stockit/neethi/medicineserch.dart';
import 'package:stockit/neethi/menunee.dart';
import 'package:stockit/neethi/neesettings.dart';
import 'package:stockit/neethi/neethi3.dart';
import 'package:stockit/neethi/neethihome.dart';
import 'package:stockit/neethi/nelocation.dart';
import 'package:stockit/neethi/notificationee.dart';
import 'package:stockit/neethi/nprofile.dart';
import 'package:stockit/neethi/offer.dart';
import 'package:stockit/neethi/offerlab.dart';
import 'package:stockit/neethi/offermedcine.dart';
import 'package:stockit/neethi/ordernee.dart';
import 'package:stockit/neethi/orderprdct.dart';
import 'package:stockit/neethi/popularlab.dart';
import 'package:stockit/neethi/product.dart';
import 'package:stockit/neethi/recmndpkg.dart';
import 'package:stockit/neethi/reivewNee.dart';
import 'package:stockit/neethi/topselling.dart';
import 'package:stockit/supplyco/products.dart';
import 'package:stockit/supplyco/suporder.dart';
import 'package:stockit/supplyco/supply1.dart';
import 'package:stockit/supplyco/supplydetails.dart';
import 'package:stockit/supplyco/supspecial.dart';

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
   home: signin(),
   //home: logipage(),
    //home: forgot(),
    //home: stock6(),
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
 //home:neethi3(),
// home: nelocation(),
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
//home:nprofilr(),
//home:reviewnee(),
//home: neesettings(),
//home: appinfoneethi(),
//home: orderneethi(),
//home: notificationnee(),
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
//   Widget build(BuildContext context) {
    
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