import 'package:desafiomenu_spring2/models/itenss.dart';
import 'package:flutter/material.dart';


class ItemsListItem extends StatelessWidget {
  const ItemsListItem({super.key, this.item});

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
                                margin: const EdgeInsets.only(
                                    left: 8, top: 8, bottom: 8),
                                width: 144,
                                height: 140,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFDCBD),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 117.0, top: 8, right: 8, bottom: 113),
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
                                          padding: EdgeInsets.only(
                                              left: 11, top: 12, bottom: 8),
                                          child: Text(
                                            item!.codigo as String,
                                            style: TextStyle(
                                              fontFamily: 'FigTree',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffC7411B),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 112),
                                          child: Icon(
                                            Icons.access_time_rounded,
                                            size: 20.95,
                                            color: Color(0xffC7411B),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.08),
                                          child: Text(
                                            "15m",
                                            style: TextStyle(
                                              fontFamily: 'FigTree',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xffC7411B),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 11.0, right: 74, bottom: 10),
                                      child: Text(
                                       item!.nome,
                                        style: TextStyle(
                                          fontFamily: 'FigTree',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffC7411B),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 11, right: 8, bottom: 15),
                                      child: Text(
                                        item!.descricao,

                                        style: TextStyle(
                                          fontFamily: 'FigTree',
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffC7411B),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.0, right: 76, bottom: 15),
                                          child: Text(
                                            item!.preco as String,
                                            style: TextStyle(
                                              fontFamily: 'FigTree',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffC7411B),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 11, right: 5),
                                          child: Icon(
                                            Icons.star,
                                            size: 21,
                                            color: Color(0xffC7411B),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 11, right: 11),
                                          child: Text(
                                            "4,5",
                                            style: TextStyle(
                                              fontFamily: 'FigTree',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffC7411B),
                                            ),
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