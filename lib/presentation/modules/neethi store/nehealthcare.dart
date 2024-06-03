import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/presentation/modules/neethi%20store/neallproducts.dart';
import 'package:stockit/presentation/modules/neethi%20store/neethimenu.dart';
import 'package:stockit/presentation/modules/user_module/neethi/healthserch.dart';

class nehealthcare extends StatefulWidget {
  const nehealthcare({super.key});

  @override
  State<nehealthcare> createState() => _nehealthcareState();
}

class _nehealthcareState extends State<nehealthcare> {
    final __nameController = TextEditingController();
    final _descriptioncontroller = TextEditingController();
    final _priceController = TextEditingController();
    final _quantityController = TextEditingController();
   // final _categoryController = TextEditingController();
    
  @override
  Widget build(BuildContext context) {
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
          'Health Care',
          style: GoogleFonts.inknutAntiqua(fontSize: 25),
        ),
         backgroundColor: const Color.fromARGB(136, 255, 255, 255),
         ),
         body: Container(
          height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/pharmacy.png'),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
           SizedBox(height: 15,),
            
             SizedBox(height: 15,),
             Container(
              height: 555,width: 345,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(215, 0, 0, 0),),
              child: Padding(
                padding: const EdgeInsets.only(top: 15,left: 17),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 85),
                   child: Text('Top Selling Categories',style: GoogleFonts.inknutAntiqua(fontSize:18,color:Colors.white),),
                  ),
                  
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/glucomtr.png',fit: BoxFit.cover,)
                            ),
                          ),
                          Text('Glucometer',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                        ],
                      ),
                      SizedBox(width: 10,),
                       Column(
                        children: [
                          Container(
                            height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                            child: Image.asset('images/nutritiondrink.png',fit: BoxFit.cover,)
                          ),
                          Text('Nutrirional drink',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                        ],
                      ),
                      SizedBox(width: 10,),
                       Column(
                        children: [
                          Container(
                            height: 90,width: 90,decoration: BoxDecoration(color: Colors.blueGrey,),
                            child: Image.asset('images/vitamin.png',fit: BoxFit.cover,)
                          ),
                          Text('Vitamins A-Z',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                        ],
                      ),
                    ],
                  ),
                   SizedBox(height: 8,),
                  Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/baby.png',fit: BoxFit.cover,)
                            ),
                            Text('Baby skin care',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                        SizedBox(width: 10,),
                         Column(
                          children: [
                            Container(
                              height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/adult.png',fit: BoxFit.cover,)
                            ),
                            Text('Adult Diaper',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                        SizedBox(width: 10,),
                         Column(
                          children: [
                            Container(
                              height: 90,width: 90,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/oral.png',fit: BoxFit.cover,)
                            ),
                            Text('Oral product',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                      ],
                    ),
                  SizedBox(height: 8,),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/women.png',fit: BoxFit.cover,)
                            ),
                            Text('women care',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                        SizedBox(width: 10,),
                         Column(
                          children: [
                            Container(
                              height: 90,width: 95,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/babydiapr.png',fit: BoxFit.cover,)
                            ),
                            Text('Baby Diaper',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                        SizedBox(width: 10,),
                         Column(
                          children: [
                            Container(
                              height: 90,width: 90,decoration: BoxDecoration(color: Colors.blueGrey,),
                              child: Image.asset('images/viks.png',fit: BoxFit.cover,)
                            ),
                            Text('Respiratory Care',style: GoogleFonts.inknutAntiqua(fontSize:10,color:Colors.white),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120,left: 180),
                      child: TextButton(onPressed: (){
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => neallproduct()));
                      }, child:Text('View All',style:TextStyle(color: Colors.white),)),
                    )
                ],),
              ),
              
             )
          ],
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
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  height: 400,
                  width: double.infinity,
                  child: Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text('Click + button to upload product photo',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/imageicon.png'),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 120, bottom: 150),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 30,
                                      )),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                
                              ),
                            ],
                          ),
                          Column(
                            children: [
                             Padding(
                               padding: const EdgeInsets.only(right: 140),
                               child: Text('Name:',style: TextStyle(fontWeight: FontWeight.bold),),
                             ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: SizedBox(
                                  height: 65,
                                  width: 150,
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: __nameController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'please type product name';
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
                                        hintText: ('Product name')),
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
                              controller: _descriptioncontroller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please type product details';
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
                                hintText: (' product details'),
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
                                  controller: _priceController,
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
                                  controller: _quantityController,
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
                                  controller: _quantityController,
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
                      ElevatedButton(onPressed: (){}, child: Text('Submit'))
                    ],
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