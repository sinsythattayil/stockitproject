// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class firstpage extends StatefulWidget {
//   const firstpage({super.key,required this.title});
//   final String title;
//   @override
//   State<firstpage> createState() => _firstpageState();
// }

// class _firstpageState extends State<firstpage> {
//   int _counter = 0;
//   @override
//  void initState() {
//   super.initState();
//  }
//  void dispose(){
//   super.dispose();
// }
//  void _incrementCounter(){
//   setState(() {
//     _counter++;
//   });
//   void _decrementCounter(){
//   setState(() {
//     _counter--;
//   });
//  }
//  void _reset(){
//   setState(() {
//     _counter--;
//   });
//  }
 
//  @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title)),
//       body: Center(
//       child: Column(
//         mainAxisAlignment:MainAxisAlignment.center,
//         children:<Widget>[
//         Text('enter the button:'),
//           Text('$_counter',
//             '$_counter',
//             style: Theme.of(context).textTheme.headlineMedium,
//           ),
//           Row(mainAxisAlignment:MainAxisAlignment .center,
//           children:<Widget>
        
//         ],
//       ) ,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed:_incrementCounter,
//         tooltip:'count down',
//         child: const Icon(Icons.add),
//     ),
//     floatingActionButton: FloatingActionButton2(
//         onPressed:_decrementCounter,
//         tooltip:'count down',
//         child: const Icon(Icons.add),
   
//     ),
//     ),
//      );
//   }
// }