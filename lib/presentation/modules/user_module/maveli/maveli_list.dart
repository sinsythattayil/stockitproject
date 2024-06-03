import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/data/firebase/database/db_controller.dart';
import 'package:stockit/data/model/store_model.dart';
//import 'package:stockit/home/home2.dart';
import 'package:stockit/presentation/modules/user_module/maveli/mavelistockspclitem.dart';
import 'package:stockit/presentation/modules/user_module/maveli/mproduct.dart';

class MavelistoreListView extends StatefulWidget {
  const MavelistoreListView({super.key});

  @override
  State<MavelistoreListView> createState() => _MavelistoreListViewState();
}

class _MavelistoreListViewState extends State<MavelistoreListView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(139, 255, 255, 255),
        toolbarHeight: 50,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text('Maveli Stores',
            style: GoogleFonts.abrilFatface(fontSize: 30)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/image 5.png'),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: SizedBox(
                      height: 60,
                      width: 350,
                      child: TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 35,
                            ),
                            hintText: ('Search location')),
                      ),
                    ),
                  ),
                  Expanded(
                      child: StreamBuilder(
                          stream: DbController().getAllStore("Maveli"),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            List<StoreModel> listOfData = snapshot.data!.docs
                                .map((e) => StoreModel.fromjson(e.data()))
                                .toList();
                            if (snapshot.hasData) {
                              return listOfData.isEmpty
                                  ? const Center(
                                      child: Text("No Store"),
                                    )
                                  : ListView.builder(
                                      itemCount: listOfData.length,
                                      itemBuilder: (context, index) {

                                        final data=listOfData[index];
                                        return Padding(
                                          padding: EdgeInsets.only(
                                              top: 20, left: 20, right: 20),
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            width: width,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 1,
                                                  color: Colors.black,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                color: Colors.white),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: SizedBox(
                                                      child: Text(
'Maveli Store\n${data.branch}, Pin: ${data.pin}\nPh:${data.phoneNumber}',
                                                    style: GoogleFonts
                                                        .abyssinicaSil(
                                                            fontSize: 15),
                                                  )),
                                                ),
                                                Column(
                                                  children: [
                                                    ElevatedButton(
                                                        style: ButtonStyle(
                                                          //elevation:MaterialStatePropertyAll(8),
                                                          backgroundColor:
                                                              MaterialStatePropertyAll(
                                                                  Color
                                                                      .fromARGB(
                                                                          233,
                                                                          135,
                                                                          133,
                                                                          133)),
                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              side: BorderSide(
                                                                  color: Colors
                                                                      .black))),
                                                          // minimumSize:MaterialStatePropertyAll(Size(10,10))
                                                        ),
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          mavelistocks()));
                                                        },
                                                        child: Text(
                                                          "select",
                                                          style: GoogleFonts
                                                              .abyssinicaSil(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .black),
                                                        )),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                          Icons.favorite,
                                                          color: Color.fromARGB(
                                                              255,
                                                              242,
                                                              146,
                                                              37),
                                                          size: 25,
                                                        ))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                            } else {
                              return SizedBox();
                            }
                          }))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
