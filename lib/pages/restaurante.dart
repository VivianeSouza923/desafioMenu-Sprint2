import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Restaurant extends StatelessWidget {
  const Restaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RestaurantScreen(),
    );
  }
}

class RestaurantScreen extends StatefulWidget {
   const RestaurantScreen({Key? key}) : super(key: key);

  @override
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
          Flexible(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                InkWell(
                  onTap: _pickImage,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
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
                                  padding: EdgeInsets.symmetric(horizontal: 24.0),
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
                  padding: const EdgeInsets.only(top: 16.0, left: 24, right: 24),
                  child: Container(
                    width: 342,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFEFDC),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 14.0, left: showNomeIcon ? 40.0 : -44.0,),
                      child: TextField(
                      
                        
                      
                        style: const TextStyle(
                          fontFamily: 'FigTree',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xffC7411B),
                      
                          
                      
                          
                        ),
                      
                        
                        
                        controller: nomeController,
                        // dentro do inputDecoration é que a gente coloca o íconezinho que irá aparecer ao lado do nome da comida
                        decoration:  InputDecoration(
                          
                          prefixIcon: Visibility(
                            visible: showNomeIcon,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 11.0,),
                              child: const Icon(
                                Icons.restaurant_menu,
                                size: 14,
                                color: Color(0xffFFB987),
                              ),
                            ),
                          ),
                          hintText: "Nome",
                          
                          hintStyle: const TextStyle(
                            
                            fontFamily: 'FigTree',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFB987),
                          ),
                    
                          
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),

          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 24, right: 24),
            child: Container(
              width: 342,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffFFEFDC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 12),
                child: TextField(

                  style: TextStyle(

                  ),
                  // pegar o texto que o usuário digitou:
                  controller: codigoController,
              
                  // costumização do campo de texto
                  decoration: const InputDecoration(
                    hintText: "Código",
                    hintStyle: TextStyle(
                      fontFamily: 'FigTree',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFB987),
              
                    
              
                    ),
              
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 24, right: 24),
            child: Container(
              width: 342,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffFFEFDC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 12),
                child: TextField(
                  // pegar o texto que o usuário digitou:
                  controller: precoController,
              
                  // costumização do campo de texto
                  decoration: const InputDecoration(
                    hintText: "Preço",
                    hintStyle: TextStyle(
                      fontFamily: 'FigTree',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFB987),
              
                    
              
                    ),
              
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 24, right: 24),
            child: Container(
              width: 342,
              height: 183,
              decoration: BoxDecoration(
                color: const Color(0xffFFEFDC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 12),
                child: TextField(
                  // pegar o texto que o usuário digitou:
                  controller: descricaoController,
              
                  // costumização do campo de texto
                  decoration: const InputDecoration(
                    hintText: "Descrição",
                    hintStyle: TextStyle(
                      fontFamily: 'FigTree',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFB987),
              
                    
              
                    ),
              
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),

              Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 24, right: 24),
            child: Container(
              width: 342,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffFFEFDC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 12),
                child: TextField(
                  // pegar o texto que o usuário digitou:
                  controller: categoriasController,
              
                  // costumização do campo de texto
                  decoration: const InputDecoration(
                    hintText: "Categoria(s)",
                    hintStyle: TextStyle(
                      fontFamily: 'FigTree',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFB987),
              
                    
              
                    ),
              
                    border: InputBorder.none,
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
