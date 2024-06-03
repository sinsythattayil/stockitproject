import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/data/firebase/database/labtestcontroller.dart';
import 'package:stockit/data/model/neethilabtestmodel.dart';
import 'package:stockit/presentation/modules/neethi%20store/neethimenu.dart';
import 'package:stockit/presentation/modules/user_module/neethi/recmndpkg.dart';

class nelabtest extends StatefulWidget {
  const nelabtest({super.key});

  @override
  State<nelabtest> createState() => _nelabtestState();
}

class _nelabtestState extends State<nelabtest> {
   LabtestController labtestController=LabtestController();
  final _auth=FirebaseAuth.instance;
  final _firestore=FirebaseFirestore.instance;
    final __testnameController = TextEditingController();
    final _testdescriptioncontroller = TextEditingController();
    final _priceController = TextEditingController();
    final _offerController = TextEditingController();
    final _mrpController = TextEditingController();
     final _formkey=GlobalKey<FormState>();
        File?selectedIamge;
    
  @override
  Widget build(BuildContext context) {
    String id=_auth.currentUser!.uid;
    return Scaffold(
      drawer: neethimenu(),
       //extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Builder(builder: (context) {
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: Icon(Icons.menu,color: Colors.black,));
          },),
        title: Text(
          'Lab Test',
          style: GoogleFonts.inknutAntiqua(fontSize: 25),
        ),
         backgroundColor: const Color.fromARGB(136, 255, 255, 255),
    ),
    body: SingleChildScrollView(
      child: Container(
        
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover)
        ),
          child: Column(children: [
            //SizedBox(height: 90,width: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(height: 50,width: 355,
                child: TextFormField(cursorColor: Colors.black,
                                 decoration: InputDecoration(focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black)) ,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                 fillColor: Color.fromARGB(186, 255, 255, 255),filled: true,prefixIcon: Icon(Icons.search,size: 35,),hintText: ('Search for test and pakages')),
                                 ),
              ),
            ),
            SizedBox(height: 15,width: 30),
            Container(height: 600,width: 355,
            decoration: BoxDecoration(color: const Color.fromARGB(186, 255, 255, 255),borderRadius: BorderRadius.circular(10),border: Border.all(width:1,color: Colors.black)),
             child: Column(children: [
              Row(
                children: [
                  Image.asset('images/Lab.png',scale: 1.2,),
                  Text('Popular Tests',style: GoogleFonts.inknutAntiqua(fontSize:25),)
                ],
              ),
SizedBox(height: 10,),

              StreamBuilder<QuerySnapshot>(
                stream:  _firestore.collection("labtesttype").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        }
                        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                          return Center(child: Text("No data found"));
                        }
                        // var docs = snapshot.data!.docs;

                        var data = snapshot.data!.docs as Map<String, dynamic>;
                        var medicinemodel = Labtestmodel.fromMap(data);
                       // String image = medicinemodel.imageUrl.toString();
                        
                  return Expanded(child: ListView.builder(itemCount: 13,itemBuilder:(context, index) {
                    return Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Fasting Blood Suger(FBS) Test',style: GoogleFonts.inknutAntiqua(fontSize:18),),
                            ),
                            SizedBox(height: 10,),
                             Padding(
                               padding: const EdgeInsets.only(left: 30),
                               child: Row(
                                                     children: [
                                                       Icon(Icons.currency_rupee,size: 22,),
                                                       Text('2199',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                                       SizedBox(width:10,),
                                                       Icon(Icons.currency_rupee,size: 15,color: Colors.grey[400],),
                                                       Text('3746',style: TextStyle(decorationColor: Colors.grey[400],
                                                       decoration: TextDecoration.lineThrough,
                                                        fontSize:18,fontWeight: FontWeight.bold,color: Colors.grey[400]),
                                                        ),
                                                         SizedBox(width:20),
                                                       Text('41%OFF',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                                                     ]
                                                   ),
                             ),
                          ],
                        ),
                        Divider(color: Colors.black)
                      ],
                    );
                  },));
                }
              )
             ],
            
             ),
           
            )                 
          ],),
      
      ),
    ),
     floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          elevation: 0,
          mini: true,
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Form(
                  key: _formkey,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 400,
                    width: double.infinity,
                    child: Column(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Text('Add Product',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      
                        Row(
                          children: [
                            // Stack(
                            //   children: [
                            //     Container(
                            //       height: 150,
                            //       width: 150,
                            //       decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(10),
                            //           image: DecorationImage(
                            //               image:
                            //                   AssetImage('images/imageicon.png'),
                            //               fit: BoxFit.cover)),
                            //     ),
                            //     Padding(
                            //       padding: const EdgeInsets.only(
                            //           left: 120, bottom: 150),
                            //       child: Container(
                            //         height: 50,
                            //         width: 50,
                            //         decoration: BoxDecoration(
                            //           shape: BoxShape.circle,
                            //           color: Colors.white,
                            //         ),
                            //         child: IconButton(
                            //             onPressed: () {},
                            //             icon: Icon(
                            //               Icons.add,
                            //               color: Colors.black,
                            //               size: 30,
                            //             )),
                            //       ),
                            //     ),
                            //     Container(
                            //       height: 50,
                            //       width: 50,
                                  
                            //     ),
                            //   ],
                            // ),
                            Column(
                              children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 100),
                                 child: Text('Test type',style: TextStyle(fontWeight: FontWeight.bold),),
                               ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: SizedBox(
                                    height: 65,
                                    width: 200,
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: __testnameController,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'please type labtes name';
                                        }
                                        return null;
                                      },
                                      cursorColor: Colors.black,
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black)),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.black)),
                                          fillColor:
                                              Color.fromARGB(177, 255, 255, 255),
                                          filled: true,
                                          hintText: ('labtest name')),
                                    ),
                                  ),
                                ),
                             Padding(
                               padding: const EdgeInsets.only(right: 100),
                               child: Text('Description',style: TextStyle(fontWeight: FontWeight.bold),),
                             ),
                             SizedBox(
                              height: 65,
                              width: 200,
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: _testdescriptioncontroller,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'please type labtest description';
                                  }
                                  return null;
                                },
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  fillColor:
                                      Color.fromARGB(177, 255, 255, 255),
                                  filled: true,
                                  hintText: ('Test details'),
                                ),
                              ),
                                                             ),
                             SizedBox(height: 20,)
                                
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50
                                  ),
                                  child: Text(
                                    'MRP',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 65,
                                  width: 100,
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: _mrpController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'MRP';
                                      }
                                      return null;
                                    },
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      fillColor:
                                          Color.fromARGB(177, 255, 255, 255),
                                      filled: true,
                                      hintText: ('MRP'),
                                      prefixIcon: Icon(Icons.currency_rupee),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:40),
                                  child: Text(
                                    'OFFER %',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 65,
                                  width: 100,
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: _offerController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Offer%';
                                      }
                                      return null;
                                    },
                                    cursorColor: Colors.black,
                                    
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      fillColor:
                                          Color.fromARGB(177, 255, 255, 255),
                                      filled: true,
                                      hintText: ('Offer%'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15,),
                             Column(
                              children: [
                                Text(
                                  'Price',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 65,
                                  width: 100,
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: _priceController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Sale price';
                                      }
                                      return null;
                                    },
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      fillColor:
                                          Color.fromARGB(177, 255, 255, 255),
                                      filled: true,
                                      hintText: ('Price'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Column(
                        //       children: [
                        //         Padding(
                        //           padding: const EdgeInsets.only(right: 120),
                        //           child: Text(
                        //             'Category',
                        //             style: TextStyle(fontWeight: FontWeight.bold),
                        //           ),
                        //         ),
                        //         SizedBox(
                        //           height: 65,
                        //           width: 200,
                        //           child: TextFormField(
                        //             autovalidateMode:
                        //                 AutovalidateMode.onUserInteraction,
                        //             controller: _categoryController,
                        //             validator: (value) {
                        //               if (value!.isEmpty) {
                        //                 return 'Category';
                        //               }
                        //               return null;
                        //             },
                        //             cursorColor: Colors.black,
                        //             keyboardType: TextInputType.number,
                        //             inputFormatters: [
                        //               FilteringTextInputFormatter.digitsOnly
                        //             ],
                        //             decoration: InputDecoration(
                        //               focusedBorder: OutlineInputBorder(
                        //                   borderSide:
                        //                       BorderSide(color: Colors.black)),
                        //               border: OutlineInputBorder(
                        //                   borderRadius: BorderRadius.circular(10),
                        //                   borderSide:
                        //                       BorderSide(color: Colors.black)),
                        //               fillColor:
                        //                   Color.fromARGB(177, 255, 255, 255),
                        //               filled: true,
                        //               hintText: ('Category'),
                        //               suffixIcon: Icon(Icons.arrow_drop_down)
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        ElevatedButton(onPressed: (){
                           if(
                            _formkey.currentState!.validate()){
                            Labtestmodel  _labtestmodel=Labtestmodel(productname:__testnameController.text,
                               description:_testdescriptioncontroller.text , mrp:_mrpController.text, offer: _offerController.text, price: _priceController.text);
                               LabtestController _labtest=LabtestController();
                               String uid=FirebaseAuth.instance.currentUser!.uid;
                               _labtest.addLabtest(_labtestmodel, uid);
                            }
                        }, child: Text('Submit'))
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Icon(Icons.add),
        ),
    );
  }
}