import 'package:flutter/material.dart';

import 'calculadora.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Desativa o banner de debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 73, 189, 181),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Função para exibir uma mensagem no console ao pressionar os botões
  void _handleButtonPress(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container com borda, sombra e bordas arredondadas
            Container(
              width: 350,
              height: 450,
              decoration: BoxDecoration(
                color: const Color.fromARGB(183, 212, 219, 212), // Cor de fundo
                borderRadius: BorderRadius.circular(20), // Bordas arredondadas
                border: Border.all( // Adiciona a borda
                  color: const Color.fromARGB(208, 4, 4, 4), // Cor da borda
                  width: 2, // Espessura da borda
                ),
                boxShadow: [ // Adiciona sombra
                  BoxShadow(
                    color: const Color.fromARGB(255, 145, 137, 145).withOpacity(0.5), // Cor da sombra
                    spreadRadius: 3, // Expansão da sombra
                    blurRadius: 3, // Suavização da sombra
                    offset: const Offset(0, 5), // Deslocamento (X, Y)
                  ),
                ],
              ),
              child: const Center(
                child: Calculadora(),
                  ),
                ),
            const SizedBox(height: 10), // Espaçamento
            //const Text(
              //'Aluna do curso Talento Tech!',
              //style: TextStyle(
              // fontSize: 20,
              //),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _handleButtonPress('Botão incrementar pressionado!'),
        tooltip: 'incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}