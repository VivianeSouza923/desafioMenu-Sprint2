import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75, // Defina a altura desejada aqui
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 26),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Olá, boa noite!",
                    style: TextStyle(
                      fontFamily: 'FigTree',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Color(0xffC7411B),
                    ),
                  ),
                  const Spacer(),
                  Container(
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
                ],
              ),
              const SizedBox(height: 4),
              const Text(
                "Cardápio",
                style: TextStyle(
                  fontFamily: 'FigTree',
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xffC7411B),
                ),
              ),
              const SizedBox(height: 16),

              // CARROSSEL DE TIPOS DE REFEIÇÕES - APENAS UMA LISTVIEW
              Container(
                height: 56,
                width: 575, // Defina a altura desejada para a ListView
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
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 37.5),
                          
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
                    Container(
                      width: 131,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFB987),
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 27),
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
                    Container(
                      width: 131,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFB987),
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child: Text(
                          "Sobremesas",
                          style: TextStyle(
                            fontFamily: 'FigTree',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            
                          ),
                        ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
