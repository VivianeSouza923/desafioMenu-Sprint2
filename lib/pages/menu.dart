import 'package:flutter/material.dart';

import '../models/Items.dart';
import '../widgets/itens_list.dart';

class HomePage extends StatelessWidget {
  final TextEditingController nomeController;
  final TextEditingController descricaoController;
  final TextEditingController precoController;
  final TextEditingController codigoController;
  final List<Items> itens;

  const HomePage(
      {Key? key,
      required this.nomeController,
      required this.descricaoController,
      required this.precoController,
      required this.codigoController,
      required this.itens})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Items> itens = [];

    return Scaffold(
      appBar: AppBar(
        //toolbarHeight: 75, // Defina a altura desejada aqui
        backgroundColor: const Color(0xffC7411B),
        title: const Center(
          child: Text(
            "Cardápio Web",
            style: TextStyle(
              fontFamily: 'FigTree',
              fontSize: 24,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 26),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 23.0),
                      child: Text(
                        "Olá, boa noite!",
                        style: TextStyle(
                          fontFamily: 'FigTree',
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Color(0xffC7411B),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 23.0),
                      child: Container(
                        width: 58,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xffC7411B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Transform.rotate(
                          angle: 3.14159 / 2,
                          child: const Icon(
                            Icons.search,
                            color: Color(0xffFFFBF6),
                            size: 30.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Padding(
                  padding: EdgeInsets.only(left: 23.0),
                  child: Text(
                    "Cardápio",
                    style: TextStyle(
                      fontFamily: 'FigTree',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xffC7411B),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // CARROSSEL DE TIPOS DE REFEIÇÕES - APENAS UMA LISTVIEW
                Container(
                  height: 56,
                  width: 1000, // Defina a altura desejada para a ListView
                  margin: const EdgeInsets.only(left: 23.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 131,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xffC7411B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 37.5),
                          child: Text(
                            "Todos",
                            style: TextStyle(
                              fontFamily: 'FigTree',
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xffFFFBF6),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Container(
                        width: 131,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFB987),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 27),
                          child: Text(
                            "Petiscos",
                            style: TextStyle(
                              fontFamily: 'FigTree',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xffC7411B),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Container(
                        width: 131,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFB987),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 17.0, horizontal: 15),
                          child: Text(
                            "Sobremesas",
                            style: TextStyle(
                              fontFamily: 'FigTree',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xffC7411B),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Container(
                        width: 131,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFB987),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 17.0, horizontal: 36),
                          child: Text(
                            "Massas",
                            style: TextStyle(
                              fontFamily: 'FigTree',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xffC7411B),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Container(
                        width: 131,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFB987),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 17.0, horizontal: 35),
                          child: Text(
                            "Bebidas",
                            style: TextStyle(
                              fontFamily: 'FigTree',
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Color(0xffC7411B),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 23.0),
                  child: Text(
                    "Todos",
                    style: TextStyle(
                      fontFamily: 'FigTree',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffC7411B),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    //scrollDirection: Axis.vertical,

                    children: [
                      for (Items item in itens)
                        ItemsListItem(
                          codigoController: codigoController,
                          descricaoController: descricaoController,
                          itens: [],
                          nomeController: nomeController,
                          precoController: precoController,
                        ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 84,
                ),

                //SizedBox(width: 256,),

                // botão flutuante
                Align(
                  alignment: Alignment.bottomLeft,
                  //padding: const EdgeInsets.only(left: 319.0, bottom: 31),
                  child: Positioned(
                    width: 101,
                    height: 101,
                    child: FloatingActionButton(
                      backgroundColor: const Color(0xffFFB987),
                      onPressed: () {},
                      child: const DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
