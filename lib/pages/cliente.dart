
import 'package:flutter/material.dart';

class Client extends StatelessWidget {
  const Client({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClientScreen(),
    );
  }
}

class ClientScreen extends StatelessWidget {
  const ClientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xffFF6130),
        toolbarHeight: 75,

        title:  const Padding(
          padding: EdgeInsets.only(left: 34.0, right: 103),
          child: Text(
            "Cardápio Web",
            style: TextStyle(
              fontFamily: 'FigTree',
              fontSize: 28,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.36,
          
            ),
            ),
        ),

        leading: Padding(
          padding: const EdgeInsets.only(right: 64),
          child: IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(
        
              Icons.arrow_back_ios_new_outlined,
            )
            ),
        ),
        
      ),

      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 16, left: 26.5),
            child: Container(
              width: 358,
              height: 348.06,
          
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image:AssetImage("assets/images/hamburguerx.jpeg"),
                  fit: BoxFit.cover,
              ),
            ),
            ),
          ),
        ],
      ),
     
    );
  }
}