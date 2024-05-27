import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockit/neethi/booklab.dart';
import 'package:stockit/neethi/cart.dart';
import 'package:stockit/neethi/healthserch.dart';

class sebamade extends StatefulWidget {
  const sebamade({super.key});

  @override
  State<sebamade> createState() => _sebamadeState();
}

class _sebamadeState extends State<sebamade> {
  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Color.fromARGB(141, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pharmacy.png'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 100, left: 20, right: 20, bottom: 50),
            child: Container(
              color: Color.fromARGB(178, 233, 231, 231),
              child: Column(
                children: [
                  Container(
                      height: 300,
                      width: 350,
                      color: Colors.white,
                      child: Image(
                        image: AssetImage('images/sebamade.png'),
                        fit: BoxFit.cover,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, top: 10),
                    child: Text(
                      'Sebamade Baby Cleansing Bar-150g',
                      style: GoogleFonts.abrilFatface(fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210, top: 5),
                    child: Text('100g soap in Box',
                        style: GoogleFonts.abrilFatface(fontSize: 14)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'MRP',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.currency_rupee,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Text(
                        '300',
                        style: TextStyle(
                            decorationColor: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '15%OFF',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.currency_rupee,
                        size: 22,
                      ),
                      Text(
                        '256',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(200, 236, 145, 26))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => cart()),
                              );
                            },
                            child: Text(
                              'Add to Cart',
                              style: GoogleFonts.abrilFatface(
                                  fontSize: 15, color: Colors.black),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => booklab()),
                          );
                        },
                        child: Text(
                          'Order',
                          style: GoogleFonts.abrilFatface(
                              fontSize: 15, color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
