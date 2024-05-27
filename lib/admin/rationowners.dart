import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_dropdown/enum/app_enums.dart';
import 'package:multi_dropdown/models/chip_config.dart';
import 'package:multi_dropdown/models/network_config.dart';
import 'package:multi_dropdown/models/value_item.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:multi_dropdown/widgets/hint_text.dart';
import 'package:multi_dropdown/widgets/selection_chip.dart';
import 'package:multi_dropdown/widgets/single_selected_item.dart';

class rationowners extends StatefulWidget {
  const rationowners({super.key});

  @override
  State<rationowners> createState() => _rationownersState();
}

class _rationownersState extends State<rationowners> {
  void _showDeleteConfirmationDialog(BuildContext context) {
    // Create an alert dialog
    AlertDialog alert = AlertDialog(
      title: Text("Confirm Delete"),
      content: Text("Are you sure you want to delete?"),
      actions: [
        TextButton(
          child: Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
        TextButton(
          child: Text(
            "Delete",
            style: TextStyle(color: Colors.red),
          ),
          onPressed: () {
            // Perform deletion logic here
            //  e.g., remove item from list, call an API
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      ],
    );

    // Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  @override
  
  Widget build(BuildContext context) {
     final __nameController = TextEditingController();
    final _descriptioncontroller = TextEditingController();
    final _priceController = TextEditingController();
    final _quantityController = TextEditingController();
    final _categoryController = TextEditingController();
    // Future<void> _pickedImageGallery() async {
    //   final pickedImage =
    //       await ImagePicker().pickImage(source: ImageSource.gallery);
    //   if (pickedImage == null) return;

    //   selectedImage = File(pickedImage.path);
    //   setState(() {});
    // }

    return Scaffold(
     body:  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/login.png'), fit: BoxFit.cover)),
                child: Expanded(child: ListView.builder(itemCount: 7,itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: Container(
                    
                      height: 165,width: 250,
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 35),
                            child: CircleAvatar(backgroundColor: Colors.white,
                            child: CircleAvatar(backgroundImage: AssetImage('images/Ellipse 4.png'),radius: 43,),
                            radius: 46,),
                          ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Row(
                                    children: [
                                      Text(' Sharika',style: GoogleFonts.abrilFatface(fontSize:20,color:Colors.white),),
                                      SizedBox(width: 50,),
                                      IconButton(onPressed: ()=>_showDeleteConfirmationDialog(context)
                                        
                                      , icon: Icon(Icons.delete,size: 20,color: Colors.white,))
                                    ],
                                  ),
                                ),
                                
                                Text('Thachanpoyil(H)',style: GoogleFonts.abyssinicaSil(fontSize:18,color:Colors.white),),
                                Text('Anakkayam branch  ',style: GoogleFonts.abyssinicaSil(fontSize:16,color:Colors.white),),
                                Text('676509(pin), Malappuram(Dt)',style: GoogleFonts.abyssinicaSil(fontSize:16,color:Colors.white),),
                                 Text('9867345208(Ph)',style: GoogleFonts.abyssinicaSil(fontSize:16,color:Colors.white),),
                                 
                              ],
                            )
                            
                        ],
                      ),
                    ),
                  );
                },)),
      ) ,
         floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
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
                  height: 500,
                  width: double.infinity,
                  child: Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text('Click camera button to upload profile photo',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(shape: BoxShape.circle,
                                   // borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/imageicon.png'),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 90, top:70),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.camera_alt,
                                      color: Colors.blue,
                                      size: 28,
                                    )),
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
                                  width: 180,
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: __nameController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'please ypur name';
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
                                        hintText: ('Name')),
                                  ),
                                ),
                              ),
                           Padding(
                             padding: const EdgeInsets.only(right: 100),
                             child: Text('Address',style: TextStyle(fontWeight: FontWeight.bold),),
                           ),
                           SizedBox(
                            height: 65,
                            width: 250,
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _descriptioncontroller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please type your Address';
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
                                hintText: ('Address'),
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
                                  'Branch',
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
                                      return 'Branch Name';
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
                                    hintText: ('baranch'),
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
                                  'PIN & District',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 65,
                                width: 190,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: _quantityController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'PIN & District';
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
                                    hintText: ('PIN & District'),
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
                                  'Phone num',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 65,
                                width: 170,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: _categoryController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Phone num';
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
                                    hintText: ('Phone num'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                           Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 120),
                                child: Text(
                                  'Store',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 65,
                                width: 150,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: _categoryController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Store';
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
                                    hintText: ('Store'),
                                    suffixIcon: Icon(Icons.arrow_drop_down_sharp)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(onPressed: (){}, child: Text('submit'))
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