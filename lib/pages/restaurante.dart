import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:math';

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
          Expanded(
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[];
              },
              body: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    onTap: _pickImage,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 24.0, left: 24, right: 24),
                      child: Container(
                        width: 342,
                        height: 119,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFEFDC),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: _imageFile == null
                            ? const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.0),
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
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 24, right: 24),
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
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 24, right: 24),
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
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 24, right: 24),
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
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 24, right: 24),
                    child: Container(
                      width: 342,
                      height: 183,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFEFDC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0, left: 12),
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
                            child: TextField(
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
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 24, right: 24),
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
            padding: EdgeInsets.only(bottom: 17.0, left: 24, right: 24),
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
                padding:
                    const EdgeInsets.only(left: 24.0, right: 16, bottom: 8),
                child: ClipOval(
                  child: Container(
                    width: 45,
                    height: 45,
                    color: const Color(0xffFFB987),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13.0, bottom: 21, right: 218),
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
                padding:
                    const EdgeInsets.only(left: 24.0, right: 16, bottom: 8),
                child: ClipOval(
                  child: Container(
                    width: 45,
                    height: 45,
                    color: const Color(0xffFFB987),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13.0, bottom: 21, right: 218),
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
        ],
      ),
    );
  }
}
