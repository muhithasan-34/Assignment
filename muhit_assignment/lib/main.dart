// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const product(),
      routes: {
        '/main': (context) => const MyWidget(),
      },
    );
  }
}

class button extends StatelessWidget {
  final Function()? onTap;
  const button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 100.0),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 186, 9, 65),
            borderRadius: BorderRadius.circular(10)),
        child: const Center(
            child: Text(
          "Buy Now",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        )),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 74, 13, 228),
        title: const Text(
          'Payment method',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          //padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.fromLTRB(70, 300, 70, 300),

          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Image.asset('lib/images/nagad.png'),
          ),
        ),
      ),
    );
  }
}

class product extends StatelessWidget {
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 15,
        title: const Text(
          'Product Page',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(5, 30, 5, 70),
        width: 500,
        height: 700,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Sony Alpha a7C Mirrorless Camera with 28-60mm Lens',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Center(
                child: Image.asset(
                  'lib/images/canon.png',
                  width: 250,
                  height: 250,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              // padding: const EdgeInsets.only(left: 30),
              child: const Text(
                'Key features:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              // padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Model: Alpha a7C',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '24.2MP Full-Frame Exmor R BSI Sensor',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'BIONZ X Image Processor',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '3.0" 921.6k-Dot Vari-Angle Touchscreen',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'FE 28-60mm f/4-5.6 Lens',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Price : 185,000৳',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 5),
            button(
              onTap: () => Navigator.pushNamed(context, '/main'),
            ),
          ],
        ),
      ),

      //payment button
    );
  }
}
