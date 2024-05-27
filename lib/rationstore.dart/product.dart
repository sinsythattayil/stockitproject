import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stockit/common/ratio%20nmenu.dart';
import 'package:stockit/home/ration3.dart';
import 'package:stockit/home/ration4.dart';
import 'package:stockit/home/ration5.dart';
import 'package:stockit/home/ration6.dart';
import 'package:stockit/login/menuprofile.dart';
import 'package:stockit/rationstore.dart/rationprofile.dart';
import 'package:stockit/rationstore.dart/rationstoremenu.dart';
import 'package:stockit/rationstore.dart/rblue.dart';
import 'package:stockit/rationstore.dart/rlogin2.dart';
import 'package:stockit/rationstore.dart/rpink.dart';
import 'package:stockit/rationstore.dart/rwhite.dart';
import 'package:stockit/rationstore.dart/ryellow.dart';

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
    Future<void> _pickedImageGallery() async {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage == null) return;

      selectedImage = File(pickedImage.path);
      setState(() {});
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
         drawer: rationstoremenu(),
        appBar: AppBar(
          bottom: TabBar(
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
            }, icon: Icon(Icons.menu,color: Colors.black,));
          },),
          title: Text(
            'Stocks',
            style: GoogleFonts.abrilFatface(fontSize: 20),
          ),
        ),
        body: TabBarView(
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
                                      onPressed: () async {
                                        await _pickedImageGallery()
                                            .then((value) => setState(() {}));
                                      },
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
                                child: selectedImage == null
                                    ? Text("data")
                                    : Image.file(selectedImage!),
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
                                padding: const EdgeInsets.only(right: 100
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
                                padding: const EdgeInsets.only(right: 90),
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
                              Padding(
                                padding: const EdgeInsets.only(right: 120),
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
                                    hintText: ('Category'),
                                  ),
                                ),
                              ),
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
          child: Icon(Icons.add),
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
