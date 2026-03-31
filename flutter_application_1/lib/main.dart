import 'package:flutter/material.dart';

void main(){
  runApp(MeuApp());
}


class MeuApp extends StatelessWidget{
  const MeuApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 65, 124, 220),
          title: Center(
            child: Text("nome do meu app"),
          )
        ),
        body: Center(
          child: PaginaInicial(),
        )
      )
    );
}
}


class PaginaInicial extends StatefulWidget{
  @override
  State<PaginaInicial> createState() => PaginaInicialState();
}

class PaginaInicialState extends State<PaginaInicial> {
  String texto = "olá, mundo!";
  int x = 0;

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(texto),
          ElevatedButton(
            child: Text('mudar texto'),
            onPressed: () {
              setState(() {
                x++;
                if (x == 1){
                  texto = "o texto fo alterado $x vez";
                }
                if (x > 1){
                  texto = "o texto fo alterado $x vezes";
                }
              });
              
            }
            )
        ],
      ),
    );
  }
}