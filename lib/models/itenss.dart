//classe tarefa

import 'package:flutter/material.dart';

class Items {
  Items(
      {required this.nome,
      required this.codigo,
      required this.preco,
      required this.descricao,
      required this.categorias});
  String nome;
  int codigo;
  double preco;
  String descricao;
  String categorias;
}