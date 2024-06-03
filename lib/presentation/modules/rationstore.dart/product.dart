import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:stockit/data/provider/controller.dart';
import 'package:stockit/presentation/common/ratio%20nmenu.dart';
import 'package:stockit/presentation/modules/user_module/home/ration3.dart';
import 'package:stockit/presentation/modules/user_module/home/ration4.dart';
import 'package:stockit/presentation/modules/user_module/home/ration5.dart';
import 'package:stockit/presentation/modules/user_module/home/ration6.dart';
import 'package:stockit/presentation/modules/user_module/login/menuprofile.dart';
import 'package:stockit/presentation/modules/rationstore.dart/rationprofile.dart';
import 'package:stockit/presentation/modules/rationstore.dart/rationstoremenu.dart';
import 'package:stockit/presentation/modules/rationstore.dart/rblue.dart';
import 'package:stockit/presentation/modules/rationstore.dart/ration_login.dart';
import 'package:stockit/presentation/modules/rationstore.dart/rpink.dart';
import 'package:stockit/presentation/modules/rationstore.dart/rwhite.dart';
import 'package:stockit/presentation/modules/rationstore.dart/ryellow.dart';

class productration extends StatefulWidget {
  const productration({super.key});

  @override
  State<productration> createState() => _productrationState();
}

class _productrationState extends State<productration> {
  int _selectedindex = 0;
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    final __nameController = TextEditingController();
    final _descriptioncontroller = TextEditingController();
    final _priceController = TextEditingController();
    final _quantityController = TextEditingController();
    final _categoryController = TextEditingController();
  

    return DefaultTabController(
      length: 4,
      child: Scaffold(
         drawer: const rationstoremenu(),
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                child: Text('White'),
              ),
              Tab(child: Text('Blue')),
              Tab(
                child: Text('Pink'),
              ),
              Tab(
                child: Text('Yellow'),
              )
            ],
          ),
          leading: Builder(builder: (context) {
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: const Icon(Icons.menu,color: Colors.black,));
          },),
          title: Text(
            'Stocks',
            style: GoogleFonts.abrilFatface(fontSize: 20),
          ),
        ),
        body: const TabBarView(
          children: [
            rwhite(),
            rblue(),
            rpink(),
            ryellow(),
          ],
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
                  width: double.infinity,
                  child: Column(
                    children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 80),
                      child: Text('Click + button to upload product photo',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    
                      Row(
                        children: [
                          Consumer<Controller>(
                            builder: (context,controller,child) {
                              return Stack(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image:selectedImage!=null?FileImage(selectedImage!)as ImageProvider:
                                                const AssetImage('images/imageicon.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 120, bottom: 150),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: IconButton(
                                          onPressed: () async {
                                            controller.pickeImageFromGallery().then((value) {
                                              selectedImage=controller.fileImage;
                                            });

                                          
                                          },
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.black,
                                            size: 30,
                                          )),
                                    ),
                                  ),
                                  
                                ],
                              );
                            }
                          ),
                          Column(
                            children: [
                             const Padding(
                               padding: EdgeInsets.only(right: 140),
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
                                        focusedBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Colors.black)),
                                        fillColor:
                                            const Color.fromARGB(177, 255, 255, 255),
                                        filled: true,
                                        hintText: ('Product name')),
                                  ),
                                ),
                              ),
                        
                           
                                                        
                           const SizedBox(height: 20,)
                              
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 100
                                ),
                                child: Text(
                                  'Price',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 65,
                                width: 150,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: _priceController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'product price';
                                    }
                                    return null;
                                  },
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            const BorderSide(color: Colors.black)),
                                    fillColor:
                                        const Color.fromARGB(177, 255, 255, 255),
                                    filled: true,
                                    hintText: ('Price'),
                                    prefixIcon: const Icon(Icons.currency_rupee),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 90),
                                child: Text(
                                  'Quantity',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 65,
                                width: 150,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: _quantityController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Quantity';
                                    }
                                    return null;
                                  },
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            const BorderSide(color: Colors.black)),
                                    fillColor:
                                        const Color.fromARGB(177, 255, 255, 255),
                                    filled: true,
                                    hintText: ('Quantity'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 120),
                                child: Text(
                                  'Category',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 65,
                                width: 200,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: _categoryController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Category';
                                    }
                                    return null;
                                  },
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            const BorderSide(color: Colors.black)),
                                    fillColor:
                                        const Color.fromARGB(177, 255, 255, 255),
                                    filled: true,
                                    hintText: ('Category'),
                                  ),
                                ),
                              ),
                              ElevatedButton(onPressed: (){}, child: const Text("Submit"))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //   showUnselectedLabels: true,
        //   selectedItemColor: Color.fromARGB(255, 237, 176, 11),
        //   unselectedItemColor: Colors.black,
        //   showSelectedLabels: true,
        //   items: [
        //     BottomNavigationBarItem(
        //         backgroundColor: Colors.white,
        //         icon: IconButton(
        //             onPressed: () {},
        //             icon: Icon(
        //               Icons.home,
        //               size: 35,
        //             )),
        //         // icon: Icon(
        //         //   Icons.home,
        //         //   size: 35,
        //         // ),
        //         label: ('Home')),
        //     BottomNavigationBarItem(
        //         backgroundColor: Colors.white,
        //         icon: IconButton(
        //             onPressed: () {},
        //             icon: Icon(
        //               Icons.local_offer,
        //               size: 35,
        //             )),
        //         // icon: Icon(
        //         //   Icons.local_offer,
        //         //   size: 35,
        //         // ),
        //         label: ('Special')),
        //     BottomNavigationBarItem(
        //         backgroundColor: Colors.white,
        //         icon: IconButton(
        //             onPressed: () {},
        //             icon: Icon(
        //               Icons.library_books_rounded,
        //               size: 35,
        //             )),
        //         // icon: Icon(
        //         //   Icons.library_books_rounded,
        //         //   size: 35,
        //         // ),
        //         label: ('Orders')),
        //     BottomNavigationBarItem(
        //         backgroundColor: Colors.white,
        //         icon: IconButton(
        //             onPressed: () {},
        //             icon: Icon(
        //               Icons.person_pin,
        //               size: 35,
        //             )),
        //         // icon: Icon(
        //         //   Icons.person_pin,
        //         //   size: 35,
        //         // ),
        //         label: ('Profile')),
        //   ],
        // ),

        // bottomNavigationBar: BottomAppBar(
        //   height: 60,
        //   notchMargin: 5,
        //   shape: CircularNotchedRectangle(),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     mainAxisSize: MainAxisSize.max,
        //     children: [
        //       IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.home),
        //       ),
        //       IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.trolley),
        //       ),
        //       IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.search),
        //       ),
        //       IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.person),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
