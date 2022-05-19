import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
  theme: ThemeData(
   // useMaterial3: true,
    primarySwatch: Colors.orange,
  ),
));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final pesoController = TextEditingController();
  final alturaController = TextEditingController();

  _calcularIMC(){

    final  peso = double.parse(pesoController.text);
    final  altura = double.parse(alturaController.text)/100;
    final totalImc = peso/(altura*altura);

    print(peso);
    print(altura);
    print(totalImc);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.person_outline,size: 180,color: Colors.red),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Peso",
              ),
              controller: pesoController,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Altura em cm",
              ),
              controller: alturaController,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _calcularIMC,
                child: Text("Calcular")),
          ],
        ),
      ),
    );
  }
}
