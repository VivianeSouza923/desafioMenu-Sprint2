import 'dart:ffi';

import 'package:desafiomenu_spring2/pages/menu_sprint2_com_cria%C3%A7%C3%A3o_De_itens.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:math';
import 'package:desafiomenu_spring2/models/itenss.dart';

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

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController codigoController = TextEditingController();
  final TextEditingController precoController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController categoriasController = TextEditingController();

  List<Items> itens = [];

  bool showNomeIcon = false;
  bool showCodigoIcon = false;
  bool showPrecoIcon = false;
  bool showDescricaoIcon = false;
  bool showCategoriasIcon = false;

  late ImagePicker _imagePicker;
  XFile? _imageFile;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();

    nomeController.addListener(() {
      setState(() {
        showNomeIcon = nomeController.text.isNotEmpty;
      });
    });

    codigoController.addListener(() {
      setState(() {
        showCodigoIcon = codigoController.text.isNotEmpty;
      });
    });

    precoController.addListener(() {
      setState(() {
        showPrecoIcon = precoController.text.isNotEmpty;
      });
    });

    descricaoController.addListener(() {
      setState(() {
        showDescricaoIcon = descricaoController.text.isNotEmpty;
      });
    });

    categoriasController.addListener(() {
      setState(() {
        showCategoriasIcon = categoriasController.text.isNotEmpty;
      });
    });
  }

  // asíncrona
  Future<void> _pickImage() async {
    // esperaaa
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imageFile = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: const Color(0xffC7411B),
        title: const Text(
          "Cardápio web",
          style: TextStyle(
            fontFamily: 'FigTree',
            fontSize: 24,
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
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
          ScrollbarTheme(
            data: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all<Color>(
                  Color(0xffFFB987)), // Cor do polegar da barra de rolagem
            ),
            child: Flexible(
              child: Container(
                height: 548,
                child: Scrollbar(
                  isAlwaysShown: true,
                  thickness: 6.0,
                  radius: Radius.circular(8.0),
                  child: Flexible(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        InkWell(
                          onTap: _pickImage,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 24.0, left: 24, right: 24),
                            child: Container(
                              width: 342,
                              height: 119,
                              decoration: BoxDecoration(
                                color: const Color(0xffFFEFDC),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: _imageFile == null
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 24.0),
                                          child: Text(
                                            "Foto",
                                            style: TextStyle(
                                              fontFamily: 'FigTree',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffFFB987),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.upload,
                                          color: Color(0xffFFB987),
                                        ),
                                      ],
                                    )
                                  : Image.file(
                                      File(_imageFile!.path),
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 24, right: 24),
                          child: Container(
                            width: 342,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFEFDC),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Visibility(
                                    visible: showNomeIcon,
                                    child: const Icon(
                                      Icons.restaurant_menu,
                                      size: 14,
                                      color: Color(0xffFFB987),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width:
                                        8), // Espaçamento entre o ícone e o TextField
                                Expanded(
                                  child: TextField(
                                    style: const TextStyle(
                                      fontFamily: 'FigTree',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xffC7411B),
                                    ),
                                    controller: nomeController,
                                    decoration: const InputDecoration(
                                      hintText: "Nome",
                                      hintStyle: TextStyle(
                                        fontFamily: 'FigTree',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFFB987),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left:
                                              -4), // Ajuste o valor conforme necessário
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 24, right: 24),
                          child: Container(
                            width: 342,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFEFDC),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Visibility(
                                    visible: showCodigoIcon,
                                    child: const Icon(
                                      Icons.tag,
                                      size: 14,
                                      color: Color(0xffFFB987),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width:
                                        8), // Espaçamento entre o ícone e o TextField
                                Expanded(
                                  child: TextField(
                                    style: const TextStyle(
                                      fontFamily: 'FigTree',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xffC7411B),
                                    ),
                                    controller: codigoController,
                                    decoration: const InputDecoration(
                                      hintText: "Código",
                                      hintStyle: TextStyle(
                                        fontFamily: 'FigTree',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFFB987),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left:
                                              -4), // Ajuste o valor conforme necessário
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 24, right: 24),
                          child: Container(
                            width: 342,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFEFDC),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Visibility(
                                    visible: showPrecoIcon,
                                    child: const Icon(
                                      Icons.attach_money_sharp,
                                      size: 16,
                                      color: Color(0xffFFB987),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width:
                                        8), // Espaçamento entre o ícone e o TextField
                                Expanded(
                                  child: TextField(
                                    style: const TextStyle(
                                      fontFamily: 'FigTree',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xffC7411B),
                                    ),
                                    controller: precoController,
                                    decoration: const InputDecoration(
                                      hintText: "Preço",
                                      hintStyle: TextStyle(
                                        fontFamily: 'FigTree',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFFB987),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left:
                                              -4), // Ajuste o valor conforme necessário
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 24, right: 24),
                          child: Container(
                            width: 342,
                            height: 183,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFEFDC),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ScrollbarTheme(
                              data: ScrollbarThemeData(
                                thumbColor: MaterialStateProperty.all<Color>(Color(
                                    0xffFFB987)), // Cor do polegar da barra de rolagem
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15.0, left: 12),
                                        child: Visibility(
                                          visible: showDescricaoIcon,
                                          child: const Icon(
                                            Icons.notes,
                                            size: 14,
                                            color: Color(0xffFFB987),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                          width:
                                              8), // Espaçamento entre o ícone e o TextField
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 19.0),
                                          child: TextField(
                                            maxLines:
                                                null, // Define um limite de linhas
                                            keyboardType: TextInputType
                                                .multiline, // não deixa em uma só linha
                                            style: const TextStyle(
                                              fontFamily: 'FigTree',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xffC7411B),
                                            ),
                                            controller: descricaoController,
                                            decoration: const InputDecoration(
                                              hintText: "Descrição",
                                              hintStyle: TextStyle(
                                                fontFamily: 'FigTree',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffFFB987),
                                              ),
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.only(
                                                  left:
                                                      -4), // Ajuste o valor conforme necessário
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 24, right: 24),
                          child: Container(
                            width: 342,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFEFDC),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Visibility(
                                    visible: showCategoriasIcon,
                                    child: Transform.rotate(
                                      angle: -pi / 2,
                                      child: const Icon(
                                        Icons.sell_outlined,
                                        size: 17,
                                        color: Color(0xffFFB987),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width:
                                        8), // Espaçamento entre o ícone e o TextField
                                Expanded(
                                  child: TextField(
                                    style: const TextStyle(
                                      fontFamily: 'FigTree',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xffC7411B),
                                    ),
                                    controller: categoriasController,
                                    decoration: const InputDecoration(
                                      hintText: "Categoria(s)",
                                      hintStyle: TextStyle(
                                        fontFamily: 'FigTree',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFFB987),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left:
                                              -4), // Ajuste o valor conforme necessário
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 24, right: 24, bottom: 16),
                          child: Container(
                            height: 1,
                            width: 342,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: const Color(0xffC7411B),
                              ),
                              color: const Color(0xffC7411B),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              bottom: 17.0, left: 24, right: 24),
                          child: Text(
                            "Restrições alimentares:",
                            style: TextStyle(
                              fontFamily: 'FigTree',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffC7411B),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 24.0, right: 16, bottom: 8),
                              child: ClipOval(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  color: const Color(0xffFFB987),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 13.0, bottom: 21, right: 218),
                              child: Text(
                                "Vegetariano",
                                style: TextStyle(
                                  fontFamily: 'FigTree',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffC7411B),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 24.0, right: 16, bottom: 8),
                              child: ClipOval(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xFFC7411B),
                                      width: 4,
                                    ),
                                    color: const Color(0xffFFB987),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 13.0, bottom: 21, right: 218),
                              child: Text(
                                "Vegano",
                                style: TextStyle(
                                  fontFamily: 'FigTree',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffC7411B),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 24.0, right: 16, bottom: 8),
                              child: ClipOval(
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xFFC7411B),
                                      width: 4,
                                    ),
                                    color: const Color(0xffFFB987),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 13.0, bottom: 21, right: 218),
                              child: Text(
                                "Glúten",
                                style: TextStyle(
                                  fontFamily: 'FigTree',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffC7411B),
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            String text = nomeController.text;
                            int text1 = int.parse(codigoController.text);
                            double text2 = double.parse(precoController.text);
                            String text3 = descricaoController.text;
                            String text4 = categoriasController.text;

                            adicionarItemAoCardapio(
                              text,
                              text2,
                              text3,
                              text1,
                              text4,
                            );
                            //limpar o campo após adicionar o item
                            nomeController.clear();
                            codigoController.clear();
                            precoController.clear();
                            descricaoController.clear();
                            categoriasController.clear();

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(itens: itens),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 32.0, left: 24, right: 24, bottom: 24),
                            child: Container(
                              height: 48,
                              width: 342,
                              decoration: BoxDecoration(
                                color: const Color(0xffFFB987),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 12.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Adicionar",
                                    style: TextStyle(
                                      fontFamily: 'FigTree',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffC7411B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void adicionarItemAoCardapio(String nome, double preco, String descricao,
      int codigo, String categorias) {
    final novoItem = Items(
      nome: nome,
      preco: preco,
      descricao: descricao,
      codigo: codigo,
      categorias: categorias,
    );

    setState(() {
      itens.add(novoItem);
    });
  }
}
