import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder( // FERRAMENTA ÚTIL PARA CRIAÇÃO DE DESIGN RESPONSIVO
        builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          width: constraints.maxWidth, // é para ser 390px, segundo o figma (guarda essa informação.)
          height: 75,
          color: const Color(0xffC7411B),
          child: const Text(
            "Cardápio Web",
            style: TextStyle(
              fontSize: 24,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              

            ),
          ),
        );
      }
      ),
    );
  }
}
