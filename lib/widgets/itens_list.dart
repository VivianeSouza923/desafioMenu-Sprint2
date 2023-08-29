/*
import 'package:flutter/material.dart';

class ItemsListItem extends StatelessWidget {
  final TextEditingController nomeController;
  final TextEditingController descricaoController;
  final TextEditingController precoController;
  final TextEditingController codigoController;
  final List<Items> itens;
  const ItemsListItem(
      {super.key,
      this.item,
      required this.nomeController,
      required this.descricaoController,
      required this.precoController,
      required this.codigoController,
      required this.itens});

  final Items? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: 156,
      decoration: BoxDecoration(
        color: const Color(0xffFFEFDC),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
            width: 144,
            height: 140,
            decoration: BoxDecoration(
              color: const Color(0xffFFDCBD),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding:
                  EdgeInsets.only(left: 117.0, top: 8, right: 8, bottom: 113),
              child: Icon(
                Icons.circle,
                size: 19,
                color: Color(0xffE45E3A),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 11, top: 12, bottom: 8),
                      child: Text(
                        item!.codigo,
                        style: const TextStyle(
                          fontFamily: 'FigTree',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC7411B),
                        ),
                        //controller: codigoController,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0, right: 74, bottom: 10),
                  child: Text(
                    item!.nome,
                    style: const TextStyle(
                      fontFamily: 'FigTree',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffC7411B),
                    ),
                    //controller: nomeController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11, right: 8, bottom: 15),
                  child: Text(
                    item!.descricao,
                    style: const TextStyle(
                      fontFamily: 'FigTree',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffC7411B),
                    ),
                    //controller: descricaoController,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 11.0, right: 76, bottom: 15),
                      child: Text(
                        item!.preco,
                        style: const TextStyle(
                          
                          fontFamily: 'FigTree',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffC7411B),
                        ),
                        //controller: precoController,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/