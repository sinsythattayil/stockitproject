import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stockit/data/firebase/database/medicinecontroller.dart';
import 'package:stockit/data/model/neethimedcinemodel.dart';

class nemedicine extends StatefulWidget {
  const nemedicine({super.key});

  @override
  State<nemedicine> createState() => _nemedicineState();
}
  
class _nemedicineState extends State<nemedicine> {
  
   MedicineController medicineController=MedicineController();
   final _auth=FirebaseAuth.instance;
   final _firestore=FirebaseFirestore.instance;
    final __nameController = TextEditingController();
    final _detailscontroller = TextEditingController();
    final _mrpController = TextEditingController();
    final _offerController = TextEditingController();
    final _priceController = TextEditingController();
    final _formkey=GlobalKey<FormState>();
        File?selectedIamge;

    // final _categoryController = TextEditingController();
    

    
  @override
  Widget build(BuildContext context) {
    Future pickedImageGallery() async {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage == null) return;
    
        selectedIamge = File(pickedImage.path);
       setState(() {
      });
    }
    String id=_auth.currentUser!.uid;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
               Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              
            )),
        title: Text(
          'Medicines',
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
              padding: const EdgeInsets.only(top:100),
              child: SizedBox(height: 50,width: 360,
                child: TextFormField(cursorColor: Colors.black,
                                 decoration: InputDecoration(focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black)) ,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                 fillColor: Color.fromARGB(186, 255, 255, 255),filled: true,prefixIcon: Icon(Icons.search,size: 35,),
                                 hintText: ('Search for Medicines')),
                                 ),
              ),
            ),
            SizedBox(height: 15),
            Container(height: 600,width: 360,
            decoration: BoxDecoration(color: const Color.fromARGB(186, 255, 255, 255),borderRadius: BorderRadius.circular(10),border: Border.all(width:1,color: Colors.black)),
             child: Column(children: [
              StreamBuilder(stream: FirebaseFirestore.instance.collection("medicineproduct").doc(id).snapshots(),
               builder: (context,snapshot)
               {
                if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        }
                        if (!snapshot.hasData || snapshot.data!.data() == null) {
                          return Center(child: Text("No data found"));
                        }
                        // var docs = snapshot.data!.docs;

                        var data = snapshot.data!.data() as Map<String, dynamic>;
                        var medicinemodel = Medicinemodel.fromMap(data);
                        String image = medicinemodel.imageUrl.toString();
                        
                        
                
                
                return  Expanded(child: ListView.builder(itemBuilder:(context, index) {
                  
                  return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                   Container(height: 70,width: 70,decoration:BoxDecoration(color: Colors.black),),
                                    SizedBox(width: 8,),
                                  Text(medicinemodel.productname,style: GoogleFonts.abrilFatface(fontSize:15),),
                                ],
                              ),
                              Row(
                                children: [
                                   SizedBox(width: 45,),
                                  Icon(Icons.currency_rupee,size: 17,),
                                 
                                   Text(medicinemodel.mrp,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                           SizedBox(width:10,),
                           Icon(Icons.currency_rupee,size: 15,color: Colors.grey[400],),
                           Text(medicinemodel.price,style: TextStyle(decorationColor: Colors.grey[400],
                           decoration: TextDecoration.lineThrough,
                            fontSize:15,fontWeight: FontWeight.bold,color: Colors.grey[400]),
                            ),
                             SizedBox(width:20),
                           Text(medicinemodel.offer,style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
                                ],
                              ),
                          
                            ],
                          ),
                        ),
                        
                      ],
                    ),

                    Divider(color: Colors.black)
                  ],
                );
              },itemCount:2,
              ));
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
                        child: Text('Add Product',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      
                        Row(
                          children: [
                            Stack(
                              children: [
                                GestureDetector(
                                  
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                           image:selectedIamge!=null
                                           ?FileImage(selectedIamge!)
                                           :NetworkImage('https://t3.ftcdn.net/jpg/02/48/42/64/360_F_248426448_NVKLywWqArG2ADUxDq6QprtIzsF82dMF.jpg') as ImageProvider<Object>,
                                           
                                            fit: BoxFit.cover)),
                                  ),
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
                                        onPressed: (){
                                          pickedImageGallery().then((value) => setState(() {
                                            
                                          }));
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
                                controller: _detailscontroller,
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
                                    'Price',
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
                                        return 'price';
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
                                  'MRP',
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
                                        return 'MRP price';
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
                              Medicinemodel  _medicinemodel=Medicinemodel(productname:__nameController.text,
                               description:_detailscontroller.text , mrp:_mrpController.text, offer: _offerController.text, price: _priceController.text);
                               MedicineController _medicine=MedicineController();
                               String uid=FirebaseAuth.instance.currentUser!.uid;
                               _medicine.addMedicine(_medicinemodel, uid);
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


  Future _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        selectedIamge = File(pickedFile.path);
  });
}
}
}