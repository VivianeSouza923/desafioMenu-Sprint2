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
  String codigo;
  String preco;
  String descricao;
  String categorias;
}
