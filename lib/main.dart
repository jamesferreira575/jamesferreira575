//funções matematicass
import 'dart:math';
import 'package:flutter/material.dart';
// void main (){
//   runApp(MaterialApp(
//     home: myApp(),
//   ));}
// class myApp extends StatelessWidget {
//   const myApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(),);}}
//app 1 de frases randômicas
void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: App1(),
  ));}
//statelees = constante
//stateful = variavel
class App1 extends StatefulWidget {
  const App1({Key? key}) : super(key: key);
  @override
  State<App1> createState() => _App1State();
}
class _App1State extends State<App1> {
  var _frases = [
    'O medo é o caminho para o lado negro.',
    'Treine a si mesmo a deixar partir tudo que teme perder.',
    'Faça ou não faça. A tentativa não existe.',
    'Difícil de ver. Sempre em movimento está o Futuro.',
    'Que a Força esteja com professor!'];
  var _frasesGerada = 'Clique para gerar frases';
  void _gerarFrases(){
    // array criado de frases 0,1,2,3,4
    var _numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _frasesGerada= _frases[_numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    //Scaffold = esqueleto do app
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Yoda',
          style: TextStyle(
            color: Colors.black,
          ),),
        //hex color no flutter, troco # por 0xff e a cor
        backgroundColor: Color(0xff21D266),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        //criar uma borda no body, na parte central
        //do display
        decoration: BoxDecoration(border: Border.all(
          width: 3, color: Color(0xff21D266),
        )),
        child: Column(
          //criei uma classe filhos para abrigar duas classe,
          //class image do logo e text para clicar e gerar
          //as frases.
          children: <Widget>[
            Image.asset('images/Yoda.png'),
            Text(_frasesGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
                color: Colors.black
              ),
            ),
            TextButton(onPressed: _gerarFrases, child: Text(
              'Nova Frase',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                backgroundColor: Color(0xff21D266),
                fontWeight: FontWeight.bold,
              ),
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff21D266),
        child: Text('.'),
      ),
    );}}
