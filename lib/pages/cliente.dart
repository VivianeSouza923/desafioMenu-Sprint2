
// ignore_for_file: unused_import

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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

      body:  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
             padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
             
              child: Container(
                width: 378,
                height: 368.06,
            
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image:AssetImage("assets/images/hamburguerx.jpeg"),
                    fit: BoxFit.cover,
                ),
              ),
              ),
            ),
      
            const Row(
              children: [
            
                Padding(
                  padding: EdgeInsets.only(top:37.94, left: 19, right: 48),
                  child: Text(
                    "Hambúrguer X",
                    style: TextStyle(
                      fontFamily: 'FigTree',
                      fontWeight: FontWeight.w400,
                      fontSize: 34,
                      letterSpacing: 0.37,
                      color: Color(0xffC7411B),
                    ),
                    ),
                ),
            
                  Padding(
                    padding: EdgeInsets.only(top: 37.94, right: 4),
                    child: Icon(
                      Icons.star_rounded,
                      color: Color(0xffC7411B),
                      size: 31, 
                    ),
                  ),
            
                  Padding(
                    padding: EdgeInsets.only(top: 39.94),
                    
                    child: Text(
                      "4,5",
                      style: TextStyle(
                        fontFamily: 'FigTree',
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.36,
                        color: Color(0xffC7411B),
                      ),
                      ),
                  )
              ],
            ),
      
             const Row(
              children: [
      
                Padding(
                  padding: EdgeInsets.only(top:5.0, left: 23, right: 3.02),
                  child: Icon(
                    Icons.star_outline,
                    color: Color(0xffC7411B),
                    size: 36,
                    
                   
                  ),
                ),
      
                 Padding(
                   padding: EdgeInsets.only(top:5.0, left: 3.02, right: 3.02),
                   child: Icon(
                    Icons.star_outline,
                    color: Color(0xffC7411B),
                    size: 36,
                               ),
                 ),
      
                 Padding(
                   padding: EdgeInsets.only(top:5.0, left: 3.02, right: 3.02),
                   child: Icon(
                    Icons.star_outline,
                    color: Color(0xffC7411B),
                    size: 36,
                               ),
                 ),
      
                Padding(
                  padding: EdgeInsets.only(top:5.0, left: 3.02, right: 3.02),
                  child: Icon(
                    Icons.star_outline,
                    color: Color(0xffC7411B),
                    size: 36,
                  ),
                ),
      
               Padding(
                 padding: EdgeInsets.only(top:5.0, left: 3.02),
                 child: Icon(
                    Icons.star_outline,
                    color: Color(0xffC7411B),
                    size: 36,
                  ),
               ),
      
               Padding(
                 padding: EdgeInsets.only(top:13.0, left: 37),
                 child: Text(
                  "R\$ 19,90",
                  style: TextStyle(
                    fontFamily: 'FigTree',
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                    letterSpacing: 0.36,
                    color: Color(0xffC7411B)
               
                  ),
                  ),
               ),

               
      
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 44, left: 16, right: 217),
              child: Container(
                width: 167,
                height: 36,
              
                decoration: BoxDecoration(
                  color: const Color(0xffFF784E),
                  borderRadius: BorderRadius.circular(20),
                ),
            
                child: const Row(
                  children: [
                    Padding(
                  padding: EdgeInsets.only(left: 16.81, right: 11.43),
                  child: Icon(
                    Icons.circle,
                    size: 25,
                    color: Color(0xffF2F2F7),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 9),
                  child: Text(
                    "Comida Vegana",
                    style: TextStyle(
                      fontFamily: 'FigTree',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xffF2F2F7),
                      
                    ),),
                ),
                  ],
                ),

              

                
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 12.0, left: 16, bottom: 40, right:60),
              child: Text(
                
                "O Hambúrguer X é feito com um suculento\npão de brioche torrado, um hambúrguer\nsuculento de carne bovina grelhado no\nponto perfeito, queijo cheddar derretido,\nalface fresca e crocante, tomate maduro\ne fatias de cebola roxa crocante.",
                style: TextStyle(
                  fontFamily: 'FigTree',
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Color(0xffC7411B),
                  
                ),
              ),
            ),

            

            
      
          ],
        ),
      ),
     
    );
  }
}