import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int contador = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contador'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de clicks'),
            Text('$contador'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => _botonSuma()),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () =>_botonResta()),
              FloatingActionButton(
              child: const Icon(Icons.refresh),
              onPressed: () =>_botonReset())
        ],
      )
      );

  }

  _botonSuma() {
    setState(() => contador++);
  }

  _botonResta() {
    if (contador > 0){
    setState(() => contador--);
    }
  }

  _botonReset() {
    setState(() => contador = 0);
  }
}