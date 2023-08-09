
// ignore_for_file: unused_import

import 'package:desafiomenu_spring2/pages/menu.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';


class Restaurant extends StatelessWidget {
  const Restaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RestaurantScreen(),
    );
  }
}

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 75, // Defina a altura desejada aqui

        leading:  Builder(
          builder: (BuildContext context) {
          return Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: const Color(0xffFFFFFF),
            iconSize: 30,
            onPressed: () {},
                   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          );
          },
        ),
        backgroundColor: const Color(0xffC7411B),
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 118.0, left: 52),
            child: Text(
              "Cardápio web",
              style: TextStyle(
                fontFamily: 'FigTree',
                fontSize: 24,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),


      body: const Column(
        children: [

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 32.0, left: 24),
              child: Text(
                "Novo item",
                style: TextStyle(
                  fontFamily: 'FigTree',
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Color(0xffC7411B),
                  
                ),
                ),
            ),
              ),



        ],
      ),
     
    );
  }
}