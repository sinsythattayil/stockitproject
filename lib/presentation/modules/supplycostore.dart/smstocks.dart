import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stockit/presentation/modules/supplycostore.dart/smenu.dart';

class smstocks extends StatefulWidget {
  const smstocks({super.key});

  @override
  State<smstocks> createState() => _smstocksState();
}

class _smstocksState extends State<smstocks> {
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

    return Scaffold(
      drawer: smenu(),
      appBar: AppBar(
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
       body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/image 5.png'), fit: BoxFit.cover)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 30, left: 30, right: 30),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: Colors.black),
                                color: Color.fromARGB(206, 255, 255, 255)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 10,),
                                  child: Image.asset('images/race.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,bottom: 10),
                                  child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Rice',
                                          style: GoogleFonts.inknutAntiqua(
                                              fontSize: 20)),
                                      const Row(
                                        children: [
                                          Icon(Icons.currency_rupee_sharp),
                                          Text(
                                            '8/Kg',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                         const Padding(
                                           padding: EdgeInsets.only(left: 8),
                                           child: Text('2 Kg/Person',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500)),
                                         ),
                                              // ElevatedButton(style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),foregroundColor: MaterialStatePropertyAll(Colors.white)),
                                              // onPressed: (){}, child: const Text('Choose',style: TextStyle(fontSize: 15,),))
                                    ],
                                  ),
                                )
                              ],
                            )),
                            SizedBox(height: 10,)
                      ],
                    )),
              ),
                      
            ],
          ),
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
    );
  }
}