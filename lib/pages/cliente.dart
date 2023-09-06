
// ignore_for_file: unused_import

import 'package:desafiomenu_spring2/pages/menu_sprint2_com_cria%C3%A7%C3%A3o_De_itens.dart';
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
       // toolbarHeight: 75,


        leading:  Builder(
          builder: (BuildContext context) {
          return IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          iconSize: 24,
          color: const Color(0xffF2F2F7),
          onPressed: () { 
            
            if (Navigator.canPop(context)) {
              Navigator.pop(context); // Volta à tela anterior
            }
          },
         tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
          },
        ),

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




        /*leading: Padding(
          padding: const EdgeInsets.only(right: 64),
          child: IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            },
            icon: const Icon(
        
              Icons.arrow_back_ios_new_outlined,
            )
            ),
        ),*/
        
      ),

      body:  Stack(
        children: [
          SingleChildScrollView(
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
      
             Row(
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
      
             Row(
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
            
                child:   Row(
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

            SizedBox(height: 70,),

            

            
      
          ],
        ),

        
      ),

       // botão flutuante
      Positioned(
        width: 101,
        height: 101,
        
        
        right: 31,
        bottom: 29,
        

        child: FloatingActionButton(
            backgroundColor: const Color(0xffFF6130),
            elevation: 5,
            onPressed: () {},
            child: const DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(
              Icons.room_service_outlined,
              color: Color(0xffF2F2F7),
              size: 50,
              
              
                          ),
              ),
              
            ),
        ),

     

        ],
      ),
     
    );
  }
}